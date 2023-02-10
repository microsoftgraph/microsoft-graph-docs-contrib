---
title: "Onboard to metered Microsoft 365 APIs and services"
description: "Provides instructions to onboard an application for calling metered Microsoft 365 APIs and services."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Onboard to metered Microsoft 365 APIs and services

Some APIs and services included in Microsoft Graph are metered and require payment for use. 

Examples of APIs that are currently metered include:
- Teams [chat](/graph/api/chats-getallmessages.md) / [channel](/graph/api/channel-getallmessages.md) export
- Teams chat / channel [change notifications](/graph/api/subscription-post-subscriptions.md)
- Teams conversationMember [change notifications](/graph/api/subscription-post-subscriptions.md)
- Teams chat / channel message [PATCH operations](/graph/api/chatmessage-update.md)
- SharePoint [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel.md)

See [List of metered Microsoft 365 APIs](metered-api-list.md) for the full list of Microsoft 365 APIs that may require payment.

To consume metered Microsoft 365 APIs and services, the Azure Active Directory application registration consuming the APIs must be associated to an Azure Subscription which will be billed for any metered charges. In addition to enabling usage of metered APIs, the association allows you to use [Azure Cost Management + Billing](/azure/cost-management-billing/) to understand and manage the costs of this application. These instructions will outline the process of completing this association.

## Current limitations
- Metered Microsoft 365 APIs and services are not currently available in national cloud deployments including Microsoft 365 GCC deployments accessed through the worldwide Microsoft Graph endpoint. See [National cloud deployments](deployments.md) for more information on national clouds.
- The target application must be a confidential client application (for example, web application, web API, or daemon / service). Public client applications are not supported (desktop applications, mobile applications).

## Prerequisites for accessing metered APIs
Before accessing metered Microsoft 365 APIs and services, you must complete the following prerequisite steps:
- Create an application registration in Azure Active Directory for the application that will be making calls to the metered Microsoft 365 APIs and services.
- If you don't have an Azure subscription, [create one](https://azure.microsoft.com/pricing/purchase-options/) now in the same tenant as the application registration.
- You must have contributor permissions to the active Azure Subscription you wish to use as well as application owner permissions for the target application registration.
- If the APIs you plan to use are Protected APIs, submit the [request form for Teams](teams-protected-apis.md) or [request form for SharePoint](https://aka.ms/PreviewSPOPremiumAPI) depending on which APIs you are calling.

## Enabling an application
To enable an application to use metered Microsoft 365 APIs or services it must be associated with an Azure Subscription. To create this association, an Azure resource of type **Microsoft.GraphServices/accounts** needs to be created to connect the application registration to a subscription. The Azure resource connects a single Azure Active Directory application registration with the Azure Subscription where the application's usage of metered APIs is billed. 

Use the following steps to create and link a Microsoft.GraphServices/accounts Azure Resource to your application:
Note: The following steps can be completed either by signing in to https://portal.azure.com and choosing **Cloud Shell** or using your local Azure command-line interface. When using [Cloud Shell](/azure/cloud-shell/overview) for the first time you might need to create a storage account.  Select an Azure subscription, choose **Create** and follow the instructions to create a storage account.

1. If you have multiple Azure subscriptions see [Use multiple Azure subscriptions](/powershell/azure/manage-subscriptions-azureps) for information on setting the active subscription, otherwise continue to the next step.

2. Use **az provider register** to register the **Microsoft.GraphServices** resource provider on your active subscription so an Azure resource can be created. Copy the command below, paste into your command-line interface and type  <**Enter**>.
```PowerShell
az provider register --namespace Microsoft.GraphServices
```
3. Use **az resource create** to create a new instance of the **Microosft.GraphServices/accounts** resource type to associate your application registration with the active subscription. Copy the command below, paste into your command-line interface and replace the parameters listed in the table below with your own values, and type <**Enter**>. If the command succeeds, the response will include a JSON representation of the newly created resource.

| Parameter | Description |
|:--------------------------|:----------------------------------------|
| myRG | The name of an existing Azure resource group to add the newly created resource to |
| myGraphAppBilling | The name you wish to give to this resource instance |
| myAppGUID | The Application (client) ID of the application being enabled, provided as a string parameter for example 00000000-0000-0000-0000-000000000000 |
| mySubscriptionGUID | The ID of the Azure Subscription that will receive billing events, provided as a string parameter for example 00000000-0000-0000-0000-000000000000 | 

```PowerShell
az resource create --resource-group myRG --name myGraphAppBilling --resource-type Microsoft.GraphServices/accounts --properties  "{`"appId\`": `"myAppGUID`"}" --latest-include-preview --location Global –subscription mySubscriptionGUID
```

A successful JSON result will look something like this:

```
{
  "extendedLocation": null,
  "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myRG/providers/Microsoft.GraphServices/accounts/myGraphAppBilling",
  "identity": null,
  "kind": null,
  "location": "Global",
  "managedBy": null,
  "name": "myGraphAppBilling",
  "plan": null,
  "properties": {
    "appId": "00000000-0000-0000-0000-000000000000",
    "billingPlanId": "00000000-0000-0000-0000-000000000000",
    "provisioningState": "Succeeded"
  },
  "resourceGroup": "myRG",
  "sku": null,
  "systemData": {
    "createdAt": "2023-01-31T00:12:20.7893671Z",
    "createdByType": "User",
    "lastModifiedAt": "2023-01-31T00:12:20.7893671Z",
    "lastModifiedByType": "User"
  },
  "tags": null,
  "type": "microsoft.graphservices/accounts"
}
```

## Consuming metered APIs in your application
Once you have associated your application registration and subscription, your application can start using metered Microsoft 365 APIs and services. Charges generated from those requests will be charged to the Azure Subscription associated with the application.
Note: Your application may need to request a new OAuth access token before requests to metered APIs will be allowed.

Cost and usage of metered Microsoft 365 APIs and services can be monitored through [Azure Cost Management + Billing](/azure/cost-management-billing/). This provides access to costs within the subscription, which can be split based on application, calling tenant, or meter.

## Receiving a bill for metered Microsoft 365 API and service usage
After the subscription billing cycle runs, typically on the 5th day of the month, a subscription owner or users with role-based permissions can download an invoice. For details, see [View and download your Azure invoice | Microsoft Docs](/azure/cost-management-billing/understand/download-azure-invoice).
The invoice will include details that allow you to understand the amount of usage your application generates and for multi-tenant applications where that usage is happening. For more details, see [Understand your Azure invoice | Microsoft Docs](/azure/cost-management-billing/understand/understand-invoice).
