---
title: "National cloud deployments"
description: "Learn about Microsoft Graph national cloud deployments and the capabilities that are available to developers within each."
author: "adamedx"
ms.localizationpriority: medium
---

# National cloud deployments

In addition to our global network of datacenters, Microsoft cloud services are available in two separate national clouds. These national cloud versions are physical and logical network-isolated instances of Microsoft enterprise cloud services that are confined within the geographic borders of specific countries and operated by local personnel.

Current national clouds include:

- Microsoft Cloud for US Government
- Microsoft Azure and Microsoft 365 operated by 21Vianet in China

Each national cloud environment is unique and different than the Microsoft global environment. It's important to be aware of some of these key differences when you develop applications for national cloud environments; for example, registering applications, acquiring tokens, and calling the Microsoft Graph API can be different.

This article provides information about the different Microsoft Graph national cloud deployments and the capabilities that are available to developers within each.

> [!NOTE]
> [Microsoft Graph Data Connect](./data-connect-concept-overview.md) does not support any of the national cloud deployments.

<!-- markdownlint-disable MD034 -->
> [!VIDEO https://www.youtube-nocookie.com/embed/R\_3E0IVypRM]
<!-- markdownlint-enable MD034 -->

## App registration and token service root endpoints

Before calling the Microsoft Graph APIs, you should first register your application and acquire a token. The following table lists the base URLs for the Azure Active Directory (Azure AD) endpoints to register your application and acquire tokens for each national cloud.

| National cloud | Azure AD portal endpoint | Azure AD endpoint |
| -------------- | ------------------------ | ----------------- |
| Azure AD (global service) | `https://portal.azure.com` | `https://login.microsoftonline.com` |
| Azure AD for US Government | `https://portal.azure.us` | `https://login.microsoftonline.us` |
| Azure AD China operated by 21Vianet | `https://portal.azure.cn` | `https://login.chinacloudapi.cn` |

To learn more about access tokens and Microsoft Graph, see [authentication basics](./auth/auth-concepts.md). For Azure AD authentication scenarios, see [Azure AD authentication basics](/azure/active-directory/develop/authentication-scenarios).

## Microsoft Graph and Graph Explorer service root endpoints

The following table shows the service root endpoints for Microsoft Graph and [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) for each national cloud.

| National Cloud | Microsoft Graph | Graph Explorer |
| -------------- | --------------- | -------------- |
| Microsoft Graph global service | `https://graph.microsoft.com`| [https://developer.microsoft.com/graph/graph-explorer](https://developer.microsoft.com/graph/graph-explorer) |
| Microsoft Graph for US Government L4 | `https://graph.microsoft.us`| Not supported. |
| Microsoft Graph for US Government L5 (DOD) | `https://dod-graph.microsoft.us` | Not supported. |
| Microsoft Graph China operated by 21Vianet | `https://microsoftgraph.chinacloudapi.cn` | Not supported. |

> [!IMPORTANT]
> For an app in US Government:
>
> - If you're working in a Microsoft 365 GCC environment, continue using the worldwide endpoints: `https://graph.microsoft.com` and `https://portal.azure.com`.
> - If you're working in a Microsoft 365 GCC High environment, use `https://portal.azure.us` and `https://graph.microsoft.us`.
> - If you're working in a Microsoft 365 DoD environment, use `https://portal.azure.us` and `https://dod-graph.microsoft.us`.

> [!NOTE]
> Apps can only access organizational data through the national cloud endpoints. This means that apps can only access data in tenants that are registered in the specific national cloud. Apps that are trying to access consumer data associated with Microsoft personal accounts through Microsoft Graph should use the global service `https://graph.microsoft.com`. Access tokens acquired for a national cloud deployment are not interchangeable with those acquired for the global service or any other national cloud.

## Supported features

The following Microsoft Graph features are generally available on the `/v1.0` endpoint across all national cloud deployments, except where noted.

| Microsoft Graph features            | Microsoft Cloud for US Government | Microsoft Cloud China operated by 21Vianet |
|-------------------------------------|-----------------------------------|--------------------------------------------|
| Access reviews                      | ✔                                | ✔                                          |
| Applications and service principals | ✔                                | ✔                                          |
| Change notifications (webhooks)     | ✔                                | ✔                                          |
| Delta query                         | ✔                                | ✔                                          |
| Directory extensions                | ✔                                | ✔                                          |
| Excel                               | ✔                                | ➖                                         |
| Groups                              | ✔                                | ✔                                          |
| OneDrive                            | ✔                                | ✔\*                                        |
| Open type extensions                | ✔                                | ✔                                          |
| Organizational contacts             | ✔                                | ✔                                          |
| Outlook Calendar                    | ✔                                | ✔                                          |
| Outlook Mail                        | ✔                                | ✔                                          |
| Personal Contacts                   | ✔                                | ✔                                          |
| Privileged identity management      | ✔                                | ✔                                          |
| Planner                             | ✔                                | ✔                                          |
| Reports (Azure AD activity reports) | ✔                                | ✔                                          |
| Reports (Microsoft 365 reports)     | ➖                               | ➖                                         |
| Search (Microsoft Search)           | ✔                                | ✔                                          |
| Security                            | ✔                                | ✔                                          |
| Service health and communications   | ✔                                | ✔                                          |
| SharePoint                          | ✔                                | ✔                                          |
| Teams                               | ✔                                | ➖                                         |
| To Do                               | ✔                                | ➖                                         |
| Users                               | ✔                                | ✔                                          |

For more information about the availability of Microsoft 365 usage reports in national clouds, see [Working with Microsoft 365 usage reports in Microsoft Graph](/graph/api/resources/report).

(\*) Limited support for Exchange and OneDrive services only. Azure AD services aren't supported.

> [!IMPORTANT]
> Certain services and features that are in specific regions of the global service might not be available in all of the national clouds. To find out what services are available, see [products available by region](https://azure.microsoft.com/global-infrastructure/services/?products=all&regions=usgov-non-regional,us-dod-central,us-dod-east,usgov-arizona,usgov-iowa,usgov-texas,usgov-virginia,china-non-regional,china-east,china-east-2,china-north,china-north-2,germany-non-regional,germany-central,germany-northeast).

To learn more about National clouds, see the following articles:

- [Microsoft National Clouds](https://www.microsoft.com/TrustCenter/CloudServices/NationalCloud)
- [Microsoft 365 for US Government](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/office-365-us-government)
- [Microsoft 365 operated by 21Vianet](/office365/servicedescriptions/office-365-platform-service-description/office-365-operated-by-21vianet)
- [Azure Government](https://azure.microsoft.com/global-infrastructure/government/)
- [Azure China 21Vianet](/azure/china/)

Explore samples for authenticating and working with Azure and Microsoft 365 in National cloud deployments:

- [Access national cloud deployments with the Microsoft Graph SDKs](sdks/national-clouds.md)
- [Work with Azure through Microsoft Graph for US Government](https://github.com/SteveWinward/Azure-Samples/blob/master/AAD/SampleAadToken_AzureForGovernment.ps1)
- [Connect to US Government O365 environments (GCC, GCC High and GCC DoD) using Microsoft Graph PowerShell](https://github.com/microsoft/Federal-Business-Applications/tree/main/demos/powershell-gov-samples#microsoft-graph-powershell)
