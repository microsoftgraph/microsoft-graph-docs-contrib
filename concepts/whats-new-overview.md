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

### Backup storage

- [Restore sessions](/graph/api/resources/restoresessionbase) that are older than one year and in a terminal state are removed.
- [Restore artifacts](/graph/api/resources/restoreartifactbase) that are older than one year and in a terminal state are removed.

## April 2025: New and generally available

### Identity and access | Identity and sign-in

Use the following supported attribute events:

- Authentication event listeners
  - [onAttributeCollectionStartListener](/graph/api/resources/onattributecollectionstartlistener)
  - [onAttributeCollectionSubmitListener](/graph/api/resources/onattributecollectionsubmitlistener)
- Custom authentication extensions
  - [onAttributeCollectionStartCustomExtension](/graph/api/resources/onattributecollectionstartcustomextension)
  - [onAttributeCollectionSubmitCustomExtension](/graph/api/resources/onattributecollectionsubmitcustomextension)
- User flows in external tenants
  - [onAttributeCollectionStartCustomExtensionHandler](/graph/api/resources/onattributecollectionstartcustomextensionhandler)
  - [onAttributeCollectionStartHandler](/graph/api/resources/onattributecollectionstarthandler)
  - [onAttributeCollectionSubmitCustomExtensionHandler](/graph/api/resources/onattributecollectionsubmitcustomextensionhandler)
  - [onAttributeCollectionSubmitHandler](/graph/api/resources/onattributecollectionsubmithandler)

### Teamwork and communications | Calls and online meetings

- The **basicServiceSetIdentifier** property on [networkInfo](/graph/api/resources/callrecords-networkinfo) isn't available if the user disables precise location sharing in their operating system or Microsoft Teams app settings.
- Known issues related to application identities and missing participants are associated with [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2) and [participant](/graph/api/resources/callrecords-participant).
- Updated the throttling information for [virtualEvent](/graph/api/resources/virtualevent). You can now perform 750 `GET` requests per app across all tenants in a 30-second period, and 15 `Create`, `Update`, and `Delete` requests per app across all tenants in a 30-second period, instead of the 10,000 requests per app each month.

## April 2025: New in preview only

### Cross-device experiences

[Delete](/graph/api/windowssetting-delete?view=graph-rest-beta&preserve-view=true) all [windowsSetting](/graph/api/resources/windowssetting?view=graph-rest-beta&preserve-view=true) objects of a user.

### Device and app management | Cloud licensing

Updated the permissions for the [List usageRights for user](/graph/api/cloudlicensing-groupcloudlicensing-list-usagerights?view=graph-rest-beta&preserve-view=true) and [Get usageRight](/graph/api/cloudlicensing-usageright-get?view=graph-rest-beta&preserve-view=true) APIs.

### Files

Added the `forceInfectedDownload` as a supported prefer header to the [Get content](/graph/api/driveitem-get-content?view=graph-rest-beta&preserve-view=true) and [Get contentStream](/graph/api/driveitem-get-contentstream?view=graph-rest-beta&preserve-view=true) methods to enable the download of infected files when specifically requested.

### Teamwork and communications | Administration

[Get](/graph/api/teamsadministration-teamsuserconfiguration-get?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/teamsadministration-teamsadminroot-list-userconfigurations?view=graph-rest-beta&preserve-view=true) user configurations for users with accounts in the Teams context.

### Reports | Partner billing reports

[Export](/graph/api/partners-billing-unbilledreconciliation-export?view=graph-rest-beta&preserve-view=true) unbilled invoice reconciliation data.

### Identity and access | Identity and sign-in

Added [onAttributeCollectionStartListener](/graph/api/resources/onattributecollectionstartlistener?view=graph-rest-beta&preserve-view=true) and [onAttributeCollectionSubmitListener](/graph/api/resources/onattributecollectionsubmitlistener?view=graph-rest-beta&preserve-view=true) as supported [authenticationEventListener](/graph/api/resources/authenticationeventlistener?view=graph-rest-beta&preserve-view=true).

### Reports | Identity and access reports

Use the [serviceActivity: getMetricsForConditionalAccessBlockedSignIn](/graph/api/serviceactivity-getmetricsforconditionalaccessblockedsignin?view=graph-rest-beta&preserve-view=true) to get the number of user sign-in attempts that were blocked by a Conditional Access policy during a specific period.

### Reports | Microsoft 365 usage reports

Use the [getApiUsage](/graph/api/reportroot-getapiusage?view=graph-rest-beta&preserve-view=true) API to get the tenant-level daily API usage report that provides information about active Microsoft Graph API usage across specific service areas (Microsoft Exchange, Microsoft Teams Messaging, Microsoft Teams Calling, or Microsoft Teams Presence) or all supported service areas.

### Tasks and plans

Use the [plannerTask](/graph/api/resources/planner-overview?view=graph-rest-beta&preserve-view=true#container-type-planner-task) container type to create a new plan in the container of a Planner task.

### Teamwork and communications | Calls and online meetings

- The **basicServiceSetIdentifier** property on [networkInfo](/graph/api/resources/callrecords-networkinfo?view=graph-rest-beta&preserve-view=true) isn't available if the user disables precise location sharing in their operating system or Microsoft Teams app settings.
- Known issues related to application identities and missing participants are associated with [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2?view=graph-rest-beta&preserve-view=true) and [participant](/graph/api/resources/callrecords-participant?view=graph-rest-beta&preserve-view=true).
- Updated the throttling information for [virtualEvent](/graph/api/resources/virtualevent?view=graph-rest-beta&preserve-view=true). You can now perform 750 `GET` requests per app across all tenants in a 30-second period, and 15 `Create`, `Update`, and `Delete` requests per app across all tenants in a 30-second period, instead of the 10,000 requests per app each month.
- Use the **isInteractiveRosterEnabled** property on [incomingCallOptions](/graph/api/resources/incomingcalloptions?view=graph-rest-beta&preserve-view=true) and [outgoingCallOptions](/graph/api/resources/outgoingcalloptions?view=graph-rest-beta&preserve-view=true) to indicate whether delta roster filtering by participant interactivity is enabled.
Use the **videoOnDemandWebUrl** property on [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true), which provide the URL of the video on demand (VOD) for Microsoft Teams events that allows webinar and town hall organizers to quickly publish and share event recordings.

### Teamwork and communications | Messaging

Use the **iconId** property on the [teamwork: sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients?view=graph-rest-beta&preserve-view=true), [userTeamwork: sendActivityNotification](/graph/api/userteamwork-sendactivitynotification?view=graph-rest-beta&preserve-view=true), [chat: sendActivityNotification](/graph/api/chat-sendactivitynotification?view=graph-rest-beta&preserve-view=true), and [team: sendActivityNotification](/graph/api/team-sendactivitynotification?view=graph-rest-beta&preserve-view=true) to send activity notifications with customized icons.

### Device and app management | Cloud PC

Use the new **groupBy** parameter in the [retrieveCloudPcTroubleshootReports](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true) method to specify the columns that define how to group the data in the report.

## March 2025: New and generally available

### Teamwork and communications | Messaging

### Applications

Updated the Microsoft Entra built-in role required to [perform a new bulk upload](/graph/api/synchronization-synchronizationjob-post-bulkupload). Going forward, admin users can use the User Administrator role instead of the Global Administrator role to invoke this API.

### Device and app management | Cloud PC

Use the **autopatch** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy) to get or set specific settings for Windows Autopatch that enable its customers to experience it on Cloud PC.

### Files

[Use the app folder in OneDrive and SharePoint](/graph/onedrive-sharepoint-appfolder) for secure application settings and data storage with Microsoft Graph.

### Identity and access | Identity and sign-in

- Deprecated the following resources and their associated APIs that support the Microsoft Entra lifecycle announcements APIs. The APIs will stop returning data in May 2025. Use the [Microsoft Entra release notes RSS feed instead](/entra/fundamentals/whats-new).
  - [announcement](/graph/api/resources/announcement)
  - [changeItemBase](/graph/api/resources/changeitembase)
  - [roadmap](/graph/api/resources/roadmap)
- Use the **applicationFilter** property on [conditionalAccessApplications](/graph/api/resources/conditionalaccessapplications) to define the dynamic-application-syntax rule to include or exclude cloud applications.

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

Added support for the **md5** and **sha256Ac** file hash algorithms that are now displayed in the **fileDetails** property of the [fileEvidence](/graph/api/resources/security-fileevidence) resource.

## March 2025: New in preview only

### Applications

Updated the Microsoft Entra built-in role required to [perform a new bulk upload](/graph/api/synchronization-synchronizationjob-post-bulkupload?view=graph-rest-beta&preserve-view=true). Going forward, admin users can use the User Administrator role instead of the Global Administrator role to invoke this API.

### Device and app management | Cloud PC

- Use the **healthCheckStatus** property on [cloudPcSnapshot](/graph/api/resources/cloudpcsnapshot?view=graph-rest-beta&preserve-view=true) to indicate the health status of the Cloud PC snapshot.
- Use the **ignoreUnhealthySnapshots** property on [cloudPcBulkRestore](/graph/api/resources/cloudpcbulkrestore?view=graph-rest-beta&preserve-view=true) to specify whether to ignore snapshots of unhealthy Cloud PCs.
- Removed the `GET /deviceManagement/virtualEndpoint/snapshots/{cloudPcSnapshotId}` method from the [cloudPcSnapshot](/graph/api/resources/cloudpcsnapshot?view=graph-rest-beta&preserve-view=true) resource.
- Use the new members `australasia` and `europe` in **cloudPcRegionGroup** to indicate the geographic group to which a region belongs.
- Use the **reportName** parameter on the [cloudPcReports: retrieveCrossRegionDisasterRecoveryReport](/graph/api/cloudpcreports-retrievecrossregiondisasterrecoveryreport?view=graph-rest-beta&preserve-view=true) method to get the name of the Cloud PC disaster recovery report.
- Added the enabledDRType, dRHealthStatus, and backupCloudPcStatus as supported columns for the [cloudPcReports: retrieveCrossRegionDisasterRecoveryReport](/graph/api/cloudpcreports-retrievecrossregiondisasterrecoveryreport?view=graph-rest-beta&preserve-view=true) method and removed the isCrossRegionEnabled and crossRegionHealthStatus columns from the report.
- Perform a bulk disaster [recovery](/graph/api/resources/cloudpcbulkdisasterrecovery?view=graph-rest-beta&preserve-view=true) action to initiate the failover or failback process for a Cloud PC.

### Device and app management | Cloud PC

Use the **regionRestrictionDetail** property on [cloudPcSupportedRegion](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true) to get the restriction status of a Cloud PC supported region, including the CPU provisioning status, GPU provisioning status, and nested virtualization provisioning status. 

### Identity and access | Identity and sign-in
=======
### Files

Enabled [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) as a supported resource for the [create](/graph/api/opentypeextension-post-opentypeextension?view=graph-rest-beta&preserve-view=true), [get](/graph/api/opentypeextension-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/opentypeextension-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/opentypeextension-delete?view=graph-rest-beta&preserve-view=true) operations of the [openTypeExtension](/graph/api/resources/opentypeextension?view=graph-rest-beta&preserve-view=true) resource.
Create and manage [sharePointGroup](/graph/api/resources/sharepointgroup?view=graph-rest-beta&preserve-view=true) and its members in a SharePoint Embedded container or SharePoint site.

### Mail

- [Get](/graph/api/mailfolderoperation-get?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/mailfolder-list-operations?view=graph-rest-beta&preserve-view=true) long-running operations of a [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta&preserve-view=true).
- [Update](/graph/api/mailfolder-updateallmessagesreadstate?view=graph-rest-beta&preserve-view=true) the read state of all messages in a [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta&preserve-view=true).

### Reports | Identity and access reports 

Use the **linkableIdentifiers** property on [auditActivityInitiator](/graph/api/resources/auditactivityinitiator?view=graph-rest-beta&preserve-view=true) resource to get a set of linkable claims to link together all the authentication artifacts issued from a single interactive root authentication.

### Security

Added support for the **md5** and **sha256Ac** file hash algorithms that are now displayed in the **fileDetails** property of the [fileEvidence](/graph/api/resources/security-fileevidence?view=graph-rest-beta&preserve-view=true) resource.

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
 
