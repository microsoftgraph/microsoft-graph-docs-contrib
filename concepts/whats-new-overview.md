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

### Tasks and plans

You can now use the extended properties API to store or get custom data in the [todoTask](/graph/api/resources/todotask?view=graph-rest-beta&preserve-view=true) resource.

## May 2025: New and generally available

### Backup storage

- [Restore sessions](/graph/api/resources/restoresessionbase) and [restore artifacts](/graph/api/resources/restoreartifactbase) that are older than one year and in a terminal state are removed.
- Use the new restore bulk addition request API for more convenient, efficient, and scalable restore solutions. This API is designed to streamline the restore process by allowing direct submission of restoration resources in a bulk request. The following resources are supported:
  - [driveRestoreArtifactsBulkAdditionRequest](/graph/api/resources/driverestoreartifactsbulkadditionrequest)
  - [mailboxRestoreArtifactsBulkAdditionRequest](/graph/api/resources/mailboxrestoreartifactsbulkadditionrequest)
  - [siteRestoreArtifactsBulkAdditionRequest](/graph/api/resources/siterestoreartifactsbulkadditionrequest)

### Calendars

Use the **cancelledOccurrences** property and **exceptionOccurrences** navigation property on [event](/graph/api/resources/event) to get a list of canceled and exceptional occurrences for a series master.

### Change notifications

Added [video-on-demand publication for all sessions in a webinar](/graph/changenotifications-for-virtualevent) as a subscribable virtual event.

### Security

Added `microsoftThreatIntelligence` as a supported detection source for the **detectionSource** and **serviceSource** properties of the [alert](/graph/api/resources/security-alert) resource.

### Teamwork and communications | Calls and online meetings

[Get](/graph/api/copilotadminlimitedmode-get) or [set](/graph/api/copilotadminlimitedmode-update) whether users of Microsoft 365 Copilot in Teams meetings can receive responses to sentiment-related prompts.

## May 2025: New in preview only

### Backup storage

[Restore sessions](/graph/api/resources/restoresessionbase?view=graph-rest-beta&preserve-view=true) and [restore artifacts](/graph/api/resources/restoreartifactbase?view=graph-rest-beta&preserve-view=true) that are older than one year and in a terminal state are removed.

### Device and app management | Cloud PC

Added **resourceAvailabilityCheckMissingRegistrationForLocation** as a possible error type for the [cloudPcOnPremisesConnectionHealthCheck](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true).

### Education

- Use the [educationSpeakerProgressResource](/graph/api/resources/educationspeakerprogressresource?view=graph-rest-beta&preserve-view=true) to help students gain confidence and reduce anxiety with AI-powered real-time feedback on public speaking skills, such as pace, pitch, and filler words. Speaker Progress also saves educators time and creates more opportunities for independent practice during in-class presentations.
- Use the **languageTag** property on [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) and [educationModule](/graph/api/resources/educationModule?view=graph-rest-beta&preserve-view=true) to specify the language in which UI notifications for an assignment are displayed.
- Use the **grade** property on [educationAssignmentPointsGrade](/graph/api/resoures/educationassignmentpointsgrade?view=graph-rest-beta&preserve-view=true) to get the grade letter from the [grading scheme](/graph/api/resoures/educationgradingscheme?view=graph-rest-beta&preserve-view=true) that corresponds to the given number of points.
- Use the [educationSpeakerProgressResource](/graph/api/resources/educationspeakerprogressresource?view=graph-rest-beta&preserve-view=true) to help students gain confidence and reduce anxiety with AI-powered real-time feedback on public speaking skills, such as pace, pitch, and filler words. Speaker Progress also saves educators time and creates more opportunities for independent practice during in-class presentations.

### Files

- [Delete](/graph/api/recyclebinitem-delete?view=graph-rest-beta&preserve-view=true) recycle bin items permanently from the recycle bin of a file storage container. 
- [Restore](/graph/api/recyclebinitem-restore?view=graph-rest-beta&preserve-view=true) recycle bin items from the recycle bin of a file storage container. 

### People and workplace intelligence | People admin settings

Use the new [profileSource](/graph/api/resources/profilesource?view=graph-rest-beta&preserve-view=true) APIs to enable administrators to customize the display information of a profile source seen by users across an organization in Microsoft 365 experiences.

### Identity and access | Multicloud permissions management

Effective April 1, 2025, Microsoft Entra Permissions Management APIs are deprecated. On October 1, 2025, we'll retire and discontinue support of the APIs. For more information, see [Important change announcement: Microsoft Entra Permissions Management end of sale and retirement](https://aka.ms/MEPMretire).

### People and workplace intelligence | People admin settings

Use the new [profilePropertySetting](/graph/api/resources/profilepropertysetting?view=graph-rest-beta&preserve-view=true) APIs to configure profile source precedence, ensuring accurate display of profile data across Microsoft 365 experiences based on configured priorities.

### Security

- Added the `aiModelProvider`, `mcpServer`, and `clientAiApp` members as supported values of the **category** property of the [discoveredCloudAppDetail](/graph/api/resources/security-discoveredcloudappdetail?view=graph-rest-beta&preserve-view=true) and [endpointDiscoveredCloudAppDetail](/graph/api/resources/security-endpointdiscoveredcloudappdetail?view=graph-rest-beta&preserve-view=true) resources.
- Added `microsoftThreatIntelligence` as a supported detection source for the **detectionSource** and **serviceSource** properties of the [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) resource.

### Teamwork and communications

[Add custom activity icons in activity feed notifications](/graph/teams-send-activityfeednotifications).

### Teamwork and communications | Calls and online meetings

Use the new Teams meeting AI insights APIs to get AI-generated insights for a meeting after it's over. For more information, see [callAiInsight](/graph/api/resources/callaiinsight?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging

- Added support for the `$filter` query parameter by Microsoft Entra user ID when you list channel members using the [List allMembers](/graph/api/channel-list-allmembers?view=graph-rest-beta&preserve-view=true) API.
- [Determine](/graph/api/teamwork-determineifinteractionisallowed?view=graph-rest-beta&preserve-view=true) if a specified Microsoft Teams interaction is allowed between the signed-in user and specified users.

### Device and app management | Cloud PC

Deprecated the [getCloudPcRecommendationReports](/graph/api/cloudpcreports-getcloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true) method of the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource in favor of the [retrieveCloudPcRecommendationReports](/graph/api/cloudpcreports-retrievecloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true) method.

### Teamwork and communications | Shift management

- [Confirm](/graph/api/timecard-confirmforuser?view=graph-rest-beta&preserve-view=true) a specific [timeCard](/graph/api/resources/timecard?view=graph-rest-beta&preserve-view=true) for a user.
- [Approve](/graph/api/schedulechangerequest-approveforuser?view=graph-rest-beta&preserve-view=true) or [decline](/graph/api/schedulechangerequest-declineforuser?view=graph-rest-beta&preserve-view=true) an [offerShiftRequest](/graph/api/resources/offershiftrequest?view=graph-rest-beta&preserve-view=true), [openShiftChangeRequest](/graph/api//resources/openshiftchangerequest?view=graph-rest-beta&preserve-view=true), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest?view=graph-rest-beta&preserve-view=true), or [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta&preserve-view=true) object for a user using application permissions.

## April 2025: New and generally available

### Education

[Get submissions modified in the last seven days](/graph/api/educationclass-getrecentlymodifiedsubmissions), which represent students' work for assignments.

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

- Use the **externalRegistrationInformation** and **registrationId** properties on [attendanceRecord](/graph/api/resources/attendancerecord) to get external information for an event registration and the unique identifier of an event registration that is available to all participants registered for the webinar.
- Use the **externalEventInformation** on [meetingAttendanceReport](/graph/api/resources/meetingattendancereport) to get the external information of a virtual event.
- The **basicServiceSetIdentifier** property on [networkInfo](/graph/api/resources/callrecords-networkinfo) isn't available if the user disables precise location sharing in their operating system or Microsoft Teams app settings.
- Known issues related to application identities and missing participants are associated with [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2) and [participant](/graph/api/resources/callrecords-participant).
- Updated the throttling information for [virtualEvent](/graph/api/resources/virtualevent). You can now perform 750 `GET` requests per app across all tenants in a 30-second period, and 15 `Create`, `Update`, and `Delete` requests per app across all tenants in a 30-second period, instead of the 10,000 requests per app each month.

## April 2025: New in preview only

### Cross-device experiences

[Delete](/graph/api/windowssetting-delete?view=graph-rest-beta&preserve-view=true) all [windowsSetting](/graph/api/resources/windowssetting?view=graph-rest-beta&preserve-view=true) objects of a user.

### Device and app management | Cloud licensing

Updated the permissions for the [List usageRights for user](/graph/api/cloudlicensing-groupcloudlicensing-list-usagerights?view=graph-rest-beta&preserve-view=true) and [Get usageRight](/graph/api/cloudlicensing-usageright-get?view=graph-rest-beta&preserve-view=true) APIs.

### Device and app management | Cloud PC

Use the new **groupBy** parameter in the [retrieveCloudPcTroubleshootReports](/graph/api/cloudpcreports-retrievecloudpctroubleshootreports?view=graph-rest-beta&preserve-view=true) method to specify the columns that define how to group the data in the report.

### Files

Added the `forceInfectedDownload` as a supported prefer header to the [Get content](/graph/api/driveitem-get-content?view=graph-rest-beta&preserve-view=true) and [Get contentStream](/graph/api/driveitem-get-contentstream?view=graph-rest-beta&preserve-view=true) methods to enable the download of infected files when specifically requested.

### Identity and access | Identity and sign-in

Added [onAttributeCollectionStartListener](/graph/api/resources/onattributecollectionstartlistener?view=graph-rest-beta&preserve-view=true) and [onAttributeCollectionSubmitListener](/graph/api/resources/onattributecollectionsubmitlistener?view=graph-rest-beta&preserve-view=true) as supported [authenticationEventListener](/graph/api/resources/authenticationeventlistener?view=graph-rest-beta&preserve-view=true).

### Reports | Identity and access reports

Use the [serviceActivity: getMetricsForConditionalAccessBlockedSignIn](/graph/api/serviceactivity-getmetricsforconditionalaccessblockedsignin?view=graph-rest-beta&preserve-view=true) to get the number of user sign-in attempts that were blocked by a Conditional Access policy during a specific period.

### Reports | Microsoft 365 usage reports

Use the [getApiUsage](/graph/api/reportroot-getapiusage?view=graph-rest-beta&preserve-view=true) API to get the tenant-level daily API usage report that provides information about active Microsoft Graph API usage across specific service areas (Microsoft Exchange, Microsoft Teams Messaging, Microsoft Teams Calling, or Microsoft Teams Presence) or all supported service areas.

### Reports | Partner billing reports

[Export](/graph/api/partners-billing-unbilledreconciliation-export?view=graph-rest-beta&preserve-view=true) unbilled invoice reconciliation data.

### Security | Data security and compliance

The data security and governance APIs allow developers to seamlessly incorporate the protection provided by Purview, essential for retrieval-augmented generation (RAG) applications, line of business (LOB) applications, and systems handling sensitive data. These APIs provide programmatic access to the policy evaluation engine of Purview, ensuring consistent data security and governance enforcement across various applications. For more information, see [dataSecurityAndGovernance](/graph/api/resources/userdatasecurityandgovernance).

### Tasks and plans

Use the [plannerTask](/graph/api/resources/planner-overview?view=graph-rest-beta&preserve-view=true#container-type-planner-task) container type to create a new plan in the container of a Planner task.

### Teamwork and communications | Administration

[Get](/graph/api/teamsadministration-teamsuserconfiguration-get?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/teamsadministration-teamsadminroot-list-userconfigurations?view=graph-rest-beta&preserve-view=true) user configurations for users with accounts in the Teams context.

### Teamwork and communications | Calls and online meetings

- The **basicServiceSetIdentifier** property on [networkInfo](/graph/api/resources/callrecords-networkinfo?view=graph-rest-beta&preserve-view=true) isn't available if the user disables precise location sharing in their operating system or Microsoft Teams app settings.
- Known issues related to application identities and missing participants are associated with [List participants_v2](/graph/api/callrecords-callrecord-list-participants_v2?view=graph-rest-beta&preserve-view=true) and [participant](/graph/api/resources/callrecords-participant?view=graph-rest-beta&preserve-view=true).
- Updated the throttling information for [virtualEvent](/graph/api/resources/virtualevent?view=graph-rest-beta&preserve-view=true). You can now perform 750 `GET` requests per app across all tenants in a 30-second period, and 15 `Create`, `Update`, and `Delete` requests per app across all tenants in a 30-second period, instead of the 10,000 requests per app each month.
- Get [all attendance reports](/graph/api/meetingattendancereport-list?view=graph-rest-beta&preserve-view=true#example-3-list-attendance-reports-for-a-town-hall-session) or [an attendance report by ID](/graph/api/meetingattendancereport-get?view=graph-rest-beta&preserve-view=true#example-4-get-the-attendance-report-for-a-town-hall-session-by-id) for a town hall session.
- Get [all attendance records](/graph/api/attendancerecord-list?view=graph-rest-beta&preserve-view=true#example-4-list-attendance-records-for-the-attendance-report-of-a-town-hall-session) from the attendance report for a town hall session.
- Use the **isInteractiveRosterEnabled** property on [incomingCallOptions](/graph/api/resources/incomingcalloptions?view=graph-rest-beta&preserve-view=true) and [outgoingCallOptions](/graph/api/resources/outgoingcalloptions?view=graph-rest-beta&preserve-view=true) to indicate whether delta roster filtering by participant interactivity is enabled.
Use the **videoOnDemandWebUrl** property on [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true), which provide the URL of the video on demand (VOD) for Microsoft Teams events that allows webinar and town hall organizers to quickly publish and share event recordings.

### Teamwork and communications | Messaging

Use the **iconId** property on the [teamwork: sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients?view=graph-rest-beta&preserve-view=true), [userTeamwork: sendActivityNotification](/graph/api/userteamwork-sendactivitynotification?view=graph-rest-beta&preserve-view=true), [chat: sendActivityNotification](/graph/api/chat-sendactivitynotification?view=graph-rest-beta&preserve-view=true), and [team: sendActivityNotification](/graph/api/team-sendactivitynotification?view=graph-rest-beta&preserve-view=true) to send activity notifications with customized icons.

### Security

- Added the **customDetails** property to the security alert resource, a dictionary with user-defined key-value pairs. It can be used with the [Get](/graph/api/resources/security-alert) and [Update](/graph/api/resources/security-alert-update) methods.

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
