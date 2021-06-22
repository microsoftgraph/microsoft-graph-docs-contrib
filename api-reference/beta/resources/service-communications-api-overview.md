---
title: "Working with service communications APIs in Microsoft Graph"
description: You can use the service communications API in Microsoft Graph to access the health status and message center posts about Microsoft services."
author: "payiAzure"
localization_priority: Normal
ms.prod: "service-communications"
doc_type: resourcePageType
---

# Working with service communications API in Microsoft Graph
Service communications API provides Service Health and Message Center posts pertaining to your tenant. For Service Health, this allows you to get the current and historical health of your Microsoft services (e.g. Exchange mailbox service is down). If you are experiencing problems with a Microsoft service, you can check service health to determine whether there is a known issue with a resolution in progress before calling support or spending time troubleshooting. For Message Center, this allows you to keep track of upcoming changes, including new and changed features and other important announcements (e.g. Exchange online mailbox is introducing a new feature).

## Access service communications API on behalf of signed in user

Customer facing canvas applications (eg: [Microsoft 365 Admin Center Portal](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/homepage)) call service communications API to get the service health and service announcements data for the signed in user's tenant on behalf of the signed in user. The user will know whether the servies that targeted on their tenant are health or have issues, and what are the current service issues that impact their tenants if any. Delegation permissions are needed to access service communications API on behalf of a signed in user.

## Access service communications API without user

Applications that running as backend services, such as monitoring/alert services, call service communications API with their own identity and not on behalf of a user. In many cases, the backend services could build customized monitoring/alert pipeline with the service health and service announcements data provided by service communications API. Application permissions are needed to access service communications API without signed in user.

## Permissions

The following [permissions](/graph/permissions-reference#service-communications-permissions) are required to access the service communication API. These permissions need to be granted by the administrator.

| Permissions | Scenarios |
|:------------|:----------|
| _ServiceHealth.Read.All_ | List health overviews for tenant. <br> Get specific service health information for tenant. <br> List all service issues for tenant. <br> Get a specific service issue for tenant. <br> Get a post-incident review report for tenant. |
| _ServiceMessage.Read.All_ | List all service messages for tenant. <br> Get a specific service message for tenant. |
| _ServiceMessageViewpoint.Write_ | Update service message status for signed in user. |

## Common use cases

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