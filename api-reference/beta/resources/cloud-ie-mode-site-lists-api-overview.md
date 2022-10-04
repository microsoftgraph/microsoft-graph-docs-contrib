---
title: "Use the Microsoft Graph API to manage Cloud Site Lists"
description: "Use the Microsoft Cloud IE Mode Site Lists API in Microsoft Graph to manage site lists for IE mode in the cloud. Sites and shared cookies are organized into a site list that Microsoft Edge can use to download."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: conceptualPageType
---

# Use the Microsoft Graph API to manage Cloud Site Lists

Microsoft Graph gives your app authorized access to your organization's Cloud Site Lists for Internet Explorer (IE) mode, allowing you to manage the same data available in the Microsoft 365 admin center. After configuring the appropriate permissions, your app can create site lists, add sites and shared cookies, and publish your site lists for Microsoft Edge to download.

## Authorization

To call the Cloud Site Lists APIs in Microsoft Graph, your app will need to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app will also need the appropriate permissions. For more information, see [browserSiteList permissions](/graph/permissions-reference#browsersitelists-resource-permissions).

## Common use cases

The Microsoft Graph API provides methods and actions that support common use cases of Cloud Site Lists for IE mode.

|Use case|Request| See also |
|:--------|:--|:--|
| List all site lists | GET https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists |[List browserSiteLists](../api/internetexplorermode-list-sitelists.md)|
| Create a new site list | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists |[Create browserSiteList](../api/internetexplorermode-post-sitelists.md)|
| Publish a site list | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/publish |[Publish a browserSiteList](../api/browsersitelist-publish.md)|
| Create a site | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites |[Create browserSite](../api/browsersitelist-post-sites.md)|
| Create a shared cookie | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies |[Create browserSharedCookie](../api/browsersitelist-post-sharedcookies.md)|

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps
Cloud Site Lists for IE mode resources and APIs can streamline the way you manage your IE Mode site lists in Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/partners).
