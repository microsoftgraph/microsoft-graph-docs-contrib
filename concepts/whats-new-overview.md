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

## June 2025: New and generally available

### Device and app management | Cloud PC

New rate limits apply to Cloud PC APIs. The [List Cloud PCs](/graph/api/virtualendpoint-list-cloudpcs) API is now limited to 180 requests per minute per tenant and 162 requests per minute per app or user. The [Get Cloud PC](/graph/api/cloudpc-get) API is limited to 540 requests per minute per tenant and 486 requests per minute per app or user. For more information, see [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#windows-365-service-limits).

### Identity and access | Directory management

- Use the **isManagementRestricted** property on [device](/graph/api/resources/device), [group](/graph/api/resources/group), and [user](/graph/api/resources/user) resources to to indicate  whether a device, group, or user is a member of a restricted management administrative unit.
- Use the **isMemberManagementRestricted** property on [administrativeUnit](/graph/api/resources/administrativeunit) to indicate whether members of an administrative unit should be treated as sensitive.

### Security | eDiscovery

- Use the **description** property on [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset) to get or set the eDiscovery review set description.
- [Update](/graph/api/security-ediscoveryreviewset-update) the **displayName** and **description** of an [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset).

### Teamwork and communications | Calls and online meetings

Use the **videoOnDemandWebUrl** on [virtualEventSession](/graph/api/resources/virtualeventsession) to get the [URL of the video on demand (VOD)](/microsoftteams/manage-vod-publishing) for Microsoft Teams events that allows webinar and town hall organizers to quickly publish and share event recordings.

### Teamwork and communications | Messaging

Updated the throttling information for [getAllEnterpriseInteractions](/graph/api/aiinteractionhistory-getallenterpriseinteractions). The limit per app per tenant changed from 200 requests per second to 30 requests per second. The limit per app across all tenants increased from 1,000 requests per second to 1,500 requests per second.

### Teamwork and communications | Shift management

Deprecated the `MS-APP-ACTS-AS` request header for all operations of the resources: [offerShiftRequest](/graph/api/resources/offershiftrequest), [openShift](/graph/api/resources/openshift), [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest), [schedule](/graph/api/resources/schedule), [schedulingGroup](/graph/api/resources/schedulinggroup), [shift](/graph/api/resources/shift), [shiftPreferences](/graph/api/resources/shiftpreferences), [shiftsRoleDefinition](/graph/api/resources/shiftsroledefinition), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest), [timeCard](/graph/api/resources/timecard), [timeOff](/graph/api/resources/timeoff), [timeOffReason](/graph/api/resources/timeoffreason), [timeOffRequest](/graph/api/resources/timeoffrequest), and [workforceIntegration](/graph/api/resources/workforceintegration). This header was also deprecated for the [changeTrackedEntity: stageForDeletion](/graph/api/changetrackedentity-stagefordeletion) method.

## June 2025: New in preview only

### Backup storage

[Get](/graph/api/emailnotificationssetting-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/emailnotificationssetting-update?view=graph-rest-beta&preserve-view=true) email notification settings in a tenant.

## Education

[Get](/graph/api/reportsroot-list-speakerassignmentsubmissions?view=graph-rest-beta&preserve-view=true) a list of speaker assignments that were submitted by a student.

### Security | eDiscovery

- Use the **description** property on [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset?view=graph-rest-beta&preserve-view=true) to get or set the eDiscovery review set description.
- [Update](/graph/api/security-ediscoveryreviewset-update?view=graph-rest-beta&preserve-view=true) the **displayName** and **description** of an [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Apps

Use the **customAppSettings** property on [teamsAppSettings](/graph/api/resources/teamsappsettings?view=graph-rest-beta&preserve-view=true) to get or set tenant-wide custom app settings for all Microsoft Teams apps.

### Teamwork and communications | Messaging

Added [phoneUserConversationMember](/graph/api/resources/phoneuserconversationmember?view=graph-rest-beta&preserve-view=true) as a supported conversation member type.

### Teamwork and communications | Shift management

Deprecated the `MS-APP-ACTS-AS` request header for all operations of the resources: [offerShiftRequest](/graph/api/resources/offershiftrequest?view=graph-rest-beta&preserve-view=true), [openShift](/graph/api/resources/openshift?view=graph-rest-beta&preserve-view=true), [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest?view=graph-rest-beta&preserve-view=true), [schedule](/graph/api/resources/schedule?view=graph-rest-beta&preserve-view=true), [schedulingGroup](/graph/api/resources/schedulinggroup?view=graph-rest-beta&preserve-view=true), [shift](/graph/api/resources/shift?view=graph-rest-beta&preserve-view=true), [shiftPreferences](/graph/api/resources/shiftpreferences?view=graph-rest-beta&preserve-view=true), [shiftsRoleDefinition](/graph/api/resources/shiftsroledefinition?view=graph-rest-beta&preserve-view=true), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest?view=graph-rest-beta&preserve-view=true), [timeCard](/graph/api/resources/timecard?view=graph-rest-beta&preserve-view=true), [timeOff](/graph/api/resources/timeoff?view=graph-rest-beta&preserve-view=true), [timeOffReason](/graph/api/resources/timeoffreason?view=graph-rest-beta&preserve-view=true), [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta&preserve-view=true), and [workforceIntegration](/graph/api/resources/workforceintegration?view=graph-rest-beta&preserve-view=true). This header was also deprecated for the [changeTrackedEntity: stageForDeletion](/graph/api/changetrackedentity-stagefordeletion?view=graph-rest-beta&preserve-view=true) method.

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

### Teamwork and communications | AI interactions

Use the [getAllEnterpriseInteractions](/graph/api/aiinteractionhistory-getallenterpriseinteractions) method to get Microsoft 365 Copilot interaction data, including user prompts to Copilot and Copilot responses. 

### Teamwork and communications | Calls and online meetings

- [Get](/graph/api/copilotadminlimitedmode-get) or [set](/graph/api/copilotadminlimitedmode-update) whether users of Microsoft 365 Copilot in Teams meetings can receive responses to sentiment-related prompts.
- Get [all attendance reports](/graph/api/meetingattendancereport-list#example-3-list-attendance-reports-for-a-town-hall-session) or [an attendance report by ID](/graph/api/meetingattendancereport-get#example-3-get-the-attendance-report-for-a-town-hall-session-by-id) for a town hall session.
- Get [all attendance records](/graph/api/attendancerecord-list#example-3-list-attendance-records-for-the-attendance-report-of-a-town-hall-session) from the attendance report for a town hall session.

## May 2025: New in preview only

### Backup storage

[Restore sessions](/graph/api/resources/restoresessionbase?view=graph-rest-beta&preserve-view=true) and [restore artifacts](/graph/api/resources/restoreartifactbase?view=graph-rest-beta&preserve-view=true) that are older than one year and in a terminal state are removed.

### Device and app management | Cloud PC

- Added **resourceAvailabilityCheckMissingRegistrationForLocation** as a possible error type for the [cloudPcOnPremisesConnectionHealthCheck](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true).
- Deprecated the [getCloudPcRecommendationReports](/graph/api/cloudpcreports-getcloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true) method of the [cloudPcReports](/graph/api/resources/cloudpcreports?view=graph-rest-beta&preserve-view=true) resource in favor of the [retrieveCloudPcRecommendationReports](/graph/api/cloudpcreports-retrievecloudpcrecommendationreports?view=graph-rest-beta&preserve-view=true) method.

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

### Teamwork and communications | Shift management

- [Confirm](/graph/api/timecard-confirmforuser?view=graph-rest-beta&preserve-view=true) a specific [timeCard](/graph/api/resources/timecard?view=graph-rest-beta&preserve-view=true) for a user.
- [Approve](/graph/api/schedulechangerequest-approveforuser?view=graph-rest-beta&preserve-view=true) or [decline](/graph/api/schedulechangerequest-declineforuser?view=graph-rest-beta&preserve-view=true) an [offerShiftRequest](/graph/api/resources/offershiftrequest?view=graph-rest-beta&preserve-view=true), [openShiftChangeRequest](/graph/api//resources/openshiftchangerequest?view=graph-rest-beta&preserve-view=true), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest?view=graph-rest-beta&preserve-view=true), or [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta&preserve-view=true) object for a user using application permissions.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
