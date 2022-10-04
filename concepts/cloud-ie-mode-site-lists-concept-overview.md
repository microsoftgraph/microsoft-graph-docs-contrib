---
title: "Cloud Site Lists for Internet Explorer mode API overview"
description: "The Microsoft Graph API for Cloud Site Lists provides admins with an easy way to manage site lists for Internet Explorer (IE) mode in the cloud, simplifying the process of transitioning workflows and applications from IE11 to IE mode."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
---

# Cloud Site Lists for Internet Explorer mode API overview

The Microsoft Graph API for Cloud Site Lists provides admins with an easy way to manage site lists for Internet Explorer (IE) mode in the cloud, simplifying the process of transitioning workflows and applications from IE11 to IE mode. Admins can use Microsoft Graph to manage the same site lists that are currently configured through the Microsoft 365 admin center.

![Screenshot of the of Microsoft Edge site lists page in the Microsoft 365 admin center.](./images/edge-site-lists.png)

## Why integrate with the Cloud Site Lists for IE mode?

### Use a single browser for legacy and modern sites

IE mode makes it easier for your organization to use a single browser for both legacy and modern websites and applications. Organizations can use the Cloud Site Lists for IE mode to manage a list of websites that should automatically load in IE mode, supporting the transition from IE11 to IE mode.

### Manage and store IE mode sites in the cloud

Cloud Site Lists for IE mode allows admins to manage and store a list of websites that require Internet Explorer mode to a compliant cloud location. Admins can publish one or more site lists to an authenticated endpoint that Microsoft Edge clients within their tenant can download. Subsequent publishes of these site lists reflect automatically on Microsoft Edge clients with no additional steps.

### Automate the management of site lists

The Microsoft Graph APIs for managing Cloud Site Lists retain the same core functionality that is currently offered in the Microsoft 365 admin center. Admins can automate common tasks such [creating site lists](/api-reference/beta/api/internetexplorermode-post-sitelists.md), [adding sites](/api-reference/beta/api/browsersitelist-post-sites.md), [adding shared cookies](/api-reference/beta/api/browsersitelist-post-sharedcookies.md), and [publishing site lists](/api-reference/beta/api/browsersitelist-publish.md).

## API reference

Looking for the API reference for this service?

- [Cloud Site List Management in Microsoft Graph beta](/api-reference/beta/resources/internetexplorermode.md)

## Next steps

Find out more about [using the Cloud Site Lists for IE mode API](/graph/api/resources/cloud-ie-mode-site-lists-api-overview) and its [use cases](/graph/api/resources/cloud-ie-mode-site-lists-api-overview#common-use-cases) in Microsoft Graph beta.
