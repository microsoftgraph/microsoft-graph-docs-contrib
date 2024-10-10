---
title: "Working with Microsoft 365 Monitoring APIs in Microsoft Graph"
description: "You can use the Microsoft 365 Monitoring APIs in Microsoft Graph to monitor the health of various Microsoft services for your organization"
author: "mkuninty"
ms.localizationpriority: medium
doc_type: conceptualPageType
ms.subservice: "m365-monitoring-service"
---

# Working with Microsoft 365 Monitoring APIs in Microsoft Graph
The Microsoft 365 Monitoring API provides the telemetry data to monitor the health of various Microsoft services for your organization's Microsoft 365 subscription. This capability began with Exchange Online and has been expanded to other Microsoft services such as Microsoft Teams and Microsoft 365 Apps, with more services being added in the future. Microsoft 365 Monitoring increases observability and minimizes downtime through providing near real-time user telemetry data.

## Authorization
Microsoft Graph enables applications get authorized access to telemetry data about a Microsoft service subscribed by a tenant.
With the appropriate delegated or application [permissions](/graph/permissions-reference#serviceactivity-exchangereadall), your app can access the telemetry data on behalf of a signed-in user, or without any signed-in user in the tenant. Both delegated and application types of these permissions are granted by only an administrator.

For more information on access tokens, app registration, and delegated and application permissions, see [Authentication and authorization basics](/graph/auth/auth-concepts).

### Access Microsoft 365 Monitoring APIs on behalf of signed-in user

Delegated permissions are needed to access the Microsoft 365 Monitoring API on behalf of a signed-in user. Customer-facing canvas applications, such as the [Microsoft 365 admin center](https://admin.microsoft.com/Adminportal/Home?source=applauncher#/homepage) (accessible only to admin roles), can call the Microsoft 365 Monitoring API to get the telemetry data for the signed-in user's tenant, _on behalf of the signed-in user_.

#### Role-based access control for delegation access

The Microsoft 365 Monitoring API applies role-based access control (RBAC) to identify whether the signed-in user who is on-behalf of has a required Microsoft Entra role. The signed-in user who is on-behalf of must have at least one of the admin roles.

For more information about the Microsoft Entra administrator roles, see:
* [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles)
* [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json)
* [Roles in Microsoft 365, including Microsoft Entra ID, service-specific and cross-service roles](/azure/active-directory/roles/concept-understand-roles#how-azure-ad-roles-are-different-from-other-microsoft-365-roles)

### Access Microsoft 365 Monitoring API without user

Application permissions are needed to access the Microsoft 365 Monitoring API without a signed-in user. Applications that run as backend services, such as monitoring or alert services, can call the Microsoft 365 Monitoring API with their own identity and not on behalf of a user. By leveraging the Microsoft 365 Monitoring API, backend services can retrieve telemetry data, enabling them to build custom dashboards that analyze trends, monitor performance, and detect anomalies in real-time.

## Availability in national clouds
The Microsoft 365 Monitoring API is available in the following Microsoft national cloud deployments. For details, see [national cloud deployments](/graph/deployments).

|National clouds|API URL (partial)|
|:--------------|:-----------------|
|Microsoft Graph global service| https://graph.microsoft.com/beta/reports/serviceActivity/|
|Microsoft Graph for US Government L4 (GccHigh)| Not supported.|
|Microsoft Graph for US Government L5 (DoD)| Not supported.|
|Microsoft Graph China operated by 21Vianet| Not supported.|


## Next steps

The Microsoft 365 Monitoring API can open up new ways for you to engage with users:

- See the [serviceActivity resource](../resources/m365monitoringserviceactivity.md) to learn more about the Microsoft 365 Monitoring APIs available.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).