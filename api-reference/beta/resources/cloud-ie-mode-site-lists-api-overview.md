---
title: "Use the Cloud IE Mode Site Lists REST API"
description: "Use the Microsoft Cloud IE Mode Site Lists API in Microsoft Graph to manage site lists for IE mode in the cloud. Sites and shared cookies are organized into a site list that Microsoft Edge can use to download."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
---

# Use the Cloud IE Mode Site Lists REST API

Microsoft Graph gives your app authorized access to your organization's Cloud IE Mode Site Lists so you can manage the same data that's available in the Microsoft 365 Admin Center. After configuring the appropriate permissions, your app can create site lists, add sites and shared cookies, and publish your site lists for Microsoft Edge to download.

## Authorization


To call the education APIs in Microsoft Graph, your app will need to acquire an access token. For details about access tokens, see [Get access tokens to call Microsoft Graph](/graph/auth/). Your app will also need the appropriate permissions. For more information, see [browserSiteList permissions](/graph/permissions-reference#browsersitelists-resource-permissions).


## Common use cases

The Microsoft Graph API provides methods and actions that support common use cases of Cloud IE Mode Site Lists.

|Operation|Request|
|:--------|:--|
| List all site lists | GET https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists |
| Create a new site list | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists |
| Publish a site list | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/publish |
| Create a site | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites |
| Create a shared cookie | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedcookies |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps
Cloud IE Mode Site List resources and APIs can streamline the way you manage your IE Mode Site Lists in Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/partners).
