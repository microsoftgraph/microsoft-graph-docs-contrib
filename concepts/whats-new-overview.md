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

## May 2025: New and generally available

### Teamwork and communications | Calls and online meetings

[Get](/graph/api/copilotadminlimitedmode-get) or [set](/graph/api/copilotadminlimitedmode-update) whether users of Microsoft 365 Copilot in Teams meetings can receive responses to sentiment-related prompts.

## May 2025: New in preview only

### Identity and access | Multicloud permissions management

Effective April 1, 2025, Microsoft Entra Permissions Management APIs are deprecated. On October 1, 2025, we'll retire and discontinue support of the APIs. For more information, see [Important change announcement: Microsoft Entra Permissions Management end of sale and retirement](https://aka.ms/MEPMretire).

### Education

Use the [educationSpeakerProgressResource](/graph/api/resources/educationspeakerprogressresource?view=graph-rest-beta&preserve-view=true) to help students gain confidence and reduce anxiety with AI-powered real-time feedback on public speaking skills, such as pace, pitch, and filler words. Speaker Progress also saves educators time and creates more opportunities for independent practice during in-class presentations.

### Files

- [Delete](/graph/api/recyclebinitem-delete?view=graph-rest-beta&preserve-view=true) recycle bin items permanently from the recycle bin of a file storage container. 
- [Restore](/graph/api/recyclebinitem-restore?view=graph-rest-beta&preserve-view=true) recycle bin items from the recycle bin of a file storage container. 

### Teamwork and communications | Calls and online meetings

Use the new Teams meeting AI insights APIs to get AI-generated insights for a meeting after it's over. For more information, see [callAiInsight](/graph/api/resources/callaiinsight?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging

Added support for the `$filter` query parameter by Microsoft Entra user ID when you list channel members using the [List allMembers](/graph/api/channel-list-allmembers?view=graph-rest-beta&preserve-view=true) API.

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

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
 
