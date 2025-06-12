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

## June 2025: New in preview only

### Teamwork and communications | Apps

Use the **customAppSettings** property on [teamsAppSettings](/graph/api/resources/teamsappsettings?view=graph-rest-beta&preserve-view=true) to get or set tenant-wide custom app settings for all Microsoft Teams apps.

## March 2025: New and generally available

### Applications

Updated the Microsoft Entra built-in role required to [perform a new bulk upload](/graph/api/synchronization-synchronizationjob-post-bulkupload). Going forward, admin users can use the User Administrator role instead of the Global Administrator role to invoke this API.

### Device and app management | Cloud PC

Use the **autopatch** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy) to get or set specific settings for Windows Autopatch that enable its customers to experience it on Cloud PC.

### Files

[Use the app folder in OneDrive and SharePoint](/graph/onedrive-sharepoint-appfolder) for secure application settings and data storage with Microsoft Graph.

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

## March 2025: New in preview only

### Applications

Updated the Microsoft Entra built-in role required to [perform a new bulk upload](/graph/api/synchronization-synchronizationjob-post-bulkupload?view=graph-rest-beta&preserve-view=true). Going forward, admin users can use the User Administrator role instead of the Global Administrator role to invoke this API.

### Device and app management | Cloud PC

- Removed the `GET /deviceManagement/virtualEndpoint/snapshots/{cloudPcSnapshotId}` method from the [cloudPcSnapshot](/graph/api/resources/cloudpcsnapshot?view=graph-rest-beta&preserve-view=true) resource.
- Use the new members `australasia` and `europe` in **cloudPcRegionGroup** to indicate the geographic group to which a region belongs.
- Use the **reportName** parameter on the [cloudPcReports: retrieveCrossRegionDisasterRecoveryReport](/graph/api/cloudpcreports-retrievecrossregiondisasterrecoveryreport?view=graph-rest-beta&preserve-view=true) method to get the name of the Cloud PC disaster recovery report.
- Added the enabledDRType, dRHealthStatus, and backupCloudPcStatus as supported columns for the [cloudPcReports: retrieveCrossRegionDisasterRecoveryReport](/graph/api/cloudpcreports-retrievecrossregiondisasterrecoveryreport?view=graph-rest-beta&preserve-view=true) method and removed the isCrossRegionEnabled and crossRegionHealthStatus columns from the report.

### Files

Create and manage [sharePointGroup](/graph/api/resources/sharepointgroup?view=graph-rest-beta&preserve-view=true) and its members in a SharePoint Embedded container or SharePoint site.

### Teamwork and communications | Calls and online meetings

Use the **isEndToEndEncryptionEnabled** property on [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) and [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) to indicate whether end-to-end encryption (E2EE) is enabled for a meeting or virtual event session.

### Teamwork and communications | Messaging

- [Reply with quote](/graph/api/chatmessage-replywithquote?view=graph-rest-beta&preserve-view=true) to a single chat message or multiple chat messages in a chat.
- [Forward](/graph/api/chatmessage-forwardtochat?view=graph-rest-beta&preserve-view=true) a chat message, a channel message, or a channel message reply to a chat.
- Enabled Azure China 21Vianet support for the following methods:
  - [userTeamwork: sendActivityNotification](/graph/api/userteamwork-sendactivitynotification?view=graph-rest-beta&preserve-view=true)
  - [teamwork: sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients?view=graph-rest-beta&preserve-view=true)
  - [team: sendActivityNotification](/graph/api/team-sendactivitynotification?view=graph-rest-beta&preserve-view=true)
  - [chat: sendActivityNotification](/graph/api/chat-sendactivitynotification?view=graph-rest-beta&preserve-view=true)
- Use the `<codeblock><code></code></codeblock>` tag on the **content** property of the [itemBody](/graph/api/resources/itembody?view=graph-rest-beta&preserve-view=true) resource to represent a code block in the message body in a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true)

## February 2025: New and generally available 

### Device and app management | Cloud printing

Use the **printerDiscoverySettings** property on [printSettings](/graph/api/resources/printsettings) to specify settings that affect printer discovery when using Universal Print.

### Security

Added [teamsMessageEvidence](/graph/api/resources/security-teamsmessageevidence) as a supported [alert evidence](/graph/api/resources/security-alertevidence).

### Security | eDiscovery

- Enabled **contentQuery** as a supported parameter for the [update](/graph/api/security-ediscoveryholdpolicy-update) operation of the [ediscoveryHoldPolicy](/graph/api/resources/security-ediscoveryholdpolicy) resource.
- List and delete a [userSource](/graph/api/resources/security-usersource) or [siteSource](/graph/api/resources/security-sitesource) object.
- [Delete](/graph/api/security-unifiedgroupsource-delete) a [unifiedGroupSource](/graph/api/resources/security-unifiedgroupsource).

### Sites and lists

Enabled the `$filter` query parameter for the [list](/graph/api/listitem-list) operation of the [listItem](/graph/api/resources/listitem) resource. For more information, see [Get filtered SharePoint list items with specific fields](/graph/api/listitem-list#example-2-get-filtered-list-items-with-specific-fields).

### Teamwork and communications | Calls and online meetings

- [Fetch the recording of a Teams live event](/graph/api/onlinemeeting-get#example-6-fetch-the-recording-of-a-teams-live-event-deprecated).
- Enabled the **allowRecording**, **allowTranscription**, **anonymizeIdentityForRoles**, **broadcastSettings**, and **watermarkProtection** as supported properties in the [update](/graph/api/onlinemeeting-update) operation of the [onlineMeeting](/graph/api/resources/onlinemeeting).
- Updated the latency information for [callRecord](/graph/api/resources/callrecords-callrecord). The average latency was changed from 15 to 30 minutes, and the maximum latency was changed from 60 to 150 minutes. For more information, see [subscription](/graph/api/resources/subscription).

### Teamwork and communications | Messaging

- [Get](/graph/api/channel-list-allmembers) all members from a channel, including direct and indirect members of a shared channel.
- [Create](/graph/api/chat-post#example-3-create-a-one-on-one-chat-with-installed-apps) a one-on-one chat with installed apps.
- [Create](/graph/api/chat-post#example-4-create-a-one-on-one-chat-with-rsc-granted-apps) a one-on-one chat with RSC-granted apps.
- [Get](/graph/api/channel-list-allmembers) all members from a channel, including direct and indirect members of a shared channel.

## February 2025: New in preview only 

### Backup storage

- Use the **protectionSources** property on [driveProtectionUnit](/graph/api/resources/driveprotectionunit?view=graph-rest-beta&preserve-view=true), [mailboxProtectionUnit](/graph/api/resources/mailboxprotectionunit?view=graph-rest-beta&preserve-view=true), and [siteProtectionUnit](/graph/api/resources/siteprotectionunit?view=graph-rest-beta&preserve-view=true) to get the sources by which a protection unit is currently protected.
- [Update](/graph/api/protectionrulebase-update?view=graph-rest-beta&preserve-view=true) a [driveProtectionRule](/graph/api/resources/driveprotectionrule?view=graph-rest-beta&preserve-view=true) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule?view=graph-rest-beta&preserve-view=true).
- [Delete and unprotect](/graph/api/protectionrulebase-deleteandunprotect?view=graph-rest-beta&preserve-view=true) all the artifacts protected by a dynamic rule in a [driveProtectionRule](/graph/api/resources/driveprotectionrule?view=graph-rest-beta&preserve-view=true) or a [mailboxProtectionRule](/graph/api/resources/mailboxprotectionrule?view=graph-rest-beta&preserve-view=true).
- Enabled the **directoryObjectIds** and **drives** properties as supported properties when you use the [Create driveRestoreArtifactsBulkAdditionRequests](/graph/api/onedriveforbusinessrestoresession-post-driverestoreartifactsbulkadditionrequests) method.
- Enabled the **directoryObjectIds** and **mailboxes** properties as supported properties when you use the [Create mailboxRestoreArtifactsBulkAdditionRequest](/graph/api/exchangerestoresession-post-mailboxrestoreartifactsbulkadditionrequests) method.
- Enabled the **siteIds** and **siteWebUrls** properties as supported properties when you use the [Create siteRestoreArtifactsBulkAdditionRequests](/graph/api/sharepointrestoresession-post-siterestoreartifactsbulkadditionrequests) method.

### Security | eDiscovery

- Added the **itemsToInclude**, **cloudAttachmentVersion**, **documentVersion**, **additionalDataOptions**, and **statisticsOptions** as supported properties and parameters across various resources and actions of the eDiscovery API.
- Enabled **contentQuery** as a supported parameter for the [update](/graph/api/security-ediscoveryholdpolicy-update?view=graph-rest-beta&preserve-view=true) operation of the [ediscoveryHoldPolicy](/graph/api/resources/security-ediscoveryholdpolicy?view=graph-rest-beta&preserve-view=true) resource.
- List and delete a [userSource](/graph/api/resources/security-usersource?view=graph-rest-beta&preserve-view=true) or [siteSource](/graph/api/resources/security-sitesource?view=graph-rest-beta&preserve-view=true) object.
- [Delete](/graph/api/security-unifiedgroupsource-delete) a [unifiedGroupSource](/graph/api/resources/security-unifiedgroupsource?view=graph-rest-beta&preserve-view=true).

### Device and app management | Cloud PC

- [Get the weekly regional aggregated report of inaccessible Cloud PC trends](/graph/api/cloudpcreports-getinaccessiblecloudpcreports?view=graph-rest-beta&preserve-view=true#example-2-get-the-weekly-regional-aggregated-report-of-inaccessible-cloud-pc-trends).
- [Get](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true) troubleshooting reports for Cloud PCs.

### Identity and access | Identity and sign-in

Replaced the following API operations for managing custom authentication extensions:

|Old endpoint | Recommended endpoint  |
|:--- |:---|
|`GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionStartListener/handler/microsoft.graph.onAttributeCollectionStartCustomExtensionHandler/customExtension` <br/><br/>`GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionSubmitListener/handler/microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler/customExtension` <br/></br> `GET /identity/authenticationEventListeners/{listenerId}/microsoft.graph.OnEmailOtpSendListener/handler/microsoft.graph.OnOtpSendCustomExtensionHandler/customExtension`|[GET /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}](/graph/api/customauthenticationextension-get?view=graph-rest-beta&preserve-view=true)|
|`PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionStartListener/handler/microsoft.graph.onAttributeCollectionStartCustomExtensionHandler/customExtension/$ref` <br/><br/> `PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onAttributeCollectionSubmitListener/handler/microsoft.graph.onAttributeCollectionSubmitCustomExtensionHandler/customExtension/$ref` <br/><br/> `PUT /identity/authenticationEventListeners/{listenerId}/microsoft.graph.onEmailOtpSendListener/handler/microsoft.graph.onOtpSendCustomExtensionHandler/customExtension/$ref`|[PATCH /identity/customAuthenticationExtensions/{customAuthenticationExtensionId}](/graph/api/customauthenticationextension-update?view=graph-rest-beta&preserve-view=true)|

### Security

Added [teamsMessageEvidence](/graph/api/resources/security-teamsmessageevidence?view=graph-rest-beta&preserve-view=true) as a supported [alert evidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true).

### Sites and lists

Enabled the application permission `Sites.Archive.All` for the [site: archive](/graph/api/site-archive?view=graph-rest-beta&preserve-view=true) and [site: unarchive](/graph/api/site-unarchive?view=graph-rest-beta&preserve-view=true) methods.
Enabled the `$filter` query parameter for the [list](/graph/api/listitem-list?view=graph-rest-beta&preserve-view=true) operation of the [listItem](/graph/api/resources/listitem?view=graph-rest-beta&preserve-view=true) resource. For more information, see [Get filtered SharePoint list items with specific fields](/graph/api/listitem-list?view=graph-rest-beta&preserve-view=true#example-2-get-filtered-list-items-with-specific-fields).

### Tasks and plans

- [List Planner plans](/graph/api/teamschannelplanner-list-plans?view=graph-rest-beta&preserve-view=true) owned by a shared channel in Teams.
- Updated the request URL of the [List businessScenarioTasks](/graph/api/businessscenarioplanner-list-tasks?view=graph-rest-beta&preserve-view=true) method to require the `$filter` query parameter to scope the request to an **externalObjectId**, **externalContextId**, or a **groupId**.

### Teamwork and communications | Calls and online meetings

- Enabled the **allowRecording**, **allowTranscription**, **anonymizeIdentityForRoles**, **broadcastSettings**, and **watermarkProtection** as supported properties in the [update](/graph/api/onlinemeeting-update?view=graph-rest-beta&preserve-view=true) operation of the [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- Updated the latency information for [callRecord](/graph/api/resources/callrecords-callrecord?view=graph-rest-beta&preserve-view=true). The average latency was changed from 15 to 30 minutes, and the maximum latency was changed from 60 to 150 minutes. For more information, see [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging

- Introduced the following more granular delegated and application permissions for retrieving all members of a channel:
  - Use the `ChannelMember.Read.All` delegated permission instead of the `Group.Read.All` delegated permission.
  - Use the `ChannelMember.Read.Group` and `ChannelMember.ReadWrite.Group` application permissions for resource-specific consent.
- [Create](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true#example-4-create-a-one-on-one-chat-with-rsc-granted-apps) a one-on-one chat with RSC-granted apps.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
 
