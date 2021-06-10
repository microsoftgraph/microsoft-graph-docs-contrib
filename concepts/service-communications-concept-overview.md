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
* Integrate active Service Health issues directly into custom applications where they can be triaged or shared with the impacted audiences
* Enable custom workflows to review, assign and triage change communication through Message Center

## Common Service Communications API operations

|Operation|Request|
|:--------|:--|
| List all services health information for tenant | GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/healthOverviews |
| Get specific service health information for tenant | GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/healthOverviews/{serviceName} |
| List all service issues for tenant | GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/issues |
| Get a specific service issue for tenant | GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/issues/{issueId} |
| Get a post incident report for tenant | GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/issues/{issueId}/incidentReport |
| List all service messages for tenant | GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages |
| Get a specific service message for tenant | GET https://graph.microsoft.com/beta/admin/serviceAnnouncement/messages/{messageId} |
| Update service message status for login user | POST https://graph.microsoft.com/beta/admin/serviceAnnouncement/message/markRead <br> More usage on status update operations can be found [here](/graph/api/resources/serviceupdatemessage?view=graph-rest-beta&preserve-view=true)|


## API reference
Looking for the API reference for this service?

- [Service Communications API in Microsoft Graph beta](/graph/api/resources/serviceannouncement?view=graph-rest-beta&preserve-view=true)


## Next steps

- Select and try service communications sample queries in [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/?request=admin%2FserviceAnnouncement%2FhealthOverviews&version=beta).

- Get started with Service Communications in Microsoft Graph by learning more about [Service Communications API](/graph/api/resources/serviceannouncement?view=graph-rest-beta&preserve-view=true).