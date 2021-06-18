---
title: "Overview for accessing service health and communications through Microsoft Graph"
description: "Use the service communications API in Microsoft Graph to access the health status and message center posts about  Microsoft cloud services."
author: "payiAzure"
localization_priority: Priority
ms.prod: "service-health-and-communications"
ms.custom: scenarios:getting-started
---

# Overview for accessing service health and communications in Microsoft Graph
You can use the service communications API in Microsoft Graph to access the health status and message center posts about  Microsoft cloud services. The actual health status and posts correspond to the Microsoft 365 and Dynamics 365 services that are supported by the API and subscribed by the tenant. Currently, the API supports data for Office client apps in Microsoft 365, Dynamics 365 for CRM, and Microsoft Intune.

## Why integrate with service health and communications data?

### Get service health and message center posts for a tenant
Administrators can get current or historical health data of supported Microsoft services. When experiencing problems with a Microsoft service, they can check its health status to verify if an issue has been identified with a resolution in progress, before calling for support or spending time troubleshooting. 

Administrators can regularly review message center posts to keep track of upcoming new features and updates, and other important announcements. They can then anticipate how these changes may affect users and plan accordingly.

### Integrate service communications data into custom workflows
App developers can integrate active service health issues directly into custom applications, allowing administrators to triage and share status information with impacted audiences.

Apps can enable custom workflows for administrators to review, assign, and triage change communications from the message center.

## Common service communications API use cases

|Use cases|API requests|
|:--------|:--|
| List health overviews for tenant | [List healthOverviews](/graph/api/serviceannouncement-list-healthoverviews?view=graph-rest-beta&preserve-view=true) |
| Get specific service health information for tenant | [Get serviceHealth](/graph/api/servicehealth-get?view=graph-rest-beta&preserve-view=true) |
| List all service issues for tenant | [List issues](/graph/api/serviceannouncement-list-issues?view=graph-rest-beta&preserve-view=true) |
| Get a specific service issue for tenant | [Get issue](/graph/api/servicehealthissue-get?view=graph-rest-beta&preserve-view=true) |
| Get a post-incident review report for tenant | [Get incident report](/graph/api/servicehealthissue-incidentreport?view=graph-rest-beta&preserve-view=true)|
| List all service messages for tenant | [List messages](/graph/api/serviceannouncement-list-messages?view=graph-rest-beta&preserve-view=true) |
| Get a specific service message for tenant | [Get message](/graph/api/serviceupdatemessage-get?view=graph-rest-beta&preserve-view=true) |
| Update service message status for signed in user | For a list of status operations, see [serviceUpdateMessage](/graph/api/resources/serviceupdatemessage?view=graph-rest-beta&preserve-view=true)|

## Next steps

- Try service communications sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/?request=admin%2FserviceAnnouncement%2FhealthOverviews&version=beta).

- Learn more about the [service communications API](/graph/api/resources/serviceannouncement?view=graph-rest-beta&preserve-view=true).