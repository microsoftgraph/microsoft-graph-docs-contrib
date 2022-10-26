---
title: "Working with Microsoft 365 usage reports in Microsoft Graph"
description: "With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need a Microsoft 365 license at all."
ms.localizationpriority: high
ms.prod: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Working with Microsoft 365 usage reports in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who might not need a Microsoft 365 license at all. 

For details about the settings that govern identification/de-identification of information in the Microsoft 365 usage reports data, see [Microsoft 365 Reports in the admin center](/microsoft-365/admin/activity-reports/activity-reports) .

## Authorization

Microsoft Graph controls access to resources via permissions. You must specify the permissions you need in order to access Reports resources. Typically, you specify permissions in the Azure Active Directory (Azure AD) portal. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and [Reports permissions](/graph/permissions-reference#reports-permissions).

## Settings

In Microsoft 365 reports, user information such as usernames, groups, and sites is concealed; actual values are not displayed. You can use the [adminReportSettings ](../resources/adminreportsettings.md) API to control the display of user information in the reports.

## Cloud deployments

The following table shows the availability for each API across all cloud deployments.

| APIs                                                         | Microsoft Graph global service | **Microsoft Cloud for US Government** | **Microsoft Cloud China operated by 21Vianet** | **Microsoft Cloud Germany** | **Microsoft Cloud for USNat and USSec** |
| ------------------------------------------------------------ | ------------------------------ | ------------------------------------- | ---------------------------------------------- | --------------------------- | --------------------------- |
| [Microsoft 365 activations](/graph/api/resources/office-365-activations-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              | 
| [Microsoft 365 active users](/graph/api/resources/office-365-active-users-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              |
| [Microsoft 365 Apps usage](/graph/api/resources/microsoft-365-apps-usage-report?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              |
| [Microsoft 365 browser usage](/graph/api/resources/microsoft-365-browser-usage-report?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ➖                                              | ➖                           |  ➖                              |
| [Microsoft 365 groups activity](/graph/api/resources/office-365-groups-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              |
| [Microsoft Teams device usage](/graph/api/resources/microsoft-teams-device-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ➖                                              | ➖                           |  ✔                              |
| [Microsoft Teams team usage](/graph/api/resources/microsoft-teams-team-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ➖                                              | ➖                           |  ✔                              |
| [Microsoft Teams user activity](/graph/api/resources/microsoft-teams-user-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ➖                                              | ➖                           |  ✔                              |
| [Outlook activity](/graph/api/resources/email-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ✔                                              | ➖                           |  ✔                              |
| [Outlook app usage](/graph/api/resources/email-app-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ✔                                              | ➖                           |  ✔                              |
| [Outlook mailbox usage](/graph/api/resources/mailbox-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ✔                                              | ➖                           |  ✔                              |
| [OneDrive activity](/graph/api/resources/onedrive-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ✔                                              | ➖                           |  ✔                              |
| [OneDrive usage](/graph/api/resources/onedrive-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ✔                                              | ➖                           |  ✔                              |
| [SharePoint activity](/graph/api/resources/sharepoint-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ✔                                              | ➖                           |  ✔                              |
| [SharePoint site usage](/graph/api/resources/sharepoint-site-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ✔                                     | ✔                                              | ➖                           |  ✔                              |
| [Skype for Business activity](/graph/api/resources/skype-for-business-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              |
| [Skype for Business device usage](/graph/api/resources/skype-for-business-device-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              |
| [Skype for Business organizer activity](/graph/api/resources/skype-for-business-organizer-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              |
| [Skype for Business participant activity](/graph/api/resources/skype-for-business-participant-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                             |
| [Skype for Business peer-to-peer activity](/graph/api/resources/skype-for-business-peer-to-peer-activity?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ✔                                              | ➖                           |  ➖                              |
| [Yammer activity](/graph/api/resources/yammer-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ➖                                              | ➖                           |  ➖                              |
| [Yammer device usage](/graph/api/resources/yammer-device-usage-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ➖                                              | ➖                           |  ➖                              |
| [Yammer groups activity](/graph/api/resources/yammer-groups-activity-reports?view=graph-rest-beta&preserve-view=true) | ✔                              | ➖                                     | ➖                                              | ➖                           |  ➖                              |

## What's new
Find out about the [latest new features and updates](/graph/whats-new-overview) for this API set.

## Next steps

Reports resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

Need more ideas? See [how some of our partners are using Microsoft Graph](https://developer.microsoft.com/graph/partners).


