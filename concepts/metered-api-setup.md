---
title: "Enable metered Microsoft 365 APIs and services"
description: "Find information about how to onboard an application to call metered Microsoft 365 APIs and services."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Enable metered Microsoft 365 APIs and services

Some Microsoft 365 APIs and services in Microsoft Graph are metered and require payment for use. For a current list of APIs that require payment, see [Metered Microsoft 365 APIs and services](metered-api-list.md).

To consume metered Microsoft 365 APIs and services, the application registration for the Azure Active Directory application that consumes the APIs must be associated with an Azure subscription. This subscription will be billed for any metered charges. This association also allows you to use [Azure Cost Management + Billing](/azure/cost-management-billing/) to understand and manage the costs of the application. 

This article describes how to associate your application with an Azure subscription.

## Known limitations

The following limitations apply to metered APIs:

- Metered Microsoft 365 APIs and services are not currently available in national cloud deployments, including Microsoft 365 GCC deployments accessed through the worldwide Microsoft Graph endpoint. For details about national clouds, see [National cloud deployments](deployments.md).
- The target application must be a confidential client application (for example, web application, web API, or daemon/service). Public client applications (desktop and mobile applications) are not supported.

## Prerequisites

Before you can access metered Microsoft 365 APIs and services, you must complete the following steps:

- Create an application registration in Azure Active Directory (Azure AD) for the application that will be making calls to the metered Microsoft 365 APIs and services.
- If you don't have an Azure subscription, [create one](https://azure.microsoft.com/pricing/purchase-options/) now in the tenant that includes the application registration.
- You must have contributor permissions to the active Azure subscription you want to use, as well as application owner permissions for the target application registration.
- If you plan to use protected APIs, submit a request form, as applicable:
  - [Teams protected API request form](https://aka.ms/teamsgraph/requestaccess)
  - [SharePoint protected API request form](https://aka.ms/PreviewSPOPremiumAPI)

## Enable an application
To enable an application to use metered Microsoft 365 APIs or services, it must be associated with an Azure subscription. To create this association, you must create an Azure resource of type **Microsoft.GraphServices/accounts**. The Azure resource connects a single Azure AD application registration with the Azure subscription where the application's usage of metered APIs is billed. 

Use the following steps to create and link a **Microsoft.GraphServices/accounts** Azure resource to your application:

>**Note:** You can complete the following steps by signing in to https://portal.azure.com and choosing **Cloud Shell**, or by using your local Azure command-line interface. If you're using [Cloud Shell](/azure/cloud-shell/overview) for the first time, you might need to create a storage account. Select an Azure subscription, choose **Create**, and follow the instructions to create a storage account.

1. If you have multiple Azure subscriptions, for information about setting the active subscription, se see [Use multiple Azure subscriptions](/powershell/azure/manage-subscriptions-azureps); otherwise, go to the next step.

2. Use **az provider register** to register the **Microsoft.GraphServices** resource provider on your active subscription to create an Azure resource. Copy the following command into your command-line interface, and type  <**Enter**>.

  ```PowerShell
  az provider register --namespace Microsoft.GraphServices
  ```

3. Use **az resource create** to create a new instance of the **Microosft.GraphServices/accounts** resource type to associate your application registration with the active subscription. Copy the following command into your command-line interface, replace the parameters listed in the table with your own values, and type <**Enter**>. If the command succeeds, the response will include a JSON representation of the newly created resource.

  ```PowerShell
  az resource create --resource-group myRG --name myGraphAppBilling --resource-type Microsoft.GraphServices/accounts --properties  "{`"appId\`": `"myAppGUID`"}" --latest-include-preview --location Global –-subscription mySubscriptionGUID
  ```

  | Parameter | Description |
  |:--------------------------|:----------------------------------------|
  | myRG | The name of an existing Azure resource group to add the newly created resource to. |
  | myGraphAppBilling | The name you want to give to this resource instance. |
  | myAppGUID | The Application (client) ID of the application being enabled, provided as a string parameter; for example, 00000000-0000-0000-0000-000000000000. |
  | mySubscriptionGUID | The ID of the Azure subscription that will receive billing events, provided as a string parameter; for example, 00000000-0000-0000-0000-000000000000. | 

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

## Consume metered APIs in your application
After you associate your application registration and subscription, your application can start using metered Microsoft 365 APIs and services. Costs generated from those requests will be charged to the Azure subscription associated with the application.

>**Note:** Your application might need to request a new OAuth access token before requests to metered APIs will be allowed.

You can monitor cost and usage of metered Microsoft 365 APIs and services through [Azure Cost Management + Billing](/azure/cost-management-billing/). This provides access to costs within the subscription, which can be split based on application, calling tenant, or meter.

## Bills for metered Microsoft 365 API and service usage

After the subscription billing cycle runs, typically on the 5th day of the month, a subscription owner or users with role-based permissions can download an invoice. For details, see [View and download your Azure invoice](/azure/cost-management-billing/understand/download-azure-invoice).

The invoice will include details that allow you to understand the amount of usage your application generates, and for multi-tenant applications, where that usage is happening. For details, see [Understand your Azure invoice](/azure/cost-management-billing/understand/understand-invoice).
