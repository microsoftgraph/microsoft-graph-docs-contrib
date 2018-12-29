---
title: "National cloud deployments"
description: "In addition to our global network of datacenters, Microsoft cloud services are available in three separate national clouds. These national cloud versions are physical and logical network-isolated instances of Microsoft enterprise cloud services, which are confined within the geographic borders of specific countries and operated by local personnel. To learn more, see Microsoft National Clouds."
---

# National cloud deployments


In addition to our global network of datacenters, Microsoft cloud services are available in three separate national clouds. These national cloud versions are physical and logical network-isolated instances of Microsoft enterprise cloud services, which are confined within the geographic borders of specific countries and operated by local personnel.

Current national clouds include:

- Microsoft Cloud for US Government
- Microsoft Cloud Germany
- Azure and Office 365 operated by 21Vianet in China

National clouds are unique and different environment than Azure global. Therefore, it is important to be aware of some key differences while calling the Microsoft Graph api for these environments. Some of the key differences you can find here are around separate endpoints for separate cloud and acquiring token.

This article provides information about the different national cloud deployments of Microsoft Graph and the capabilities within each deployment that are available to developers.

## Microsoft Graph and Microsoft Graph Explorer service root endpoints

There are separate Microsoft Graph and Graph Explorer endpoints for all of the national clouds due to diversity of the environments from each other.

The following table shows the service root endpoints for Microsoft Graph and Microsoft Graph Explorer for each National cloud.

| National Cloud | Microsoft Graph | Microsoft Graph Explorer
|---------------------------|----------------|----------------|
| Microsoft Graph China operated by 21Vianet | https://microsoftgraph.chinacloudapi.cn | https://developer.microsoft.com/zh-cn/graph/graph-explorer-china |
| Microsoft Graph Germany | https://graph.microsoft.de | Not supported. |
| Microsoft Graph for US Government | https://graph.microsoft.com | Not supported. |
| Microsoft Graph global service | https://graph.microsoft.com | https://developer.microsoft.com/graph/graph-explorer |

> **Note**: Apps can only access organizational data through the national cloud endpoints. This means that only data in tenants registered in the specific national cloud can be accessed. Apps that are trying to access consumer data associated with personal Microsoft accounts through Microsoft Graph should use the global service (https://graph.microsoft.com). Access tokens acquired for a national cloud deployment are not interchangeable with those acquired for the global service.

## Azure AD OpenID Connect and OAuth2.0 endpoints

All of the national clouds authenticate users separately in each environment and have separate authentication endpoints.

The following table lists the base URLs for the Azure Active Directory (Azure AD) endpoints used to acquire tokens to call Microsoft Graph for each national cloud.

| National Cloud | Azure AD root endpoint |
|---------------------------|----------------|
| Azure AD China operated by 21Vianet |https://login.chinacloudapi.cn |
| Azure AD Germany | https://login.microsoftonline.de |
| Azure AD for US Government | https://login.microsoftonline.us |
| Azure AD (global service) | https://login.microsoftonline.com |

Requests to the Azure AD authorization or token endpoints can be formed using the appropriate region-specific base URL. For example, for Germany:

- The authorization common endpoint is https://login.microsoftonline.de/common/oauth2/authorize.
- The token common endpoint is https://login.microsoftonline.de/common/oauth2/token.

Tenant-specific endpoints can be formed by replacing "common" in the URLs above with either the tenant ID or a verified domain for the tenant.
Whether you use the common or tenant-specific endpoints will depend upon the requirements of your app and the authentication flow you are using to get tokens. 

To learn more about Azure AD access tokens and Microsoft Graph, see [Get auth tokens](./auth-overview.md).
To learn more about Azure AD authentication scenarios, see [Azure AD authentication basics](authentication-scenarios.md)

> **Note:** The [Azure AD v2.0 authorization and token endpoints](https://azure.microsoft.com/en-us/documentation/articles/active-directory-appmodel-v2-overview/) are available on the global service only; they are not yet supported for use with national cloud deployments.

## Supported features

The following Microsoft Graph features are generally available (on the `/v1.0` endpoint) across all national cloud deployments, except where noted:

* Users
* Groups
* Excel (Support is limited on Microsoft Graph operated by 21Vianet in China.)
* OneDrive (Support is limited on Microsoft Graph operated by 21Vianet in China.)
* Outlook Mail
* Outlook Calendar
* Personal Contacts
* SharePoint (Support is limited on Microsoft Graph operated by 21Vianet in China.)
* Delta query (Support varies across different resources on each national cloud deployment.)
* Webhooks (Support varies across different resources on each national cloud deployment.)

The following additional Microsoft Graph features are available in preview (on the `/beta` endpoint) across all national cloud deployments, except where noted:

* Organizational Contacts
* Applications
* Service Principals

The following Microsoft Graph features are not yet supported on national cloud deployments:

* Microsoft Planner
* Directory schema extensions
* Open type extensions

 > **IMPORTANT:** Certain services and features that are in specific regions of the global service might not be available in all of the National clouds. To find out what services are available go to [products available by region](https://azure.microsoft.com/en-us/global-infrastructure/services/?products=all&regions=usgov-non-regional,us-dod-central,us-dod-east,usgov-arizona,usgov-iowa,usgov-texas,usgov-virginia,china-non-regional,china-east,china-east-2,china-north,china-north-2,germany-non-regional,germany-central,germany-northeast)

- To learn more, see [Microsoft National Clouds](https://www.microsoft.com/en-us/TrustCenter/CloudServices/NationalCloud)
- To learn more, see [Azure Government](https://docs.microsoft.com/azure/azure-government/)
- To learn more, see[Azure China 21Vianet](https://docs.microsoft.com/azure/china/)
- To learn more, see [Azure Germany](https://docs.microsoft.com/azure/germany/)