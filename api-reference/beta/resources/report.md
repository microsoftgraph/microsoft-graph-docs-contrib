---
title: "Working with Microsoft 365 usage reports in Microsoft Graph"
description: "With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who might not need a Microsoft 365 license at all."
ms.localizationpriority: high
ms.subservice: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
ms.date: 09/29/2024
---

# Working with Microsoft 365 usage reports in Microsoft Graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who might not need a Microsoft 365 license at all.

For details about the settings that govern identification/de-identification of information in the Microsoft 365 usage reports data, see [Microsoft 365 Reports in the admin center](/microsoft-365/admin/activity-reports/activity-reports) .

## Authorization

Microsoft Graph controls access to resources via permissions. You must specify the permissions you need in order to access Reports resources. Typically, you specify permissions in the Microsoft Entra admin center. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and [Reports permissions](/graph/permissions-reference#reports-permissions).

## Settings

In Microsoft 365 reports, user information such as usernames, groups, and sites are concealed; actual values aren't displayed. You can use the [adminReportSettings](../resources/adminreportsettings.md) API to control the display of user information in the reports.

## Cloud deployments

The following table shows the availability for each API across all cloud deployments.

| APIs                                                                                                            | Microsoft Graph global service | **Microsoft Cloud for US Government** | **Microsoft Cloud China operated by 21Vianet** | **Microsoft Cloud for USNat and USSec** |
| --------------------------------------------------------------------------------------------------------------- | ------------------------------ | ------------------------------------- | ---------------------------------------------- | --------------------------------------- |
| [Admin report settings](../resources/adminreportsettings.md)                                                    | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [Microsoft 365 Copilot usage](../resources/reportroot.md#microsoft-365-copilot-usage)                           | ✔                              | ➖                                    | ➖                                             | ➖                                      |
| [Microsoft 365 activations](../resources/reportroot.md#microsoft-365-activations)                               | ✔                              | ✔                                     | ✔                                              | ➖                                      |
| [Microsoft 365 active users](../resources/reportroot.md#microsoft-365-active-users)                             | ✔                              | ✔                                     | ✔                                              | ➖                                      |
| [Microsoft 365 Apps usage](../resources/reportroot.md#microsoft-365-apps-usage)                                 | ✔                              | ✔                                     | ✔                                              | ➖                                      |
| [Microsoft 365 browser usage](../resources/reportroot.md#microsoft-365-browser-usage)                           | ✔                              | ➖                                    | ➖                                             | ➖                                      |
| [Microsoft 365 Groups activity](../resources/reportroot.md#microsoft-365-groups-activity)                       | ✔                              | ➖                                    | ✔                                              | ➖                                      |
| [Microsoft Forms usage](../resources/reportroot.md#forms-activity)                                              | ✔                              | ➖                                    |
| [Microsoft Graph API usage](../resources/reportroot.md#microsoft-graph-api-usage-preview)                               | ✔                              | ➖                                    | ➖                                             | ➖                                      |
| [Microsoft Teams device usage](../resources/reportroot.md#microsoft-teams-device-usage)                         | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [Microsoft Teams team activity](../resources/reportroot.md#microsoft-teams-team-activity)                       | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [Microsoft Teams user activity](../resources/reportroot.md#microsoft-teams-user-activity)                       | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [Outlook activity](../resources/reportroot.md#outlook-activity)                                                 | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [Outlook app usage](../resources/reportroot.md#outlook-app-usage)                                               | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [Outlook mailbox usage](../resources/reportroot.md#outlook-mailbox-usage)                                       | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [OneDrive activity](../resources/reportroot.md#onedrive-activity)                                               | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [OneDrive usage](../resources/reportroot.md#onedrive-usage)                                                     | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [SharePoint activity](../resources/reportroot.md#sharepoint-activity)                                           | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [SharePoint site usage](../resources/reportroot.md#sharepoint-site-usage)                                       | ✔                              | ✔                                     | ✔                                              | ✔                                       |
| [Skype for Business activity](../resources/reportroot.md#skype-for-business-activity)                           | ✔                              | ➖                                    | ✔                                              | ➖                                      |
| [Skype for Business device usage](../resources/reportroot.md#skype-for-business-device-usage)                   | ✔                              | ➖                                    | ✔                                              | ➖                                      |
| [Skype for Business organizer activity](../resources/reportroot.md#skype-for-business-organizer-activity)       | ✔                              | ➖                                    | ✔                                              | ➖                                      |
| [Skype for Business participant activity](../resources/reportroot.md#skype-for-business-participant-activity)   | ✔                              | ➖                                    | ✔                                              | ➖                                      |
| [Skype for Business peer-to-peer activity](../resources/reportroot.md#skype-for-business-peer-to-peer-activity) | ✔                              | ➖                                    | ✔                                              | ➖                                      |
| [Viva Engage activity](../resources/reportroot.md#viva-engage-activity)                                         | ✔                              | ➖                                    | ➖                                             | ➖                                      |
| [Viva Engage device usage](../resources/reportroot.md#viva-engage-device-usage)                                 | ✔                              | ➖                                    | ➖                                             | ➖                                      |
| [Viva Engage groups activity](../resources/reportroot.md#viva-engage-groups-activity)                           | ✔                              | ➖                                    | ➖                                             | ➖                                      |

## How to programmatically export unlicensed Copilot Chat usage

Currently, no public Microsoft Graph API or PowerShell cmdlet provides access to Copilot Chat usage data for unlicensed users included in the Copilot Chat usage report.

Unlicensed Copilot Chat interactions are logged only in the Microsoft Purview unified audit log.

To automatically extract `CopilotInteraction` events from the unified audit log, use one of the following methods:

- **PowerShell**: Use `Search-UnifiedAuditLog` to filter `CopilotInteraction` events and export them to a CSV file.
- **Office 365 management activity API**: Stream audit logs into security information and event management (SIEM) or analytics platforms.

## Next steps

Reports resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
