---
title: "Working with service communications APIs in Microsoft Graph"
description: You can use the service communications API in Microsoft Graph to access the health status and message center posts about Microsoft services."
author: "payiAzure"
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: "service-communications"
ms.date: 03/19/2024
---

# Working with service communications API in Microsoft Graph
The service communications API provides service health and message center posts pertaining to the Microsoft cloud services subscribed by your tenant. You can get current and historical health data of a Microsoft service (for example, the Exchange Online service is down). You can check the service health to determine if an issue is tracked and a resolution is in progress before calling support or spending time troubleshooting. Message center posts let you keep track of upcoming changes, including new features, updates, and other important announcements (for example, Exchange Online is getting a new feature).

## Authorization
Microsoft Graph lets applications get authorized access to health and change communications about a Microsoft cloud service subscribed by a tenant.
With the appropriate delegated or application [permissions](/graph/permissions-reference#service-communications-permissions), your app can access the communications data on behalf of a signed-in user, or without any signed-in user in the tenant. Both delegated and application types of these permissions are granted by only an administrator.

For more information on access tokens, app registration, and delegated and application permissions, see [Authentication and authorization basics](/graph/auth/auth-concepts).

### Access service communications API on behalf of signed-in user

Delegated permissions are needed to access the service communications API on behalf of a signed-in user. Customer-facing canvas applications, such as the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/homepage) (accessible only to admin roles), can call the service communications API to get the service health and service announcements data for the signed-in user's tenant, _on behalf of the signed-in user_. Users can find out whether their subscribed services are healthy or have issues. They can also learn about any current service issues affecting their tenants.

#### Role-based access control for delegation access

The service communications API applies role-based access control (RBAC) to identify whether the signed-in user who is on-behalf of has a required Microsoft Entra role. The signed-in user who is on-behalf of must have at least one of the admin roles.

For more information about the Microsoft Entra administrator roles, see:
* [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles)
* [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json)
* [Roles in Microsoft 365, including Microsoft Entra ID, service-specific and cross-service roles](/azure/active-directory/roles/concept-understand-roles#how-azure-ad-roles-are-different-from-other-microsoft-365-roles)

### Access service communications API without user

Application permissions are needed to access the service communications API without a signed-in user. Applications that run as backend services, such as monitoring or alert services, can call the service communications API with their own identity and not on behalf of a user. These backend services can build custom monitoring/alert pipelines and call the service communications API to get service health and service announcements data.


## Common use cases and required permissions

|Use cases|API requests| Required permissions| Supported permission types|
|:--------|:--------|:--------|:--------|
| List health overviews for tenant | [List healthOverviews](/graph/api/serviceannouncement-list-healthoverviews?view=graph-rest-beta&preserve-view=true) | _ServiceHealth.Read.All_ | Delegated and application |
| Get specific service health information for tenant | [Get serviceHealth](/graph/api/servicehealth-get?view=graph-rest-beta&preserve-view=true) | _ServiceHealth.Read.All_ | Delegated and application |
| List all service issues for tenant | [List issues](/graph/api/serviceannouncement-list-issues?view=graph-rest-beta&preserve-view=true) | _ServiceHealth.Read.All_ | Delegated and application |
| Get a specific service issue for tenant | [Get issue](/graph/api/servicehealthissue-get?view=graph-rest-beta&preserve-view=true) | _ServiceHealth.Read.All_ | Delegated and application |
| Get a post-incident review report for tenant | [Get incident report](/graph/api/servicehealthissue-incidentreport?view=graph-rest-beta&preserve-view=true)| _ServiceHealth.Read.All_ | Delegated and application |
| List all service messages for tenant | [List messages](/graph/api/serviceannouncement-list-messages?view=graph-rest-beta&preserve-view=true) | _ServiceMessage.Read.All_ | Delegated and application |
| Get a specific service message for tenant | [Get message](/graph/api/serviceupdatemessage-get?view=graph-rest-beta&preserve-view=true) | _ServiceMessage.Read.All_ | Delegated and application |
| Update service message status for signed in user | For a list of status operations, see [serviceUpdateMessage](/graph/api/resources/serviceupdatemessage?view=graph-rest-beta&preserve-view=true).| _ServiceMessageViewpoint.Write_ | Delegated |

## Availability in national clouds
That service communications API is available in all Microsoft national cloud deployments. You can get service health and communications data for any tenants in Microsoft national clouds. For details, see [national cloud deployments](/graph/deployments).

|National clouds|API URL (partial)|
|:--------------|:-----------------|
|Microsoft Graph global service| https://graph.microsoft.com/beta/admin/serviceAnnouncement/|
|Microsoft Graph for US Government L4 (GccHigh)|https://graph.microsoft.us/beta/admin/serviceAnnouncement/|
|Microsoft Graph for US Government L5 (DoD)|https://dod-graph.microsoft.us/beta/admin/serviceAnnouncement/|
|Microsoft Graph China operated by 21Vianet|https://microsoftgraph.chinacloudapi.cn/beta/admin/serviceAnnouncement/|

## Service communications limits

To guarantee the service performance, the service communications API has throttling limits for the requests per tenant per application. For details about the limits, see  [throttling limits for the service communications service](/graph/throttling#service-communications-service-limits).


## Next steps

The service communications API can open up new ways for you to engage with users:

- [Overview for accessing service health and communications in Microsoft Graph](/graph/service-communications-concept-overview)
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
