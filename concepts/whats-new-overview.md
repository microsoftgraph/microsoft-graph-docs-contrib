---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
ms.date: 07/03/2025
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.

## July 2025: New and generally available

### Education

[Get](/graph/api/reportsroot-list-readingassignmentsubmissions?view=graph-rest-1.0&preserve-view=true) a list of reading assignments that were submitted by a student.
[Get](/graph/api/reportsroot-list-reflectcheckinresponses?view=graph-rest-1.0&preserve-view=true) a list of Reflect check-ins that were submitted by a student.

### Files

Each fragment uploaded during an [upload session](/graph/api/resources/uploadsession) extends the expiration time.

## July 2025: New in preview only

### Device and app management | Cloud PC

Use the **sizeInGB** property on [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) to get the size of the image in GB.

### Education

[Get](/graph/api/reportsroot-list-readingcoachpassages?view=graph-rest-beta&preserve-view=true) a list of Reading Coach passages that were practiced by a student.

### Files

Each fragment uploaded during an [upload session](/graph/api/resources/uploadsession?view=graph-rest-beta&preserve-view=true) extends the expiration time.

### Identity and access | Identity and sign-in

Retired the previously deprecated Microsoft Entra lifecycle announcements APIs that stopped returning data in May 2025. Use the [Microsoft Entra release notes RSS feed instead](/entra/fundamentals/whats-new).

## June 2025: New and generally available

### Teamwork and communications | Calls and online meetings

- [Get](/graph/api/copilotadminlimitedmode-get) or [set](/graph/api/copilotadminlimitedmode-update) whether users of Microsoft 365 Copilot in Teams meetings can receive responses to sentiment-related prompts.
- [Get a webinar registration by ID and include sessions](/graph/api/virtualeventregistration-get#example-2-get-a-webinar-registration-by-ID-and-include-sessions)

### Device and app management | Cloud PC

New rate limits apply to Cloud PC APIs. The [List Cloud PCs](/graph/api/virtualendpoint-list-cloudpcs) API is now limited to 180 requests per minute per tenant and 162 requests per minute per app or user. The [Get Cloud PC](/graph/api/cloudpc-get) API is limited to 540 requests per minute per tenant and 486 requests per minute per app or user. For more information, see [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#windows-365-service-limits).

### Identity and access | Directory management

- Use the **isManagementRestricted** property on [device](/graph/api/resources/device), [group](/graph/api/resources/group), and [user](/graph/api/resources/user) resources to to indicate  whether a device, group, or user is a member of a restricted management administrative unit.
- Use the **isMemberManagementRestricted** property on [administrativeUnit](/graph/api/resources/administrativeunit) to indicate whether members of an administrative unit should be treated as sensitive.

### Security | eDiscovery

- Use the **description** property on [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset) to get or set the eDiscovery review set description.
- [Update](/graph/api/security-ediscoveryreviewset-update) the **displayName** and **description** of an [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset).

### Teamwork and communications | Calls and online meetings

- Use the new Teams meeting AI insights APIs to get AI-generated insights for a meeting after it's over. For more information, see [callAiInsight](/graph/api/resources/callaiinsight?view=graph-rest-beta&preserve-view=true).
- [Get a webinar registration by ID and include sessions](/graph/api/virtualeventregistration-get?view=graph-rest-beta&preserve-view=true#example-2-get-a-webinar-registration-by-ID-and-include-sessions)
- Use the **videoOnDemandWebUrl** on [virtualEventSession](/graph/api/resources/virtualeventsession) to get the [URL of the video on demand (VOD)](/microsoftteams/manage-vod-publishing) for Microsoft Teams events that allows webinar and town hall organizers to quickly publish and share event recordings.


### Teamwork and communications | Messaging

- Updated the throttling information for [getAllEnterpriseInteractions](/graph/api/aiinteractionhistory-getallenterpriseinteractions). The limit per app per tenant changed from 200 requests per second to 30 requests per second. The limit per app across all tenants increased from 1,000 requests per second to 1,500 requests per second.
- Use the **iconId** property on the [teamwork: sendActivityNotificationToRecipients](/graph/api/teamwork-sendactivitynotificationtorecipients), [userTeamwork: sendActivityNotification](/graph/api/userteamwork-sendactivitynotification), [chat: sendActivityNotification](/graph/api/chat-sendactivitynotification), and [team: sendActivityNotification](/graph/api/team-sendactivitynotification) to send activity notifications with customized icons.

### Teamwork and communications | Shift management

Deprecated the `MS-APP-ACTS-AS` request header for all operations of the resources: [offerShiftRequest](/graph/api/resources/offershiftrequest), [openShift](/graph/api/resources/openshift), [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest), [schedule](/graph/api/resources/schedule), [schedulingGroup](/graph/api/resources/schedulinggroup), [shift](/graph/api/resources/shift), [shiftPreferences](/graph/api/resources/shiftpreferences), [shiftsRoleDefinition](/graph/api/resources/shiftsroledefinition), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest), [timeCard](/graph/api/resources/timecard), [timeOff](/graph/api/resources/timeoff), [timeOffReason](/graph/api/resources/timeoffreason), [timeOffRequest](/graph/api/resources/timeoffrequest), and [workforceIntegration](/graph/api/resources/workforceintegration). This header was also deprecated for the [changeTrackedEntity: stageForDeletion](/graph/api/changetrackedentity-stagefordeletion) method.

## June 2025: New in preview only

### Backup storage

[Get](/graph/api/emailnotificationssetting-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/emailnotificationssetting-update?view=graph-rest-beta&preserve-view=true) email notification settings in a tenant.

### Device and app management | Device updates

Enabled [remediationUpdateFilter](/graph/api/resources/windowsupdates-remediationupdatefilter?view=graph-rest-beta&preserve-view=true) as a supported value for the **contentFilter** property of the [contentApprovalRule](/graph/api/resources/windowsupdates-contentapprovalrule?view=graph-rest-beta&preserve-view=true) resource. Use the [remediationUpdateFilter](/graph/api/resources/windowsupdates-remediationupdatefilter?view=graph-rest-beta&preserve-view=true) to determine which remediation update content matches the rule continuously.

### Education

[Get](/graph/api/reportsroot-list-speakerassignmentsubmissions?view=graph-rest-beta&preserve-view=true) a list of speaker assignments that were submitted by a student.

### Employee experience | Employee engagement

Use the [onlineMeetingEngagementConversation](/graph/api/resources/onlinemeetingengagementconversation?view=graph-rest-beta&preserve-view=true) APIs to [get all Teams question and answer (Q&A) conversation messages in a tenant](/graph/api/cloudcommunications-getallonlinemeetingmessages?view=graph-rest-beta&preserve-view=true) and [list reactions](/graph/api/engagementconversationdiscussionmessage-list-reactions?view=graph-rest-beta&preserve-view=true) in an online meeting.

### Security | eDiscovery

- Use the **description** property on [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset?view=graph-rest-beta&preserve-view=true) to get or set the eDiscovery review set description.
- [Update](/graph/api/security-ediscoveryreviewset-update?view=graph-rest-beta&preserve-view=true) the **displayName** and **description** of an [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Apps

Use the **customAppSettings** property on [teamsAppSettings](/graph/api/resources/teamsappsettings?view=graph-rest-beta&preserve-view=true) to get or set tenant-wide custom app settings for all Microsoft Teams apps.

### Teamwork and communications | Messaging

Added [phoneUserConversationMember](/graph/api/resources/phoneuserconversationmember?view=graph-rest-beta&preserve-view=true) as a supported conversation member type.

### Teamwork and communications | Shift management

Deprecated the `MS-APP-ACTS-AS` request header for all operations of the resources: [offerShiftRequest](/graph/api/resources/offershiftrequest?view=graph-rest-beta&preserve-view=true), [openShift](/graph/api/resources/openshift?view=graph-rest-beta&preserve-view=true), [openShiftChangeRequest](/graph/api/resources/openshiftchangerequest?view=graph-rest-beta&preserve-view=true), [schedule](/graph/api/resources/schedule?view=graph-rest-beta&preserve-view=true), [schedulingGroup](/graph/api/resources/schedulinggroup?view=graph-rest-beta&preserve-view=true), [shift](/graph/api/resources/shift?view=graph-rest-beta&preserve-view=true), [shiftPreferences](/graph/api/resources/shiftpreferences?view=graph-rest-beta&preserve-view=true), [shiftsRoleDefinition](/graph/api/resources/shiftsroledefinition?view=graph-rest-beta&preserve-view=true), [swapShiftsChangeRequest](/graph/api/resources/swapshiftschangerequest?view=graph-rest-beta&preserve-view=true), [timeCard](/graph/api/resources/timecard?view=graph-rest-beta&preserve-view=true), [timeOff](/graph/api/resources/timeoff?view=graph-rest-beta&preserve-view=true), [timeOffReason](/graph/api/resources/timeoffreason?view=graph-rest-beta&preserve-view=true), [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta&preserve-view=true), and [workforceIntegration](/graph/api/resources/workforceintegration?view=graph-rest-beta&preserve-view=true). This header was also deprecated for the [changeTrackedEntity: stageForDeletion](/graph/api/changetrackedentity-stagefordeletion?view=graph-rest-beta&preserve-view=true) method.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
