---
title: "Receive change notifications through Azure Event Hubs"
description: "Change notifications can be delivered via different channels, including webhooks and Azure Event Hubs."
author: FaithOmbongi
ms.author: ombongifaith
ms.subservice: change-notifications
ms.topic: tutorial
ms.localizationpriority: high
ms.custom: graphiamtop20, devx-track-azurecli
ms.date: 03/25/2024
#customer intent: As a developer, I want to receive notifications of changes to specific Microsoft Graph resources through Azure Event Hubs so I can build apps that process the changes according to the business requirements.
---

# Receive change notifications through Azure Event Hubs

Webhooks aren't suited for receiving change notifications in high throughput scenarios or when the receiver can't expose a publicly available notification URL. As an alternative, you can use [Azure Event Hubs](/azure/event-hubs/event-hubs-about).

Examples of high throughput scenarios where you can use Azure Event Hubs include applications subscribing to a large set of resources, applications subscribing to resources that change frequently, and multitenant applications that subscribe to resources across a large set of organizations.

The article guides you through the process of managing your Microsoft Graph subscription and how to receive change notifications through Azure Event Hubs.

## Using Azure Event Hubs to receive change notification

[Azure Event Hubs](https://azure.microsoft.com/services/event-hubs) is a popular real-time events ingestion and distribution service built for scale. Using Azure Event Hubs to receive change notifications differs from webhooks in a few ways, including:

- You don't rely on publicly exposed notification URLs. The Event Hubs SDK relays the notifications to your application.
- You don't need to reply to the [notification URL validation](change-notifications-delivery-webhooks.md#notificationurl-validation). You can ignore the validation message that you receive.
- You need to provision an event hub.
- You need to provision an Azure Key Vault or add the Microsoft Graph Change Tracking service to the Data Sender role on your Event Hub.

## Set up the Azure Event Hubs authentication

<!-- Start of "Use Azure CLI" tab-->
# [Use Azure CLI](#tab/change-notifications-eventhubs-azure-cli)

The [Azure CLI](/cli/azure/what-is-azure-cli) allows you to script and automate administrative tasks in Azure. The CLI can be [installed on your local computer](/cli/azure/install-azure-cli) or run directly from the [Azure Cloud Shell](/azure/cloud-shell/quickstart).

```azurecli
# --------------
# TODO: update the following values
#sets the name of the resource group
resourcegroup=rg-graphevents-dev
#sets the location of the resources
location='uk south'
#sets the name of the Azure Event Hubs namespace
evhamespacename=evh-graphevents-dev
#sets the name of the hub under the namespace
evhhubname=graphevents
#sets the name of the access policy to the hub
evhpolicyname=grapheventspolicy
#sets the name of the Azure KeyVault
keyvaultname=kv-graphevents
#sets the name of the secret in Azure KeyVault that will contain the connection string to the hub
keyvaultsecretname=grapheventsconnectionstring
# --------------
az group create --location $location --name $resourcegroup
az eventhubs namespace create --name $evhamespacename --resource-group $resourcegroup --sku Basic --location $location
az eventhubs eventhub create --name $evhhubname --namespace-name $evhamespacename --resource-group $resourcegroup --partition-count 2 --message-retention 1
az eventhubs eventhub authorization-rule create --name $evhpolicyname --eventhub-name $evhhubname --namespace-name $evhamespacename --resource-group $resourcegroup --rights Send
evhprimaryconnectionstring=`az eventhubs eventhub authorization-rule keys list --name $evhpolicyname --eventhub-name $evhhubname --namespace-name $evhamespacename --resource-group $resourcegroup --query "primaryConnectionString" --output tsv`
az keyvault create --name $keyvaultname --resource-group $resourcegroup --location $location --enable-soft-delete true --sku standard --retention-days 90
az keyvault secret set --name $keyvaultsecretname --value $evhprimaryconnectionstring --vault-name $keyvaultname --output none
graphspn=`az ad sp list --display-name 'Microsoft Graph Change Tracking' --query "[].appId" --output tsv`
az keyvault set-policy --name $keyvaultname --resource-group $resourcegroup --secret-permissions get --spn $graphspn --output none
keyvaulturi=`az keyvault show --name $keyvaultname --resource-group $resourcegroup --query "properties.vaultUri" --output tsv`
domainname=`az ad signed-in-user show --query 'userPrincipalName' | cut -d '@' -f 2 | sed 's/\"//'`
notificationUrl="EventHub:${keyvaulturi}secrets/${keyvaultsecretname}?tenantId=${domainname}"
echo "Notification Url:\n${notificationUrl}"
```

> **Note:** The script provided here is compatible with Linux-based shells, Windows WSL, and Azure Cloud Shell. It requires some updates to run in Windows shells.

<!-- End of "Use Azure CLI" tab-->

<!-- Start of "Use the Azure portal" tab-->
# [Use the Azure portal](#tab/change-notifications-eventhubs-azure-portal)

##### Configure the event hub

In this section, you:

- Create an Event Hubs namespace.
- Add a hub to that namespace to relay and deliver notifications.
- Add a shared access policy that allows you to get a connection string to the newly created hub.

Steps:

1. Sign in to the [Azure portal](https://portal.azure.com) with privileges to create resources in your Azure subscription.
1. Select **Create a resource** > type **Event Hubs** in the search bar > select the **Event Hubs** suggestion. 
1. On the Event Hubs creation page, select **Create**.
1. Fill in the Event Hubs namespace creation details, and then select **Create**.
1. When the event hub namespace is provisioned, go to the page for the namespace.
1. Select **Event Hubs** and **+ Event Hub**.
1. Give a name to the new event hub, and select **Create**.
1. After the event hub is created, select the name of the event hub, and then select **Shared access policies** and **+ Add** to add a new policy.
1. Give a name to the policy, check **Send**, and select **Create**.
1. After the policy is created, select the name of the policy to open the details panel, and then copy the **Connection string-primary key** value. Record the value; you need it for the next step.

##### Configure the Azure Key Vault

In order to access the event hub securely and to allow for key rotations, Microsoft Graph gets the connection string to the event hub through Azure Key Vault.

In this section, you:

- Create an Azure Key Vault for storing the secret.
- Add the connection string to the event hub as a secret.
- Add an access policy for Microsoft Graph to access the secret.

Steps:

1. Sign in to the [Azure portal](https://portal.azure.com) with privileges to create resources in your Azure subscription.
1. Select **Create a resource** > type **Key Vault** in the search bar > select the **Key Vault** suggestion.
1. On the Key Vault creation page, select **Create**.
1. Fill in the Key Vault creation details, and then select **Review + Create** and **Create**.
1. Go to the newly created key vault using the **Go to resource** from the notification.
1. Copy the **DNS name**; you need it later in this article.
1. Go to **Secrets** and select **+ Generate/Import**.
1. Give a name to the secret, and keep the name for later; you need it later in this article. For the value, paste in the connection string you generated at the Event Hubs step. Select **Create**.
1. Select **Access Policies** and **+ Add Access Policy**.
1. For **Secret permissions**, select **Get**, and for **Select Principal**, select **Microsoft Graph Change Tracking**. Select **Add**.

<!-- End of "Use the Azure portal" tab-->

<!-- Start of "Use the Azure portal (RBAC)" tab-->
# [Use the Azure portal (RBAC)](#tab/change-notifications-eventhubs-azure-portal-rbac)

##### Configure the event hub

In this section you:

- Create an Event Hubs namespace.
- Add a hub to that namespace to relay and deliver notifications.
- Add a shared access policy that allows you to get a connection string to the newly created hub.

Steps:

1. Sign in to the [Azure portal](https://portal.azure.com) with privileges to create resources in your Azure subscription.
1. Select **Create a resource** > type **Event Hubs** in the search bar > select the **Event Hubs** suggestion. 
1. On the Event Hubs creation page, select **Create**.
1. Fill in the Event Hubs namespace creation details, and then select **Create**.
1. When the event hub namespace is provisioned, go to the page for the namespace.
1. Select **Event Hubs** and **+ Event Hub**.
1. Give a name to the new event hub, and select **Create**.
1. After the event hub is created, select the name of the event hub, and then select **Access Control (IAM)** from the sidebar.
1. Select **Role Assignments**.
1. Select **+ Add** and select **Add Role Assignment**.
1. Under **Role** > **Job function roles** > select **Azure Event Hubs Data Sender** > select **Next**.
1. Under the **Members** tab, select **Assign access to User, group, or service principal**.
1. Select **+ Select members** > search for and select **Microsoft Graph Change Tracking**.
1. Select **Review + assign** to complete the process.
 
<!-- End of "Use the Azure portal rbac" tab-->
---

## Create the subscription and receive notifications

After you create the required Azure KeyVault and Azure Event Hubs services, you can now create your change notification subscription and start receiving change notifications via Azure Event Hubs.

#### Create the subscription

Creating a subscription to receive change notifications with Event Hubs is nearly identical to webhook subscription creation, but with important changes in the **notificationUrl** property. First review [webhook subscription creation steps](/graph/api/subscription-post-subscriptions) before continuing.

At subscription creation, the **notificationUrl** must point to your Event Hubs location.

<!-- Start of "Using Key Vault" tab-->
# [Using Key Vault](#tab/change-notifications-eventhubs-keyvault)

If you're using Key Vault, the **notificationUrl** property looks like this: `EventHub:https://<azurekeyvaultname>.vault.azure.net/secrets/<secretname>?tenantId=<domainname>`, with the following values:

- `azurekeyvaultname` - The name you gave to the key vault when you created it. Can be found in the DNS name.
- `secretname` - The name you gave to the secret when you created it. Can be found on the Azure Key Vault **Secrets** page.
- `domainname` - The name of your tenant; for example, contoso.com. Because this domain is used to access the Azure Key Vault, it's important that it matches the domain used by the Azure subscription that holds the Azure Key Vault. To get this information, you can go to the overview page of the Azure Key Vault you created and click the subscription. The domain name is displayed under the **Directory** field.

<!-- End of "Using Key Vault tab-->

<!-- Start of "Using RBAC" tab-->
# [Using role-based access control](#tab/change-notifications-eventhubs-rbac)

If you're using role-based access control, the **notificationUrl** property looks like this:

`EventHub:https://&lt;eventhubnamespace&gt;.servicebus.windows.net/eventhubname/&lt;eventhubname&gt;?tenantId=&lt;domainname&gt;`

- `eventhubnamespace` is the name you give to the Event Hub namespace. Can be found in the Event Hubs Overview page under Host name.
- `eventhubname` is the name you give to the Event Hub. Can be found in the Event Hubs -> Overview -> Event Hubs.
- `domainname` is the name of your tenant; for example, contoso.com. Because this domain is used to access the Azure EventHub, it's important that it matches the domain used by the Azure subscription that holds the Azure Event Hub. To get this information, select the Microsoft Entra ID menu on the Azure portal and check the Overview page. The domain name is displayed under the **Primary domain**.

> [!NOTE]
> Duplicate subscriptions aren't allowed. When a subscription request contains the same values for **changeType** and **resource** that an existing subscription contains, the request fails with an HTTP error code `409 Conflict`, and the error message `Subscription Id <> already exists for the requested combination`.

<!-- End of "Using RBAC tab-->
---

#### Receive notifications

Change notifications are now delivered to your application by Event Hubs. For details, see [receiving events](/azure/event-hubs/event-hubs-dotnet-standard-getstarted-send?tabs=passwordless%2Croles-azure-portal#receive-events-from-the-event-hub) in the Event Hubs documentation.

Before you can receive the notifications in your application, you need to create another shared access policy with a "Listen" permission and obtain the connection string, similar to the steps listed in [Configure the event hub](#configure-the-event-hub).

> [!TIP]
> 
> Create a separate policy for the application that listens to Event Hubs messages instead of reusing the same connection string you set in Azure KeyVault. This separation follows the principle of least privilege by ensuring that each component of the solution has only the permissions it needs.

##### Handling validation notifications

Your application receives validation notifications whenever it creates a new subscription. You should ignore these notifications. The following example represents the body of a validation message.

```json
 {
    "value":[
        {
            "subscriptionId":"NA",
            "subscriptionExpirationDateTime":"NA",
            "clientState":"NA",
            "changeType":"Validation: Testing client application reachability for subscription Request-Id: 522a8e7e-096a-494c-aaf1-ac0dcfca45b7",
            "resource":"NA",
            "resourceData":{
                "@odata.type":"NA",
                "@odata.id":"NA",
                "id":"NA"
            }
        }
    ]
}
```

## Subscriptions for rich notifications with large payloads
The maximum message size for Event Hubs is 1 MB. When you use [rich notifications](/graph/webhooks-with-resource-data?tabs=csharp), you might expect notifications that exceed this limit. To receive notifications larger than 1 MB through Event Hubs, you must also add a blob storage account to your subscription request.

### Set up storage and create a subscription

1.  [Create a storage account](/azure/storage/common/storage-account-create).
2.  [Create a container in the storage account](/azure/storage/blobs/blob-containers-portal) and assign it a name.
3.  [Retrieve the storage account access keys or connection string](/azure/storage/common/storage-account-keys-manage#view-account-access-keys).
4.  Add the connection string to the key vault and give it a name. This value is the secret name.
5.  Create or recreate your subscription, now including the **blobStoreUrl** property in the following syntax: `blobStoreUrl: "https://<azurekeyvaultname>.vault.azure.net/secrets/<secretname>?tenantId=<domainname>"`

### Receive rich notifications

When Event Hubs receives a notification payload that is larger than 1 MB, the notification doesn't contain the **resource**, **resourceData**, and **encryptedContent** properties that are included in rich notifications. The notification instead contains an **additionalPayloadStorageId** property with an ID that points to the blob in your storage account where these properties are stored.

## What if the Microsoft Graph Change Tracking application is missing?

The **Microsoft Graph Change Tracking** service principal might be missing from your tenant, depending on when the tenant was created and administrative operations. The service principal's globally unique **appId** is `0bf30f3b-4a52-48df-9a82-234910c4a086` and you can run the following query to confirm whether it exists in the tenant.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "change-notifications-eventhubs-get-changetrackingapp-sp"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals(appId='0bf30f3b-4a52-48df-9a82-234910c4a086')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/change-notifications-eventhubs-get-changetrackingapp-sp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/change-notifications-eventhubs-get-changetrackingapp-sp-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/change-notifications-eventhubs-get-changetrackingapp-sp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/change-notifications-eventhubs-get-changetrackingapp-sp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/change-notifications-eventhubs-get-changetrackingapp-sp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/change-notifications-eventhubs-get-changetrackingapp-sp-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/change-notifications-eventhubs-get-changetrackingapp-sp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

If the service principal doesn't exist, create it as follows. You must grant the calling app the *Application.ReadWrite.All* permission to run this operation.

**Method 1**

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "change-notifications-eventhubs-create-changetrackingapp-sp"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals
Content-type: application/json

{
    "appId": "0bf30f3b-4a52-48df-9a82-234910c4a086"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/change-notifications-eventhubs-create-changetrackingapp-sp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/change-notifications-eventhubs-create-changetrackingapp-sp-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/change-notifications-eventhubs-create-changetrackingapp-sp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/change-notifications-eventhubs-create-changetrackingapp-sp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/change-notifications-eventhubs-create-changetrackingapp-sp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/change-notifications-eventhubs-create-changetrackingapp-sp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/change-notifications-eventhubs-create-changetrackingapp-sp-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/change-notifications-eventhubs-create-changetrackingapp-sp-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

**Method 2**

<!-- {
  "blockType": "request",
  "name": "change-notifications-eventhubs-upsert-changetrackingapp-sp"
}-->
```http
POST https://graph.microsoft.com/v1.0/servicePrincipals(appId='0bf30f3b-4a52-48df-9a82-234910c4a086')
Content-type: application/json
Prefer: create-if-missing

{
    "displayName": "Microsoft Graph Change Tracking"
}
```


## Related content

- [Change notifications overview](/graph/change-notifications-overview)
- See the following Azure Event Hubs quick starts:
    - [.NET Core](/azure/event-hubs/get-started-dotnet-standard-send-v2)
    - [Java](/azure/event-hubs/event-hubs-java-get-started-send)
    - [Python](/azure/event-hubs/get-started-python-send-v2)
    - [JavaScript](/azure/event-hubs/get-started-node-send-v2)
