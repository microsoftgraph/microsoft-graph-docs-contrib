---
title: "Azure AD Graph to Microsoft Graph migration FAQ"
description: "Checklist for migrating your apps from Azure AD Graph to Microsoft Graph"
author: "FaithOmbongi"
localization_priority: Normal
ms.prod: "applications"
---

# Azure AD Graph to Microsoft Graph migration FAQ

## How is Microsoft Graph different from Azure AD Graph?

Azure AD Graph API offers access to only Azure AD services. Microsoft Graph API offers a single unified endpoint to access Azure AD services and other Microsoft services like Teams, Exchange, and Intune.

## Why should I migrate my apps from Azure AD Graph to Microsoft Graph API?

Microsoft Graph API offers a single unified endpoint to access many Microsoft services, is more secure and resilient than Azure AD Graph. For this reason, Azure AD Graph has been on deprecation path since June 30, 2020, and will be retired on June 30, 2022. After June 30, 2022 your applications will no longer receive responses from the Azure AD Graph endpoint. Migrate to Microsoft Graph to avoid loss of functionality.

## How do I identify apps in my tenant that are using Azure AD Graph?

### Method 1: Though network proxy logs

Check your network server traffic logs through a filter proxy for any apps calling the `https://graph.windows.net/` endpoint. These apps use Azure AD Graph.

### Method 2: Use the App registrations menu of the Azure portal

1. Sign in to the [Azure portal](portal.azure.com) as an administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the App registrations window, select the **All Applications** tab then select the **Add filters** option. Choose the **Requested API** option from the list of available filters and select **Apply**. A filter pops up.

:::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/RequestedAPI.png" alt-text="Filter apps by their requested API." border="true":::

1. Select **Microsoft APIs**. Select the **Please select an API** drop down and choose **Azure Active Directory Graph**. Select **Apply**. This lists all apps with a dependency on Azure AD Graph.

:::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/RequestedAPI-AAD.png" alt-text="Filter apps that use Azure AD Graph." border="true":::

### Method 3: Use a PowerShell script

Download and run [this PowerShell script](https://github.com/microsoft/AzureADGraphApps).

## Microsoft has sent me an email with a list of App IDs for apps using Azure AD Graph. How do I find the details of the app including its owner?

1. Sign in to the [Azure portal](portal.azure.com) as an administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the App registrations window, select the **All Applications** tab then select **Add filters** option. Choose the **Application (client) ID** option from the list of available filters and select **Apply**.  A filter pops up.
1. Enter an App ID in the text box and select **Apply**. The list of apps has narrowed down to the specified app.

:::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AppClientIDFilter.png" alt-text="Filter by apps by Client ID." border="true":::

1. Select the app. This reveals the app's menu. Use the menu bar to find the app's details, including its Owners.

## Microsoft has sent me an email with a list of App IDs for apps using Azure AD Graph. Are these all the affected apps?

This is a list that captures only apps used within the last 28 days and that called the Azure AD Graph endpoint. Because some apps may have seasonal use, their App ID might be captured in one month's list but not in another. To retrieve the full list of affected apps, we recommend you follow one of the three methods listed above.

## I'm a subscription Owner and Microsoft has sent me an email about Azure AD Graph deprecation with list of App IDs. What should I do?

Contact your IT admin for help or see [How do I identify apps in my tenant that are using Azure AD Graph?](#how-do-i-identify-apps-in-my-tenant-that-are-using-azure-ad-graph) to get started. 

## I know apps that are using Azure AD Graph. How do I migrate them to Microsoft Graph?

To migrate your apps from Azure AD Graph to Microsoft Graph, follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md).

## I don't own some apps but they use Azure AD Graph. How do I migrate them to Microsoft Graph API? Can I find the owner of such apps?

If your company isn't the developer of the application, you don't need to do anything.

## I use Azure CLI or Azure AD PowerShell to create new apps that call Azure AD Graph. What will happen to my apps after June 30, 2022?  

After the Microsoft Graph retirement date, Azure AD Graph will stop responding to all apps in spite of how they were created. We recommend that you begin planning the migration early and use Microsoft Graph instead.

After August 31, 2021, you'll no longer use the Azure portal to create new apps that use Azure AD Graph. After November 30, 2021, use of Azure AD PowerShell or Azure CLI to create new apps that use Azure AD Graph will be disabled.

## Can I request for an exception if I'm unable to meet the June 30, 2022 migration deadline?  

No, you can't. Microsoft won't exempt any app from the Azure AD deprecation.

## I need to create new apps to use Azure AD Graph but the Azure AD Graph API permission sign-up is closed. How can I create my app?

First, we recommend that you follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) to help you transition your apps to the Microsoft Graph API. 

If you've identified a gap where Microsoft Graph doesn't support a feature supported by Azure AD Graph, contact Microsoft CSS to report the gap. When we verify that this is indeed a gap that Microsoft Graph API doesn't currently fulfill, we'll help you create the app. However, this doesn't mean an exception to the deprecation. The app using Azure AD Graph will still stop functioning after June 30, 2022.


## See also

+ [Checklist to migrate apps](migrate-azure-ad-graph-request-differences.md)