---
title: "Cloud IE Mode Site Lists API overview"
description: "Use the Microsoft Cloud IE Mode Site Lists API in Microsoft Graph to manage site lists for IE mode in the cloud. Sites and shared cookies are organized into a site list that Microsoft Edge can use to download."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
---

# Cloud IE Mode Site Lists API overview

The Cloud IE Mode Site Lists API in Microsoft Graph provides an easy way for Admins to manage their site lists for IE mode in the cloud, which can simplify the process of transitioning your workflows and applications from IE11 to IE mode. Admins can manage the same site lists that are currently configured through the Microsoft 365 Admin Center directly using Microsoft Graph.

**Cloud Site List Management in the Microsoft 365 Admin Center**

![Screenshot of a Microsoft 365 Admin Center](./images/edge-site-lists.png "Image of Cloud Site List Management in the Microsoft 365 Admin Center")

## Why integrate with Cloud IE Mode Site Lists?

### Use a Single Browser for Legacy and Modern Sites
Internet Explorer Mode makes it easier for your organization to use a single browser for both legacy and modern websites and applications. Through the use of Cloud IE Mode Site Lists, organizations can manage a list of websites that should automatically load in IE Mode, which aids in the transition from using Internet Explorer 11 to Internet Explorer Mode.

### Manage and Store IE Mode Sites in the Cloud 
Cloud IE Mode Site Lists allows Admins to manage and store a list of websites that require Internet Explorer mode to a compliant cloud location. Admins can publish one or more site lists to an authenticated endpoint that Microsoft Edge clients within their tenant can download. Subsequent publishes of these site lists reflect automatically on Microsoft Edge clients with no additional steps.  

### Automate Site List Management
The Cloud IE Mode Site Lists API in Microsoft Graph retains the same core functionality that is offered today in the Microsoft 365 Admin Center. Admins can automate common tasks such [creating site lists](/api-reference/beta/api/internetexplorermode-post-sitelists.md), [adding sites](/api-reference/beta/api/browsersitelist-post-sites.md), [adding shared cookies](/api-reference/beta/api/browsersitelist-post-sharedcookies.md), and [publishing site lists](/api-reference/beta/api/browsersitelist-publish.md).

## Common To Do API operations

|Operation|Request|
|:--------|:--|
| List all site lists | GET https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists |
| Create a new site list | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists |
| Publish a site list | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/publish |
| Create a site | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites |
| Create a shared cookie | POST https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedcookies |

## API reference

Looking for the API reference for this service?

- [Cloud Site List Management in Microsoft Graph beta](/api-reference/beta/resources/internetexplorermode.md)
