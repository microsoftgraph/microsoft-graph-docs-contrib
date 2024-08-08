---
title: "What's new in Microsoft Graph"
description: "Find out what's new in Microsoft Graph APIs, SDKs, documentation, and other resources."
author: "lauragra"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

Microsoft Graph provides a unified programmability model that you can use to access data in Microsoft 365, Windows, and Enterprise Mobility + Security. This article provides information about what's new in Microsoft Graph APIs, documentation, SDKs, and more.

For more detailed API-level updates, see the [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).

For details about previous updates to Microsoft Graph, see [Microsoft Graph what's new history](whats-new-earlier.md).

> [!IMPORTANT]
> Features in _preview_ status are subject to change without notice, and might not be promoted to generally available (GA) status. Don't use preview features in production apps.


## August 2024: New in preview only

### Teamwork and communications | Calls and online meetings

Use the **allowBreakoutRooms**, **allowLiveShare**, **allowPowerPointSharing**, and **allowWhiteboard** to indicate whether breakout rooms, live share, PowerPoint live, and whiteboard features are enabled in an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) or [virtualEventSession](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true).

## August 2024: New and generally available

### Teamwork and communications | Online meeting

- Enabled the `$select` query parameter for the [Get callRecording](/graph/api/callrecording-get) method.
- Enabled the `$select` query parameter for the [Get callTranscript](/graph/api/calltranscript-get) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List recordings](/graph/api/onlinemeeting-list-recordings) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List transcripts](/graph/api/onlinemeeting-list-transcripts) method.

## August 2024: New in preview only

### People and workplace intelligence | Insights

[Get](/graph/api/userinsightssettings-get) and [update](/graph/api/userinsightssettings-update) user privacy settings for [itemInsights](/graph/api/resources/iteminsights) and [meeting hours insights](https://support.microsoft.com/office/update-your-meeting-hours-using-the-profile-card-0613d113-d7c1-4faa-bb11-c8ba30a78ef1). Use the [userInsightsSettings](/graph/api/resources/userinsightssettings) resource to enable or disable the calculation and visibility of item insights and meeting hours insights for a user.

### Teamwork and communications | Online meeting

- Enabled the `$select` query parameter for the [Get callRecording](/graph/api/callrecording-get?view=graph-rest-beta&preserve-view=true) method.
- Enabled the `$select` query parameter for the [Get callTranscript](/graph/api/calltranscript-get?view=graph-rest-beta&preserve-view=true) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List recordings](/graph/api/onlinemeeting-list-recordings?view=graph-rest-beta&preserve-view=true) method.
- Enabled the `$filter`, `$select`, and `$top` query parameters for the [List transcripts](/graph/api/onlinemeeting-list-transcripts?view=graph-rest-beta&preserve-view=true) method.


## July 2024: New and generally available

### Backup Storage

The new Microsoft 365 Backup Storage API enables partners to build customized versions of their applications that are integrated with the Microsoft 365 Backup Storage platform. This helps to ensure exceptionally fast recovery from typical business continuity and disaster recovery (BCDR) scenarios, such as ransomware attacks or accidental/malicious deletion or overwriting of content by employees. To explore the see, [Backup Storage](/concepts/backup-storage-concept-overview.md).

### Customer booking

- Use the **createdDateTime** and **lastUpdatedDateTime** properties on [bookingAppointment](/graph/api/resources/bookingappointment), [bookingBusiness](/graph/api/resources/bookingbusiness), [bookingCustomer](/graph/api/resources/bookingcustomer), [bookingCustomQuestion](/graph/api/resources/bookingcustomquestion), [bookingService](/graph/api/resources/bookingservice), and [bookingStaffMember](/graph/api/resources/bookingstaffmember) to identify when a related booking resource was created or updated.
- Use the **isCustomerAllowedToManageBooking** property on [bookingAppointment](/graph/api/resources/bookingappointment) and [bookingService](/graph/api/resources/bookingservice) to indicate that a customer can manage bookings created by the staff.
- Use the **appointmentLabel** property on [bookingAppointment](/graph/api/resources/bookingappointment) to get the custom label that can be stamped on an appointment by users.
- Use the **customerEmailAddress** property on [bookingAppointment](/graph/api/resources/bookingappointment) to get or set the SMTP address of the [bookingCustomer](/graph/api/resources/bookingcustomer) who books an appointment.
- Use the **customerName** property on [bookingAppointment](/graph/api/resources/bookingappointment) to get or set the customer's name.
- Use the **customerNotes** property on [bookingAppointment](/graph/api/resources/bookingappointment) to get or set the notes from the customer associated with an appointment. 
- Use the **customerPhone** property on [bookingAppointment](/graph/api/resources/bookingappointment) to get or set the customer's phone number.
- Use the **bookingPageSettings** property on [bookingBusiness](/graph/api/resources/bookingbusiness) to get the settings for a published booking page.
- Use the **customAvailabilities** property on [bookingSchedulingPolicy](/graph/api/resources/bookingschedulingpolicy) to get the custom availability of a service within a given time frame.
- Use the **generalAvailability** property on [bookingSchedulingPolicy](/graph/api/resources/bookingschedulingpolicy) to get the general availability of a service defined by the scheduling policy.
- Use the **isMeetingInviteToCustomersEnabled** property on [bookingSchedulingPolicy](/graph/api/resources/bookingschedulingpolicy) to indicate whether a meeting invite is sent to the customers.
- Renamed the **startDateTime** and **endDateTime** properties to **start** and **end** respectively in the [bookingAppointment](/graph/api/resources/bookingappointment) resource.

### Security | Alerts and incidents

Use the **summary** property to get details about what happened, impacted assets, and the type of attack on an [incident](/graph/api/resources/security-incident).

### Teamwork and communications | Calls and online meetings

- Use the **settings** property on [virtualEventWebinar](/graph/api/resources/virtualeventwebinar) to identify whether attendees receive email notifications.
- Use the **callId** on [callRecording](/graph/api/resources/callrecording) or [callTranscript](/graph/api/resources/calltranscript) to identify the [call](/graph/api/resources/call) that is related to a recording or transcript.
- Use the **contentCorrelationId** on [callRecording](/graph/api/resources/callrecording) or [callTranscript](/graph/api/resources/calltranscript) to correlate a transcript with its corresponding recording.
- Use the **endDateTime** on [callRecording](/graph/api/resources/callrecording) or [callTranscript](/graph/api/resources/calltranscript) to identify when a recording or transcript ends.
- Provision [approvalSolution](/graph/api/resources/approvalsolution) and manage [approvalItems](/graph/api/resources/approvalitem).

### Change notifications

Enabled change notifications support to the methods to [list](/graph/api/subscription-list), [get](/graph/api/subscription-get), [create](/graph/api/subscription-post-subscriptions), [update](/graph/api/subscription-update), and [delete](/graph/api/subscription-delete) a subscription for [approvalItems](/graph/api/resources/approvalitem) in a tenant.

## July 2024: New in preview only

### Applications | Application

Use the **configurationUris** property on [applicationTemplate](/graph/api/resources/applicationtemplate?view=graph-rest-beta&preserve-view=true) to get the URIs required for the single sign-on configuration of a preintegrated application.

### Device and app management | Cloud PC

- Use the **disasterRecoveryCapability** property on [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) to get the disaster recovery status of the Cloud PC, including the primary region, secondary region, and capability type.
- Use the **autopatch** property on [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) to get or set specific settings for Windows Autopatch that enable its customers to experience it on Cloud PC.

### Education

- Deprecated the **synchronizationProfiles** relationship on the [educationRoot](/graph/api/resources/educationroot?view=graph-rest-beta&preserve-view=true), including all types serviced under this endpoint.
- Introduced the Reflect API in Microsoft Graph to [get Reflect check-in responses](/graph/api/reflectcheckinresponse-get?view=graph-rest-beta&preserve-view=true) and [get reading assignment submissions](/graph/api/readingassignmentsubmission-get?view=graph-rest-beta&preserve-view=true). [Microsoft Reflect](https://reflect.microsoft.com/) helps you create impactful check-ins to gain insights into your learners' well-being and build a happier and healthier learning community, all within a single, user-friendly app. 

### Identity and access | Directory management

Added the ability to initiate an external admin takeover of an unmanaged domain via the [domain-verify](/graph/api/domain-verify?view=graph-rest-beta&preserve-view=true) API operation.
  
### People and workplace intelligence | Profile

Use the **companyCode** on [companyDetail](/graph/api/resources/companydetail?view=graph-rest-beta&preserve-view=true) to get or set the legal entity number of the company or its subdivision.

### Security | Alerts and incidents

Use the **summary** property to get details about what happened, impacted assets, and the type of attack on an [incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings

- Use the **settings** property on [virtualEventTownhall](/graph/api/resources/virtualeventtownhall?view=graph-rest-beta&preserve-view=true) and [virtualEventWebinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) to get or set whether attendees receive email notifications for a town hall or webinar.
- Removed the **meetingOrganizerId** property from the [callRecording](/graph/api/resources/callrecording?view=graph-rest-beta&preserve-view=true) and [callTranscript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) resources in favor of the **meetingOrganizer** property.

## Contribute to Microsoft Graph

Are there scenarios you'd like Microsoft Graph to support?

- Suggest and vote for new features by using the [Microsoft Graph Feedback Portal](https://aka.ms/graphfeedback). Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features to the beta (`https://graph.microsoft.com/beta`) and v1.0 (`https://graph.microsoft.com/v1.0`) endpoints.

- [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call and become an active member of the Microsoft Graph community. To discover the full calendar of developer calls, visit the [Microsoft 365 and Power Platform community page](https://aka.ms/community/calls).

- [Join](https://ux.microsoft.com/Panel/M365Devs?utm_source=graphDocs) our research panel to provide your input on our developer experiences.

## Related content
- [Microsoft Graph developer blog](https://devblogs.microsoft.com/microsoft365dev/category/microsoft-graph/).
- [Microsoft Graph API changelog](https://developer.microsoft.com/graph/changelog/).
- [Microsoft Graph what's new history](whats-new-earlier.md).
