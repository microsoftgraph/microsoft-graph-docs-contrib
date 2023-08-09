---
title: "Azure AD Graph to Microsoft Graph migration FAQ"
description: "Provides answers to frequently asked questions about migrating from Azure Active Directory (Azure AD) Graph to Microsoft Graph."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: medium
ms.prod: "applications"
ms.date: 06/22/2023
---

# Azure AD Graph to Microsoft Graph migration FAQ

This article provides answers to frequently asked questions about migrating from Azure Active Directory (Azure AD) Graph to [Microsoft Graph](/graph/overview).

## How is Microsoft Graph different from Azure AD Graph and why should I migrate my apps?

The Azure AD Graph API offers access to only Azure AD services. The Microsoft Graph API offers a single unified endpoint to access Azure AD services and other Microsoft services such as Microsoft Teams, Microsoft Exchange, and Microsoft Intune.

[Microsoft Graph](/graph/overview) is also more secure and resilient than Azure AD Graph. For this reason, Azure AD Graph has been on a deprecation path since June 30, 2020, and will enter the retirement phase after June 30, 2023 as we move all investments to Microsoft Graph. Migrate to Microsoft Graph to avoid loss of functionality.

## As a developer, how do I identify apps that use Azure AD Graph?

Follow these steps to identify apps with a dependency on Azure AD Graph:

### Step 1: Scan the application source code

If you own an application's source code, search for the `https://graph.windows.net/` URI in the code. This is the Azure AD Graph endpoint and apps that call this endpoint use Azure AD Graph. Record the value of the affected app's app ID.

### Step 2: Check the app's API permissions on the Azure portal

1. Sign in to the [Azure portal](https://portal.azure.com) as a global administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, enable the **App registrations search preview**. Select the **All Applications** tab then select the **Add filters** option. Choose the **Application (client) ID** option from the list of available filters and select **Apply**.  A filter pops up.
1. In the text box, enter the app ID you retrieved in Step 1 and select **Apply**. The list has narrowed down to the specified app.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AppClientIDFilter.png" alt-text="Filter by apps by app ID." border="true":::

1. Select the app. This reveals the app's menu.
1. From the left pane of the window, select **API permissions**. This reveals configured API permissions for your app, including Azure AD Graph permissions.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/configuredPermissions.png" alt-text="An app's API permissions list from the Azure portal." border="true":::


## As an IT admin, how do I identify apps in my tenant that use Azure AD Graph?

Use one of the following three methods to identify apps in your tenant with a dependency on Azure AD Graph.

### Method 1: Through network proxy logs

Check your network server traffic logs through a filter proxy for any apps calling the `https://graph.windows.net/` endpoint. These apps use Azure AD Graph.

### Method 2: Use the App registrations menu of the Azure portal

1. Sign in to the [Azure portal](https://portal.azure.com) as a global administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, enable the **App registrations search preview**. Select the **All Applications** tab then select the **Add filters** option. Choose the **Requested API** option from the list of available filters and select **Apply**. The **Requested API** filter pops up.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/RequestedAPI.png" alt-text="Filter apps by their requested API." border="true":::

5. Select **Microsoft APIs**. Select the **Please select an API** drop down and choose **Azure Active Directory Graph**. Select **Apply**. This lists all apps with a dependency on Azure AD Graph.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/RequestedAPI-AAD.png" alt-text="Filter apps that use Azure AD Graph." border="true":::

### Method 3: Use a PowerShell script

Download and run [this PowerShell script](https://github.com/microsoft/AzureADGraphApps). Use this method to retrieve apps with their home directory in your tenant and apps with their home directories in other tenants.


## Microsoft sent me an email with a list of App IDs for apps using Azure AD Graph. How do I find the details of each app, including its owner?

1. Sign in to the [Azure portal](https://portal.azure.com) as a global administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, enable the **App registrations search preview**. Select the **All Applications** tab then select the **Add filters** option. Choose the **Application (client) ID** option from the list of available filters and select **Apply**.  A filter pops up.
1. Enter an app ID in the text box and select **Apply**. The list has narrowed down to the specified app.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AppClientIDFilter.png" alt-text="Filter by apps by app ID." border="true":::

6. Select the app. This reveals the app's menu. From the left pane of the window, menu options such as **Owners** allow you to retrieve the app's details.

## Microsoft sent me an email with a list of App IDs for apps using Azure AD Graph. Are these all the affected apps?

This list captures only apps used within the last 28 days and that called the Azure AD Graph endpoint. Because some apps may have seasonal use, their app ID might be captured in one month's list but not in another. To retrieve the full list of affected apps, we recommend you follow one of the [three methods](#as-an-it-admin-how-do-i-identify-apps-in-my-tenant-that-use-azure-ad-graph) listed previously.

## I'm a subscription Owner and Microsoft sent me an email about Azure AD Graph deprecation with a list of App IDs. What should I do?

The email you receive includes the tenant IDs linked to the app IDs. Follow these steps to retrieve the technical contact details for the specific tenants.
1. Sign in to the [Azure portal](https://portal.azure.com) as an administrator.
1. If you're a subscription owner in multiple Azure AD tenants, first switch to the relevant tenant or directory.
    1. On the top right of the window, select your profile icon and choose **Switch directory**. This reveals the **Portal settings | Directories + subscriptions** window. 
    1. From the list, use the **Switch** tab to switch to the directory whose Directory ID matches the tenant ID you received in the email. The active directory is marked **Current**.
    1. Close the window.
1. In the relevant directory, search for and select **Azure Active Directory**. This reveals a menu for your active tenant. 
1. From the left pane of the window, under **Manage**, select **Properties**.
1. In the **Tenant properties** window, first verify the value of Tenant ID matches a tenant ID you received in the email. Retrieve the **Technical contact** details to contact the tenant so they can be aware of the deprecation.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/tenantTechnicalContact.png" alt-text="Find technical contact of a tenant." border="true":::

## I know apps that are using Azure AD Graph. How do I migrate them to Microsoft Graph?

To migrate your apps from Azure AD Graph to Microsoft Graph, follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md).

## I don't own some apps in my tenant but they use Azure AD Graph. How do I migrate them to Microsoft Graph API? Can I find the owner of such apps?

First, confirm the full list of apps owned by your tenant or third-party applications integrated in your tenant.

1. Sign in to the [Azure portal](https://portal.azure.com) as an administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the App registrations window, select the **All Applications** tab.
1. Select the app. This reveals the app's menu.
1. From the left pane of the window, menu options reveal the app's details including its Owners.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AppOwners.png" alt-text="Find app owners." border="true":::


## My organization runs Azure Stack Hub. What actions should I take?

If your organization runs Azure Stack Hub, the most important action is to follow the [Azure Stack Hub servicing policy](/azure-stack/operator/azure-stack-servicing-policy).

To migrate, customers will be notified through the Azure Stack Hub admin portal to update their home and guest tenant directories. The migration to Microsoft Graph will be managed by the integrated system update experience.

## I need to add new Azure AD Graph permissions to my app, but I can't select Azure AD Graph as a required permission for my app registration. How can I add the Azure AD Graph permissions?

First, we recommend that you follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) to help you transition your apps to the Microsoft Graph API.

If you've identified a gap where Microsoft Graph doesn't support a feature available in Azure AD Graph, let us know through Microsoft Q&A by using the tag [azure-ad-graph-deprecation](/answers/topics/azure-ad-graph-deprecation.html).

If you still need to configure Azure AD Graph permissions for your applications, use one of the following workarounds.

+ Use the Azure portal to find the APIs your organization uses
+ Update the application manifest on the Azure portal
+ Use the [application](/graph/api/resources/application) API in Microsoft Graph to update the [requiredResourceAccess](/graph/api/resources/requiredresourceaccess) object
+ Use the [Update-MgApplication](/powershell/module/microsoft.graph.applications/update-mgapplication?view=graph-powershell-1.0&preserve-view=true) cmdlet in Microsoft Graph PowerShell SDK

For examples using the listed workarounds, see [Use Microsoft Graph to configure required Azure AD Graph permissions for an app registration](migrate-azure-ad-graph-configure-permissions.md)

>**Note:** Adding Azure AD Graph permissions using these workarounds won't be supported after retirement of the Azure AD Graph. Any app using Azure AD Graph will stop functioning after the retirement.



## See also

+ [Checklist to migrate apps](migrate-azure-ad-graph-request-differences.md)
