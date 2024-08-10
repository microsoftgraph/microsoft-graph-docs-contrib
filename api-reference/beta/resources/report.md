---
title: "Working with Microsoft 365 usage reports in Microsoft Graph"
description: "With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need a Microsoft 365 license at all."
ms.localizationpriority: high
ms.subservice: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Working with Microsoft 365 usage reports in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who might not need a Microsoft 365 license at all. 

For details about the settings that govern identification/de-identification of information in the Microsoft 365 usage reports data, see [Microsoft 365 Reports in the admin center](/microsoft-365/admin/activity-reports/activity-reports) .

## Authorization

Microsoft Graph controls access to resources via permissions. You must specify the permissions you need in order to access Reports resources. Typically, you specify permissions in the Microsoft Entra admin center. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and [Reports permissions](/graph/permissions-reference#reports-permissions).

## Settings

In Microsoft 365 reports, user information such as usernames, groups, and sites is concealed; actual values aren't displayed. You can use the [adminReportSettings](../resources/adminreportsettings.md) API to control the display of user information in the reports.

## Cloud deployments

The following table shows the availability for each API across all cloud deployments.

| APIs                                                         | Microsoft Graph global service | **Microsoft Cloud for US Government** | **Microsoft Cloud China operated by 21Vianet** | **Microsoft Cloud for USNat and USSec** |
| ------------------------------------------------------------ | ------------------------------ | ------------------------------------- | ---------------------------------------------- | --------------------------- |
| [Admin report settings](../resources/adminreportsettings.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [Microsoft 365 activations](../resources/office-365-activations-reports.md) | ✔ | ✔ | ✔ | ➖ | 
| [Microsoft 365 active users](../resources/office-365-active-users-reports.md)| ✔ | ✔ | ✔ | ➖ | 
| [Microsoft 365 Apps usage](../resources/microsoft-365-apps-usage-report.md) | ✔                              | ✔                                     | ✔                                              |  ➖                              |
| [Microsoft 365 browser usage](../resources/microsoft-365-browser-usage-report.md) | ✔                              | ➖                                     | ➖                                              |  ➖                              |
| [Microsoft 365 groups activity](../resources/office-365-groups-activity-reports.md) | ✔                              | ➖                                     | ✔                                              |  ➖                              |
| [Microsoft Forms Usage](../resources/microsoft-forms-usage-reports.md) | ✔                              | ➖                                     |
| [Microsoft Teams device usage](../resources/microsoft-teams-device-usage-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [Microsoft Teams team usage](../resources/microsoft-teams-team-usage-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [Microsoft Teams user activity](../resources/microsoft-teams-user-activity-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [Outlook activity](../resources/email-activity-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [Outlook app usage](../resources/email-app-usage-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [Outlook mailbox usage](../resources/mailbox-usage-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [OneDrive activity](../resources/onedrive-activity-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [OneDrive usage](../resources/onedrive-usage-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [SharePoint activity](../resources/sharepoint-activity-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [SharePoint site usage](../resources/sharepoint-site-usage-reports.md) | ✔                              | ✔                                     | ✔                                              |  ✔                              |
| [Skype for Business activity](../resources/skype-for-business-activity-reports.md) | ✔                              | ➖                                     | ✔                                              |  ➖                              |
| [Skype for Business device usage](../resources/skype-for-business-device-usage-reports.md) | ✔                              | ➖                                     | ✔                                              |  ➖                              |
| [Skype for Business organizer activity](../resources/skype-for-business-organizer-activity-reports.md) | ✔                              | ➖                                     | ✔                                              |  ➖                              |
| [Skype for Business participant activity](../resources/skype-for-business-participant-activity-reports.md) | ✔                              | ➖                                     | ✔                                              |  ➖                             |
| [Skype for Business peer-to-peer activity](../resources/skype-for-business-peer-to-peer-activity.md) | ✔                              | ➖                                     | ✔                                              |  ➖                              |
| [Yammer activity](../resources/yammer-activity-reports.md) | ✔                              | ➖                                     | ➖                                              |  ➖                              |
| [Yammer device usage](../resources/yammer-device-usage-reports.md) | ✔                              | ➖                                     | ➖                                              |  ➖                              |
| [Yammer groups activity](../resources/yammer-groups-activity-reports.md) | ✔                              | ➖                                     | ➖                                              |  ➖                              |

## Next steps

Reports resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
