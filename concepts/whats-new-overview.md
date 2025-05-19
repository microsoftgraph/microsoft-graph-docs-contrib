---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 01/01/2025
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## April 2025: New in preview only

### Device and app management | Cloud licensing

Updated the permissions for the [List usageRights for user](/graph/api/cloudlicensing-groupcloudlicensing-list-usagerights?view=graph-rest-beta&preserve-view=true) and [Get usageRight](/graph/api/cloudlicensing-usageright-get?view=graph-rest-beta&preserve-view=true) APIs.

## March 2025: New and generally available

### Applications

Updated the Microsoft Entra built-in role required to [perform a new bulk upload](/graph/api/synchronization-synchronizationjob-post-bulkupload). Going forward, admin users can use the User Administrator role instead of the Global Administrator role to invoke this API.

### Device and app management | Cloud PC

Use the **autopatch** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy) to get or set specific settings for Windows Autopatch that enable its customers to experience it on Cloud PC.

### Files

[Use the app folder in OneDrive and SharePoint](/graph/onedrive-sharepoint-appfolder) for secure application settings and data storage with Microsoft Graph.

### Identity and access | Identity and sign-in

Deprecated the following resources and their associated APIs that support the Microsoft Entra lifecycle announcements APIs.

- [changeItemBase](/graph/api/resources/changeItemBase) resource type
- [announcement](/graph/api/resources/changeItemBase) resource type
- [roadmap](/graph/api/resources/changeItemBase) resource type

The APIs will stop returning data in May 2025. Use the [Microsoft Entra release notes RSS feed instead](/entra/fundamentals/whats-new).

### Microsoft Graph connector

The management of Microsoft Graph connectors in the Microsoft Teams admin center will be deprecated on April 14, 2025. Going forward, you can manage Microsoft Graph connectors from the **Search & intelligence** section in the [Microsoft 365 admin center](/microsoftsearch/manage-connector).

### Teamwork and communications | Calls and online meetings

Updated the throttling thresholds for the [callRecord](/graph/api/resources/callrecords-callrecord), [participant](/graph/api/resources/callrecords-participant), and [session](/graph/api/resources/callrecords-session) resources. The limit per call record changed from 10 requests to 40 requests per 20 seconds for all pages, and the limit for list call records changed from 15 requests to 40 requests per 20 seconds for all pages.

### Teamwork and communications | Messaging

- Use the **firstChannelName** property on a [team](/graph/api/resources/team) to set the name of the first channel created in a team.
- Enabled Azure China 21Vianet support for the following methods:
  - [userTeamwork: sendActivityNotification](/graph/api/userteamwork-sendactivitynotification)
  - [teamwork: sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients)
  - [team: sendActivityNotification](/graph/api/team-sendactivitynotification)
  - [chat: sendActivityNotification](/graph/api/chat-sendactivitynotification)

### Security

Added support for the `md5` and `sha256Ac` file hash algorithms that are now displayed in the **fileDetails** property of the [fileEvidence](/graph/api/resources/security-fileevidence) resource.

## March 2025: New in preview only

### Applications

Updated the Microsoft Entra built-in role required to [perform a new bulk upload](/graph/api/synchronization-synchronizationjob-post-bulkupload?view=graph-rest-beta&preserve-view=true). Going forward, admin users can use the User Administrator role instead of the Global Administrator role to invoke this API.

### Device and app management | Cloud PC

- Removed the `GET /deviceManagement/virtualEndpoint/snapshots/{cloudPcSnapshotId}` method from the [cloudPcSnapshot](/graph/api/resources/cloudpcsnapshot?view=graph-rest-beta&preserve-view=true) resource.
- Use the new members `australasia` and `europe` in **cloudPcRegionGroup** to indicate the geographic group to which a region belongs.
- Use the **reportName** parameter on the [cloudPcReports: retrieveCrossRegionDisasterRecoveryReport](/graph/api/cloudpcreports-retrievecrossregiondisasterrecoveryreport?view=graph-rest-beta&preserve-view=true) method to get the name of the Cloud PC disaster recovery report.
- Added the enabledDRType, dRHealthStatus, and backupCloudPcStatus as supported columns for the [cloudPcReports: retrieveCrossRegionDisasterRecoveryReport](/graph/api/cloudpcreports-retrievecrossregiondisasterrecoveryreport?view=graph-rest-beta&preserve-view=true) method and removed the isCrossRegionEnabled and crossRegionHealthStatus columns from the report.

### Files

Enabled [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) as a supported resource for the [create](/graph/api/opentypeextension-post-opentypeextension?view=graph-rest-beta&preserve-view=true), [get](/graph/api/opentypeextension-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/opentypeextension-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/opentypeextension-delete?view=graph-rest-beta&preserve-view=true) operations of the [openTypeExtension](/graph/api/resources/opentypeextension?view=graph-rest-beta&preserve-view=true) resource.
Create and manage [sharePointGroup](/graph/api/resources/sharepointgroup?view=graph-rest-beta&preserve-view=true) and its members in a SharePoint Embedded container or SharePoint site.

### Mail

- [Get](/graph/api/mailfolderoperation-get?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/mailfolder-list-operations?view=graph-rest-beta&preserve-view=true) long-running operations of a [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta&preserve-view=true).
- [Update](/graph/api/mailfolder-updateallmessagesreadstate?view=graph-rest-beta&preserve-view=true) the read state of all messages in a [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta&preserve-view=true).

### Tasks and plans

Use the **publicationName** property on [plannerTeamsPublicationInfo](/graph/api/resources/plannerteamspublicationinfo?view=graph-rest-beta&preserve-view=true) to get the name of a published task list.

### Teamwork and communications | Calls and online meetings

- Use the **isEndToEndEncryptionEnabled** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to indicate whether end-to-end encryption (E2EE) is enabled for a meeting or virtual event session.
- Use the call delegation APIs in Microsoft Graph to query and manage delegates and delegators for a user. A delegator grants a delegate the ability to perform actions like making calls or managing settings on their behalf, and the delegate undertakes these tasks. For more information, see [Working with the call delegation APIs in Microsoft Graph (preview)](/graph/api/resources/calldelegation-api-overview?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging

- [Reply with quote](/graph/api/chatmessage-replywithquote?view=graph-rest-beta&preserve-view=true) to a single chat message or multiple chat messages in a chat.
- [Forward](/graph/api/chatmessage-forwardtochat?view=graph-rest-beta&preserve-view=true) a chat message, a channel message, or a channel message reply to a chat.
- Enabled Azure China 21Vianet support for the following methods:
  - [userTeamwork: sendActivityNotification](/graph/api/userteamwork-sendactivitynotification?view=graph-rest-beta&preserve-view=true)
  - [teamwork: sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients?view=graph-rest-beta&preserve-view=true)
  - [team: sendActivityNotification](/graph/api/team-sendactivitynotification?view=graph-rest-beta&preserve-view=true)
  - [chat: sendActivityNotification](/graph/api/chat-sendactivitynotification?view=graph-rest-beta&preserve-view=true)
- Use the `<codeblock><code></code></codeblock>` tag on the **content** property of the [itemBody](/graph/api/resources/itembody?view=graph-rest-beta&preserve-view=true) resource to represent a code block in the message body in a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true)

### Teamwork and communications | Calls and online meetings

Use the **allowCopyingAndSharingMeetingContent** on the [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to indicate whether copying and sharing meeting content is enabled for the meeting.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
 
