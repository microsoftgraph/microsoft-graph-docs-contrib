---
title: reportRoot resource type
description: Represents a container for Microsoft Entra and Microsoft 365 reporting resources.
author: sarahwxy
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# reportRoot resource type

Namespace: microsoft.graph

Represents a container for Microsoft Entra and Microsoft 365 reporting resources.

## Methods

### Microsoft Teams device usage

For details about report views and names, see [Microsoft 365 reports - Microsoft Teams device usage](/microsoft-365/admin/activity-reports/microsoft-teams-device-usage-preview).

| Method                                                                                         | Return type | Description                              |
|:-----------------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getteamsdeviceusageuserdetail.md)                          | Stream      | Get details about Microsoft Teams device usage by user. |
| [Get user counts](../api/reportroot-getteamsdeviceusageusercounts.md)                          | Stream      | Get the number of daily unique users by device type. |
| [Get distribution user counts](../api/reportroot-getteamsdeviceusagedistributionusercounts.md) | Stream      | Get the number of unique users by device type over the selected time period. |

### Microsoft Teams user activity

For details about report views and names, see [Microsoft 365 reports - Microsoft Teams user activity](/microsoft-365/admin/activity-reports/microsoft-teams-user-activity-preview).

| Method                                                                 | Return type | Description                              |
|:-----------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getteamsuseractivityuserdetail.md) | Stream      | Get details about Microsoft Teams user activity by user. |
| [Get activity counts](../api/reportroot-getteamsuseractivitycounts.md) | Stream      | Get the number of Microsoft Teams activities by activity type. The activities are performed by Microsoft Teams licensed users. |
| [Get user counts](../api/reportroot-getteamsuseractivityusercounts.md) | Stream      | Get the number of users by activity type. The activity types are number of teams chat messages, private chat messages, calls, or meetings. |

### Microsoft Teams team activity

For details about report views and names, see [Microsoft 365 reports - Microsoft Teams usage activity](/microsoft-365/admin/activity-reports/microsoft-teams-usage-activity).

| Method                                                                                               | Return type | Description                              |
|:-----------------------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get team detail](../api/reportroot-getteamsteamactivitydetail.md)                                   | Stream      | Get details about Teams activity by team. The numbers include activities for both licensed and non-licensed users. |
| [Get team activity counts](../api/reportroot-getteamsteamactivitycounts.md)                          | Stream      | Get the number of team activities across Microsoft Teams. The activity types are related to meetings and messages. |
| [Get team activity distribution counts](../api/reportroot-getteamsteamactivitydistributioncounts.md) | Stream      | Get the number of team activities across Microsoft Teams over a selected period. |
| [Get team counts](../api/reportroot-getteamsteamcounts.md)                                           | Stream      | Get the number of teams by type across Microsoft Teams. |

### Outlook activity

For details about report views and names, see [Microsoft 365 reports - Email Activity](/microsoft-365/admin/activity-reports/email-activity-ww).

| Method                                                             | Return type | Description                              |
|:-------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getemailactivityuserdetail.md) | Stream      | Get details about email activity users have performed. |
| [Get activity counts](../api/reportroot-getemailactivitycounts.md) | Stream      | Enables you to understand the trends of email activity (like how many were sent, read, and received) in your organization. |
| [Get user counts](../api/reportroot-getemailactivityusercounts.md) | Stream      | Enables you to understand trends on the number of unique users who are performing email activities like send, read, and receive. |

### Outlook app usage

[Microsoft 365 reports - Email apps usage](/microsoft-365/admin/activity-reports/email-apps-usage-ww).

| Method                                                                              | Return type | Description                              |
|:------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getemailappusageuserdetail.md)                  | Stream      | Get details about which activities users performed on the various email apps. |
| [Get apps user counts](../api/reportroot-getemailappusageappsusercounts.md)         | Stream      | Get the count of unique users per email app. |
| [Get user counts](../api/reportroot-getemailappusageusercounts.md)                  | Stream      | Get the count of unique users that connected to Exchange Online using any email app. |
| [Get versions user counts](../api/reportroot-getemailappusageversionsusercounts.md) | Stream      | Get the count of unique users by Outlook desktop version. |

### Outlook mailbox usage

For details about report views and names, see [Microsoft 365 reports - Mailbox usage](/microsoft-365/admin/activity-reports/mailbox-usage).

| Method                                                                                          | Return type | Description                              |
|:------------------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get mailbox detail](../api/reportroot-getmailboxusagedetail.md)                                | Stream      | Get details about mailbox usage.         |
| [Get mailbox counts](../api/reportroot-getmailboxusagemailboxcounts.md)                         | Stream      | Get the total number of user mailboxes in your organization and how many are active each day of the reporting period. A mailbox is considered active if the user sent or read any email. |
| [Get quota status mailbox counts](../api/reportroot-getmailboxusagequotastatusmailboxcounts.md) | Stream      | Get the count of user mailboxes in each quota category. |
| [Get storage](../api/reportroot-getmailboxusagestorage.md)                                      | Stream      | Get the amount of storage used in your organization. |

### Microsoft 365 activations

For details about report views and names, see [Microsoft 365 reports - Microsoft Office activations](/microsoft-365/admin/activity-reports/microsoft-office-activations-ww).

| Method                                                                     | Return type | Description                              |
|:---------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getoffice365activationsuserdetail.md)  | Stream      | Get details about users who have activated Microsoft 365. |
| [Get activation counts](../api/reportroot-getoffice365activationcounts.md) | Stream      | Get the count of Microsoft 365 activations on desktops and devices. |
| [Get user counts](../api/reportroot-getoffice365activationsusercounts.md)  | Stream      | Get the count of users that are enabled and those that have activated the Office subscription on desktop or devices. |

### Microsoft 365 active users

For details about report views and names, see [Microsoft 365 reports - Active Users](/microsoft-365/admin/activity-reports/active-users-ww).

| Method                                                                          | Return type | Description                              |
|:--------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getoffice365activeuserdetail.md)            | Stream      | Get details about Microsoft 365 active users. |
| [Get user counts](../api/reportroot-getoffice365activeusercounts.md)            | Stream      | Get the count of daily active users in the reporting period by product. |
| [Get services user counts](../api/reportroot-getoffice365servicesusercounts.md) | Stream      | Get the count of users by activity type and service. |

### Microsoft 365 apps usage

For details about report views and names, see [Microsoft 365 reports - Microsoft 365 Apps usage](/microsoft-365/admin/activity-reports/microsoft365-apps-usage).

| Method                                                                        | Return type | Description                              |
|:------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getm365appuserdetail.md)                  | Stream      | Get details about the usage of Microsoft 365 Apps by user. |
| [Get user counts](../api/reportroot-getm365appusercounts.md)                  | Stream      | Get the number of daily unique users by app. |
| [Get platform user counts](../api/reportroot-getm365appplatformusercounts.md) | Stream      | Get the number of daily unique users by platform. |

### Microsoft 365 groups activity

For details about report views and names, see [Microsoft 365 reports - Microsoft 365 groups](/microsoft-365/admin/activity-reports/office-365-groups-ww).

| Method                                                                         | Return type | Description                              |
|:-------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get group detail](../api/reportroot-getoffice365groupsactivitydetail.md)      | Stream      | Get details about Microsoft 365 groups activity by group. |
| [Get activity counts](../api/reportroot-getoffice365groupsactivitycounts.md)   | Stream      | Get the number of group activities across group workloads. |
| [Get group counts](../api/reportroot-getoffice365groupsactivitygroupcounts.md) | Stream      | Get the daily total number of groups and how many of them were active based on email conversations, Viva Engage posts, and SharePoint file activities. |
| [Get storage](../api/reportroot-getoffice365groupsactivitystorage.md)          | Stream      | Get the total storage used across all group mailboxes and group sites. |
| [Get file counts](../api/reportroot-getoffice365groupsactivityfilecounts.md)   | Stream      | Get the total number of files and how many of them were active across all group sites associated with a Microsoft 365 group. |

### OneDrive activity

For details about report views and names, see [Microsoft 365 reports - OneDrive for Business activity](/microsoft-365/admin/activity-reports/onedrive-for-business-activity-ww).

| Method                                                                | Return type | Description                              |
|:----------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getonedriveactivityuserdetail.md) | Stream      | Get details about OneDrive activity by user. |
| [Get user counts](../api/reportroot-getonedriveactivityusercounts.md) | Stream      | Get the trend in the number of active OneDrive users. |
| [Get file counts](../api/reportroot-getonedriveactivityfilecounts.md) | Stream      | Get the number of unique, licensed users that performed file interactions against any OneDrive account. |

### OneDrive usage

For details about report views and names, see [Microsoft 365 reports - OneDrive for Business usage](/microsoft-365/admin/activity-reports/onedrive-for-business-usage-ww).

| Method                                                                   | Return type | Description                              |
|:-------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get account detail](../api/reportroot-getonedriveusageaccountdetail.md) | Stream      | Get details about OneDrive usage by account. |
| [Get account counts](../api/reportroot-getonedriveusageaccountcounts.md) | Stream      | Get the trend in the number of active OneDrive for Business sites. Any site on which users viewed, modified, uploaded, downloaded, shared, or synced files is considered an active site. |
| [Get file counts](../api/reportroot-getonedriveusagefilecounts.md)       | Stream      | Get the total number of files across all sites and how many are active files. A file is considered active if it has been saved, synced, modified, or shared within the specified time period. |
| [Get storage](../api/reportroot-getonedriveusagestorage.md)              | Stream      | Get the trend on the amount of storage you are using in OneDrive for Business. |

### SharePoint activity

For details about report views and names, see [Microsoft 365 reports - SharePoint activity](/microsoft-365/admin/activity-reports/sharepoint-activity-ww).

| Method                                                                  | Return type | Description                              |
|:------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getsharepointactivityuserdetail.md) | Stream      | Get details about SharePoint activity by user. |
| [Get file counts](../api/reportroot-getsharepointactivityfilecounts.md) | Stream      | Get the number of unique, licensed users who interacted with files stored on SharePoint sites. |
| [Get user counts](../api/reportroot-getsharepointactivityusercounts.md) | Stream      | Get the trend in the number of active users. A user is considered active if he or she has executed a file activity (save, sync, modify, or share) or visited a page within the specified time period. |
| [Get pages](../api/reportroot-getsharepointactivitypages.md)            | Stream      | Get the number of unique pages visited by users. |

### SharePoint site usage

For details about report views and names, see [Microsoft 365 reports - SharePoint site usage](/microsoft-365/admin/activity-reports/sharepoint-site-usage-ww).

| Method                                                                   | Return type | Description                              |
|:-------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get site detail](../api/reportroot-getsharepointsiteusagedetail.md)     | Stream      | Get details about SharePoint site usage. |
| [Get file counts](../api/reportroot-getsharepointsiteusagefilecounts.md) | Stream      | Get the total number of files across all sites and the number of active files. A file (user or system) is considered active if it has been saved, synced, modified, or shared within the specified time period. |
| [Get site counts](../api/reportroot-getsharepointsiteusagesitecounts.md) | Stream      | Get the trend of total and active site count during the reporting period. |
| [Get storage](../api/reportroot-getsharepointsiteusagestorage.md)        | Stream      | Get the trend of storage allocated and consumed during the reporting period. |
| [Get pages](../api/reportroot-getsharepointsiteusagepages.md)            | Stream      | Get the number of pages viewed across all sites. |

### Skype for Business activity

For details about report views and names, see [Skype for Business activity](/skypeforbusiness/skype-for-business-online-reporting/activity-report).

| Method                                                                        | Return type | Description                              |
|:------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getskypeforbusinessactivityuserdetail.md) | Stream      | Get details about Skype for Business activity by user. |
| [Get activity counts](../api/reportroot-getskypeforbusinessactivitycounts.md) | Stream      | Get the trends on how many users organized and participated in conference sessions held in your organization through Skype for Business. The report also includes the number of peer-to-peer sessions. |
| [Get user counts](../api/reportroot-getskypeforbusinessactivityusercounts.md) | Stream      | Get the trends on how many unique users organized and participated in conference sessions held in your organization through Skype for Business. The report also includes the number of peer-to-peer sessions. |

### Skype for Business device usage

For details about report views and names, see [Skype for Business clients used](/skypeforbusiness/skype-for-business-online-reporting/device-usage-report).

| Method                                                                                                    | Return type | Description |
|:----------------------------------------------------------------------------------------------------------|:------------|:------------|
| [Get user detail](../api/reportroot-getskypeforbusinessdeviceusageuserdetail.md)                          | Stream      | Get details about Skype for Business device usage by user. |
| [Get distribution user counts](../api/reportroot-getskypeforbusinessdeviceusagedistributionusercounts.md) | Stream      | Get the number of users using unique devices in your organization. The report shows you the number of users per device including Windows, Windows phone, Android phone, iPhone, and iPad. |
| [Get user counts](../api/reportroot-getskypeforbusinessdeviceusageusercounts.md)                          | Stream      | Get the usage trends on how many users in your organization have connected using the Skype for Business app. You also get a breakdown by the type of device (Windows, Windows phone, Android phone, iPhone, or iPad) on which the Skype for Business client app is installed and used across your organization. |

### Skype for Business organizer activity

For details about report views and names, see [Skype for Business conference organizer activity](/skypeforbusiness/skype-for-business-online-reporting/conference-organizer-activity-report).

| Method                                                                                     | Return type | Description                              |
|:-------------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get activity counts](../api/reportroot-getskypeforbusinessorganizeractivitycounts.md)     | Stream      | Get usage trends on the number and type of conference sessions held and organized by users in your organization. Types of conference sessions include IM, audio/video, application sharing, web, dial-in/out - third party, and dial-in/out Microsoft. |
| [Get user counts](../api/reportroot-getskypeforbusinessorganizeractivityusercounts.md)     | Stream      | Get usage trends on the number of unique users and type of conference sessions held and organized by users in your organization. Types of conference sessions include IM, audio/video, application sharing, web, dial-in/out - third party, and dial-in/out Microsoft. |
| [Get minute counts](../api/reportroot-getskypeforbusinessorganizeractivityminutecounts.md) | Stream      | Get usage trends on the length in minutes and type of conference sessions held and organized by users in your organization. Types of conference sessions include audio/video, and dial-in and dial-out - Microsoft. |

### Skype for Business participant activity

For details about report views and names, see [Skype for Business conference participant activity](/skypeforbusiness/skype-for-business-online-reporting/conference-participant-activity-report).

| Method                                                                                       | Return type | Description                              |
|:---------------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get activity counts](../api/reportroot-getskypeforbusinessparticipantactivitycounts.md)     | Stream      | Get usage trends on the number and type of conference sessions that users from your organization participated in. Types of conference sessions include IM, audio/video, application sharing, web, and dial-in/out - third party. |
| [Get user counts](../api/reportroot-getskypeforbusinessparticipantactivityusercounts.md)     | Stream      | Get usage trends on the number of unique users and type of conference sessions that users from your organization participated in. Types of conference sessions include IM, audio/video, application sharing, web, and dial-in/out - third party. |
| [Get minute counts](../api/reportroot-getskypeforbusinessparticipantactivityminutecounts.md) | Stream      | Get usage trends on the length in minutes and type of conference sessions that users from your organization participated in. Types of conference sessions include audio/video. |

### Skype for Business peer-to-peer activity

For details about report views and names, see [Skype for Business peer-to-peer activity](/skypeforbusiness/skype-for-business-online-reporting/peer-to-peer-activity-report).

| Method                                                                                      | Return type | Description                              |
|:--------------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get activity counts](../api/reportroot-getskypeforbusinesspeertopeeractivitycounts.md)     | Stream      | Get usage trends on the number and type of sessions held in your organization. Types of sessions include IM, audio, video, application sharing, and file transfer. |
| [Get user counts](../api/reportroot-getskypeforbusinesspeertopeeractivityusercounts.md)     | Stream      | Get usage trends on the number of unique users and type of peer-to-peer sessions held in your organization. Types of sessions include IM, audio, video, application sharing, and file transfers in peer-to-peer sessions. |
| [Get minute counts](../api/reportroot-getskypeforbusinesspeertopeeractivityminutecounts.md) | Stream      | Get usage trends on the length in minutes and type of peer-to-peer sessions held in your organization. Types of sessions include audio and video. |

### Viva Engage activity

For details about report views and names, see [Microsoft 365 reports - Viva Engage Activity](/microsoft-365/admin/activity-reports/viva-engage-activity-report-ww).

| Method                                                              | Return type | Description                              |
|:--------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getyammeractivityuserdetail.md) | Stream      | Get details about Viva Engage activity by user. |
| [Get activity counts](../api/reportroot-getyammeractivitycounts.md) | Stream      | Get the trends on the amount of Viva Engage activity in your organization by how many messages were posted, read, and liked. |
| [Get user counts](../api/reportroot-getyammeractivityusercounts.md) | Stream      | Get the trends on the number of unique users who posted, read, and liked  Viva Engage messages. |

### Viva Engage device usage

For details about report views and names, see [Microsoft 365 reports - Viva Engage device usage](/microsoft-365/admin/activity-reports/viva-engage-device-usage-report-ww).

| Method                                                                                          | Return type | Description                              |
|:------------------------------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get user detail](../api/reportroot-getyammerdeviceusageuserdetail.md)                          | Stream      | Get details about Viva Engage device usage by user. |
| [Get distribution user counts](../api/reportroot-getyammerdeviceusagedistributionusercounts.md) | Stream      | Get the number of users by device type.  |
| [Get user counts](../api/reportroot-getyammerdeviceusageusercounts.md)                          | Stream      | Get the number of daily users by device type. |

### Viva Engage groups activity

For details about report views and names, see [Microsoft 365 reports - Viva Engage groups activity](/microsoft-365/admin/activity-reports/viva-engage-groups-activity-report-ww).

| Method                                                                      | Return type | Description                              |
|:----------------------------------------------------------------------------|:------------|:-----------------------------------------|
| [Get group detail](../api/reportroot-getyammergroupsactivitydetail.md)      | Stream      | Get details about Viva Engage groups activity by group. |
| [Get group counts](../api/reportroot-getyammergroupsactivitygroupcounts.md) | Stream      | Get the total number of groups that existed and how many included group conversation activity. |
| [Get activity counts](../api/reportroot-getyammergroupsactivitycounts.md)   | Stream      | Get the number of Viva Engage messages posted, read, and liked in groups. |

## Properties

None.

## Relationships

| Relationship               | Type                                                      | Description                                                        |
|:---------------------------|:----------------------------------------------------------|:-------------------------------------------------------------------|
| authenticationMethods      | [authenticationMethodsRoot](authenticationmethodsroot.md) | Container for navigation properties for Microsoft Entra authentication methods resources. |
| dailyPrintUsageByPrinter   | [printUsageByPrinter](printusagebyprinter.md) collection  | Retrieve a list of daily print usage summaries, grouped by printer. |
| dailyPrintUsageByUser      | [printUsageByUser](printusagebyuser.md) collection        | Retrieve a list of daily print usage summaries, grouped by user. |
| monthlyPrintUsageByPrinter | [printUsageByPrinter](printusagebyprinter.md) collection  | Retrieve a list of monthly print usage summaries, grouped by printer. |
| monthlyPrintUsageByUser    | [printUsageByUser](printusagebyuser.md) collection        | Retrieve a list of monthly print usage summaries, grouped by user. |
| partners                   | [partners](partners.md)                                   | Represents billing details for a Microsoft direct partner. |
| security                   | [securityReportsRoot](securityreportsroot.md)             | Represents an abstract type that contains resources for attack simulation and training reports. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.reportRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.reportRoot"
}
```
