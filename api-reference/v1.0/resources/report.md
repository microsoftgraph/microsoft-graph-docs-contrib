---
title: "Working with Microsoft 365 usage reports in Microsoft Graph"
description: "With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who may not need a Microsoft 365 license at all."
ms.localizationpriority: high
ms.subservice: "reports"
author: "sarahwxy"
doc_type: conceptualPageType
---

# Working with Microsoft 365 usage reports in Microsoft Graph

With Microsoft Graph, you can access Microsoft 365 usage reports resources to get the information about how people in your business are using Microsoft 365 services. For example, you can identify who is using a service a lot and reaching quotas, or who might not need a Microsoft 365 license at all.

For details about the settings that govern identification/de-identification of information in the Microsoft 365 usage reports data, see [Microsoft 365 Reports in the admin center](/microsoft-365/admin/activity-reports/activity-reports) .

## Authorization

Microsoft Graph controls access to resources via permissions. You must specify the permissions you need in order to access Reports resources. Typically, you specify permissions in the Microsoft Entra admin center. For more information, see [Microsoft Graph permissions reference](/graph/permissions-reference) and [Reports permissions](/graph/permissions-reference#reports-permissions).

## Cloud deployments

The following table shows the availability for each API across all cloud deployments.

| APIs | Microsoft Graph global service | Microsoft Cloud for US Government | Microsoft Cloud China operated by 21Vianet |
| ---- | ------------------------------ | ----------------------------------| ------------------------------------------ |
| [Microsoft 365 activations](reportroot.md#microsoft-365-activations)                               | ✔ | ➖ | ➖ |
| [Microsoft 365 active users](reportroot.md#microsoft-365-active-users)                             | ✔ | ➖ | ➖ |
| [Microsoft 365 apps usage](reportroot.md#microsoft-365-apps-usage)                                 | ✔ | ➖ | ➖ |
| [Microsoft 365 groups activity](reportroot.md#microsoft-365-groups-activity)                       | ✔ | ➖ | ➖ |
| [Microsoft Teams device usage](reportroot.md#microsoft-teams-device-usage)                         | ✔ | ➖ | ➖ |
| [Microsoft Teams team activity](reportroot.md#microsoft-teams-team-activity)                       | ✔ | ➖ | ➖ |
| [Microsoft Teams user activity](reportroot.md#microsoft-teams-user-activity)                       | ✔ | ➖ | ➖ |
| [Outlook activity](reportroot.md#outlook-activity)                                                 | ✔ | ➖ | ➖ |
| [Outlook app usage](reportroot.md#outlook-app-usage)                                               | ✔ | ➖ | ➖ |
| [Outlook mailbox usage](reportroot.md#outlook-mailbox-usage)                                       | ✔ | ➖ | ➖ |
| [OneDrive activity](reportroot.md#onedrive-activity)                                               | ✔ | ➖ | ➖ |
| [OneDrive usage](reportroot.md#onedrive-usage)                                                     | ✔ | ➖ | ➖ |
| [SharePoint activity](reportroot.md#sharepoint-activity)                                           | ✔ | ➖ | ➖ |
| [SharePoint site usage](reportroot.md#sharepoint-site-usage)                                       | ✔ | ➖ | ➖ |
| [Skype for Business activity](reportroot.md#skype-for-business-activity)                           | ✔ | ➖ | ➖ |
| [Skype for Business device usage](reportroot.md#skype-for-business-device-usage)                   | ✔ | ➖ | ➖ |
| [Skype for Business organizer activity](reportroot.md#skype-for-business-organizer-activity)       | ✔ | ➖ | ➖ |
| [Skype for Business participant activity](reportroot.md#skype-for-business-participant-activity)   | ✔ | ➖ | ➖ |
| [Skype for Business peer-to-peer activity](reportroot.md#skype-for-business-peer-to-peer-activity) | ✔ | ➖ | ➖ |
| [Viva Engage activity](reportroot.md#viva-engage-activity)                                         | ✔ | ➖ | ➖ |
| [Viva Engage device usage](reportroot.md#viva-engage-device-usage)                                 | ✔ | ➖ | ➖ |
| [Viva Engage groups activity](reportroot.md#viva-engage-groups-activity)                           | ✔ | ➖ | ➖ |

## Next steps

Reports resources and APIs can open up new ways for you to engage with users and manage their experiences with Microsoft Graph. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).
