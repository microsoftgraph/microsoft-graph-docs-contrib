---
title: "Onboard to Microsoft Graph Azure-metered APIs"
description: "Provides instructions to onboard an app for calling Microsoft Azure-metered APIs and services."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Onboard to Microsoft Graph Azure-metered APIs

Some APIs and services included in Microsoft Graph are metered and require payment for use. 

Examples of APIs that are currently metered include:
- Teams [chat](/graph/api/chats-getallmessages.md) / [channel](/graph/api/channel-getallmessages.md) export
- Teams chat / channel [change notifications](/graph/api/subscription-post-subscriptions.md)
- Teams conversationMember [change notifications](/graph/api/subscription-post-subscriptions.md)
- Teams chat / channel message [PATCH operations](/graph/api/chatmessage-update.md)
- SharePoint [assignSensitivityLabel](/graph/api/driveitem-assignsensitivitylabel.md)

See [List of Microsoft Graph Azure-metered APIs](metered-api-list.md) for the full list of APIs that may require payment.

To consume Azure-metered APIs and services, the Azure Active Directory registration for the application consuming the APIs must be associated to an Azure Subscription which will be billed for any consumption related charges. Creating the assocation will enable the following Azure Cost Management and Billing experiences: Cost Analysis, Budgets and Alerts, and Export CSV. These instructions will outline the process of completing this association.

## Current limitations
- Microsoft Graph Azure-metered APIs and services are not currently available in national cloud deployments. See [National cloud deployments](deployments.md) for more information on national clouds.
- The target application must be a confidential client application (for example, web app, web API, or daemon / service). Public client applications are not supported (desktop apps, mobile apps).

## Prerequisites for accessing metered APIs
Before accessing Microsoft Graph Azure-metered APIs and services, you must complete the following prerequisite steps:
- Create an application registration in Azure Active Directory for the application that will be making calls to the Microsoft Graph Azure-metered APIs and services.
- If you don't have an Azure subscription, [create one](https://azure.microsoft.com/pricing/purchase-options/) now in the same tenant as the application registration.
- Make sure that you have permissions for managing both the application registration and the Azure Subscription you wish to use.
- If the APIs you plan to use are Protected APIs, submit the [request form for Teams](teams-protected-apis.md) or [request form for SharePoint](https://aka.ms/PreviewSPOPremiumAPI) depending on which APIs you are calling.

## Enabling an application
To enable an application to call Azure-metered APIs or take advantage of Azure-metered services it must be associated with an Azure Subscription. To create this association, an Azure resource of type **Microsoft.GraphServices/accounts** needs to be created to connect the application registration to a subscription. The Azure resource will map 1:1 with an Azure Active Directory application registration. 

Use the following steps to create and link a Microsoft.GraphServices/accounts Azure Resource to your application:
1. Sign in to https://portal.azure.com

2. Choose **Cloud Shell**, and if given a choice, choose **PowerShell**.
Note: If you're using Cloud Shell for the first time you might need to create a storage account.  Select an Azure subscription, choose **Create** and follow the instructions to create a storage account.

3. If you have multiple Azure subscriptions see [Use multiple Azure subscriptions](https://learn.microsoft.com/powershell/azure/manage-subscriptions-azureps) for information on setting the active subscription, otherwise continue to the next step.

4. To register the **Microsoft.GraphServices** resource provider to your active subscription so an Azure resource can be created, copy the command below, paste into Cloud Shell and type  <**Enter**>.
```PowerShell
Register-AzResourceProvider -ProviderNamespace Microsoft.GraphServices
```

5. Copy the command below, paste into Cloud Shell and replace the highlighted text with your own value, type <**Enter**>. The result will be a JSON representation of your Microsoft.GraphServices/accounts resource.

Before executing the command, replace the following parameters with your own values:

| Parameter | Description |
|:--------------------------|:----------------------------------------|
| myRG | The name you wish to give to the Azure resource group |
| myGraphAppBilling | The name you wish to give to this resource instance |
| myAppGUID | The Application (client) ID of the application being enabled |
| mySubscriptionGUID | The ID of the Azure Subscription that will receive billing events | 

```PowerShell
az resource create --resource-group myRG --name myGraphAppBilling --resource-type Microsoft.GraphServices/accounts --properties  "{`"appId\`": `"myAppGUID`"}" --latest-include-preview --location Global –subscription mySubscriptionGUID
```

A successful result will look something like this:

```
{
  "extendedLocation": null,
  "id": "/subscriptions/c771ae10-b7c4-4030-a87e-cca9e154c340/resourceGroups/myRG/providers/Microsoft.GraphServices/accounts/myGraphAppBilling",
  "identity": null,
  "kind": null,
  "location": "Global",
  "managedBy": null,
  "name": "myGraphAppBilling",
  "plan": null,
  "properties": {
    "appId": "51aafae2-c3a6-4b94-8443-7ea2a66aa873",
    "billingPlanId": "104e68e7-a17c-4474-a4e0-f633b8c3a19b",
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

## Consuming metered APIs in your app
After you have enabled your app to consume Microsoft Graph Azure-metered APIs and services, the app can start making API calls for metered APIs. Charges generated from those requests will be charged to the Azure Subscription associated with the app.

Cost and usage of Azure-metered APIs and services can be monitoring through [Azure Cost Management + Billing](https://learn.microsoft.com/azure/cost-management-billing/). This provides access to costs within the subscription, which can be split based on application, calling tenant, or meter.

## Receiving a bill for Microsoft Graph Azure-metered API and service usage
After the subscription billing cycle runs, typically on the 5th day of the month, a subscription owner or users with role-based permissions can download an invoice. For details, see [View and download your Azure invoice | Microsoft Docs](https://docs.microsoft.com/azure/cost-management-billing/understand/download-azure-invoice).
The invoice will include details that allow you to understand the amount of usage your application generates and for multi-tenant applications where that usage is happening. For more details, see [Understand your Azure invoice | Microsoft Docs](https://docs.microsoft.com/azure/cost-management-billing/understand/understand-invoice).
