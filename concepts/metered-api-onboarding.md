---
title: "Onboard to Microsoft Graph Azure-metered APIs"
description: "Provides instructions to onboard an app for calling Azure-metered APIs in Microsoft Graph."
author: "JeremyKelley"
ms.localizationpriority: high
ms.custom: scenarios:getting-started
---

# Onboard to Microsoft Graph Azure-metered APIs

Some APIs and services included in Microsoft Graph are metered by Azure-meters and require payment for use. 

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
To enable an application to call Azure-metered APIs or take advantage of Azure-metered services it must be associated with an Azure Subscription. To create this association, an Azure resource of type Microsoft.GraphServices/accounts needs to be created to connect the application registration to a subscription. The Azure resource will map 1:1 with an Azure Active Directory application registration. 

Use the following steps to create and link a Microsoft.GraphServices/accounts Azure Resource to your application:
1. Sign in to https://portal.azure.com
2. Go to Subscriptions or open [Subscriptions - Microsoft Azure](https://portal.azure.com/#view/Microsoft_Azure_Billing/SubscriptionsBlade)
![Azure Subscriptions in the Azure Portal](images/metered-apis/azure-subscription.png)
3. On the **Subscriptions** page, choose the subscription that you will use for your API consumption charges.
![Choose an Azure Subscription for API consumption charges](images/metered-apis/choose-subscription.png)
4. When the subscription opens, on the left pane choose Resource Providers, search for "graph", select **Microsoft.GraphServices**, and choose Register.
![Register the Microsoft.GraphServices resource provider](images/metered-apis/resource-providers.png)
5. Go back to the home page, choose **Cloud Shell**, and then choose **Bash**.
![Choose Cloud Shell](images/metered-apis/cloud-shell.png)
Note: If you're using Cloud Shell for the first time you might need to create a storage account.  Select an Azure subscription, choose **Create** and follow the instructions to create a storage account.
![May need to create a storage account to access Cloud Shell](images/metered-apis/no-storage.png)
6. Copy the command below, paste into Cloud Shell and replace the highlighted text with your own value, type <**Enter**>. The result will be a JSON representation of your Microsoft.GraphServices/accounts resource.

```Cloud Shell
az resource create --resource-group myRG --name myGraphAppBilling --resource-type Microsoft.GraphServices/accounts --properties  "{\"appId\": \"<GUID>\"}" --latest-include-preview --location Global –subscription <GUID>
```

![Successfully associated application to Azure Subscription](images/metered-apis/cloud-shell-success.png)

## Consuming metered APIs in your app
After you have enabled your app to consume Microsoft Graph Azure-metered APIs and services, the app can start to successfully make API calls for metered APIs. Charges generated from those requests will be charged to the Azure Subscription associated with the app.

Cost and usage of Azure-metered APIs and services can be monitoring through [Azure Cost Management + Billing](https://learn.microsoft.com/azure/cost-management-billing/). This provides access to costs within the subscription, which can be split based on application, calling tenant, or meter.

## Receiving a bill for Microsoft Graph Azure-metered API and service usage
After the subscription billing cycle runs, typically on the 5th day of the month, a subscription owner or users with role-based permissions can download an invoice. For details, see [View and download your Azure invoice | Microsoft Docs](https://docs.microsoft.com/azure/cost-management-billing/understand/download-azure-invoice).
The invoice will include the following elements: Service Family, Service Name, Meter Category, Subcategory, consumed qty, included qty, price, and extended amount. For more details, see [Understand your Azure invoice | Microsoft Docs](https://docs.microsoft.com/azure/cost-management-billing/understand/understand-invoice).
