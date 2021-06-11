---
title: "Service communications API overview"
description: "The Microsoft Service Communications API provides access to Service Health and Message Center posts for your tenant."
author: "payiAzure"
localization_priority: Priority
ms.prod: "service communications"
ms.custom: scenarios:getting-started
---

# Office 365 Service Communications API overview
The Microsoft Service Communications API provides access to Service Health and Message Center posts for your tenant.

## Why integrate with Office 365 Service Communications?

### Get Service Health and Message Center posts for your tenant
The Microsoft Service Communications API provides Service Health and Message Center posts pertaining to your tenant. For Service Health, this allows you to get the current and historical health of your Microsoft services. If you are experiencing problems with a Microsoft service, you can check service health to determine whether there is a known issue with a resolution in progress before calling support or spending time troubleshooting. For Message Center, this allows you to keep track of upcoming changes, including new and changed features and other important announcements.

### Integrate Service Communications data into custom workflows
* Integrate active Service Health issues directly into custom applications, to triager and share with the impacted audiences.
* Enable custom workflows to review, assign and triage change communication through Message Center.

## Common Service Communications API operations

|Operation|Request|
|:--------|:--|
| List health overviews for tenant | [List healthOverviews](/graph/api/serviceannouncement-list-healthoverviews?view=graph-rest-beta&preserve-view=true) |
| Get specific service health information for tenant | [Get serviceHealth](/graph/api/servicehealth-get?view=graph-rest-beta&preserve-view=true) |
| List all service issues for tenant | [List issues](/graph/api/serviceannouncement-list-issues?view=graph-rest-beta&preserve-view=true) |
| Get a specific service issue for tenant | [Get issue](/graph/api/servicehealthissue-get?view=graph-rest-beta&preserve-view=true) |
| Get a post incident review report for tenant | [Get incident report](/graph/api/servicehealthissue-incidentreport?view=graph-rest-beta&preserve-view=true)|
| List all service messages for tenant | [List messages](/graph/api/serviceannouncement-list-messages?view=graph-rest-beta&preserve-view=true) |
| Get a specific service message for tenant | [Get message](/graph/api/serviceupdatemessage-get?view=graph-rest-beta&preserve-view=true) |
| Update service message status for login user | Update status operations can be found [here](/graph/api/resources/serviceupdatemessage?view=graph-rest-beta&preserve-view=true)|

## Next steps

- Select and try service communications sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/?request=admin%2FserviceAnnouncement%2FhealthOverviews&version=beta).

- Get started with Service Communications in Microsoft Graph by learning more about [Service Communications API](/graph/api/resources/serviceannouncement?view=graph-rest-beta&preserve-view=true).