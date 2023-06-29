---
title: "Use the Edge API in Microsoft Graph"
description: "The Edge API in Microsoft Graph lets apps manage administrator tasks for organizations."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: conceptualPageType
---

# Use the Edge API in Microsoft Graph

The Edge API in Microsoft Graph lets apps manage administrator tasks for organizations. With proper authorization, an app can get access to an organization's browser site lists for Internet Explorer (IE) mode that reside in the cloud, allowing administrators to manage the same data available in the [Microsoft 365 admin center](https://admin.microsoft.com/). After configuring the appropriate permissions, your app can create browser site lists, add browser sites and shared cookies, and publish the site lists for Microsoft Edge to download.

## Authorization

To call the Edge API in Microsoft Graph, your app needs to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app also needs the appropriate permissions. For more information, see [Browser management permissions](/graph/permissions-reference#browser-management-permissions).

## Common use cases

The Edge API provides methods and actions that support some administrator's tasks in the Microsoft 365 admin center. The following describes common use cases of the API that manages site lists for IE mode.

| Use cases | REST resources | See also |
|:----------|:---------------|:---------|
| Create, read, update, delete, and publish browser site lists. | [browserSiteList](../resources/browsersitelist.md) | [Methods of browserSiteList](../resources/browsersitelist.md#methods) |
| Modify the browser sites on a browser site list. | [browserSite](../resources/browsersite.md) | [Methods of browserSite](../resources/browsersite.md#methods) |
| Modify the browser shared cookies on a browser site list. | [browserSharedCookie](../resources/browsersharedcookie.md) | [Methods of browserSharedCookie](../resources/browsersharedcookie.md#methods) |

## What's new

Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

The Edge API in Microsoft Graph can streamline the way you manage your site lists for IE mode. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/partners).
