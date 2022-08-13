---
title: "What's new in Microsoft Graph"
description: "View highlights of what's new in Microsoft Graph in the past two months, what was added in earlier releases, and how you can share your ideas."
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## July 2022: New and generally available

### Customer booking
[Get](/graph/api/bookingBusiness-getStaffAvailability) the [availability](/graph/api/resources/staffAvailabilityItem) of specified staff members in a [business](/graph/api/resources/bookingbusiness).

### Devices and apps | Corporate management
Intune [July updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-07-01&to=2022-07-31) for the v1.0 version.

### Identity and access | Directory management
- [Restore](/graph/api/directory-deleteditems-restore) a deleted directory object within 30 days of deletion. The directory object can be an application, group, service principal, or user.
- [Permanently delete](/graph/api/directory-deleteditems-delete) a directory object as listed above.

### Identity and access | Governance
- [Reprocess](/graph/api/accesspackageassignmentrequest-reprocess) an [access package assignment request](/graph/api/resources/accesspackageassignmentrequest) to automatically retry a user's request for access to the package.
- [Reprocess](/graph/api/accesspackageassignment-reprocess) an [access package assignment](/graph/api/resources/accesspackageassignment) to automatically re-evaluate and enforce a user's assignments.to groups, applications, and SharePoint Online sites for internal users as well as users outside your organization
- [Get](/graph/api/accesspackageassignment-get) an [access package assignment](/graph/api/resources/accesspackageassignment) to help manage access to groups, applications, and SharePoint Online sites for users internal to or outside of an organization.
- Configure [settings](/graph/api/resources/accessreviewstagesettings) for each [stage](/graph/api/resources/accessreviewstage) in a multi-stage access review. In addition to [get](/graph/api/accessreviewstage-get) or [update](/graph/api/accessreviewstage-update) an access review stage, you can do the following: 
  - [Stop](/graph/api/accessreviewstage-stop) reviewers from giving more input to a stage and proceed to the next stage if applicable. 
  - [Filter](/graph/api/accessreviewstage-filterbycurrentuser) and get all the stages on an [access review instance](/graph/api/resources/accessreviewinstance) for which the calling user is a reviewer
  - [List decisions](/graph/api/accessreviewstage-list-decisions) from a multi-stage access review.

### Teamwork
- [Get](/graph/api/profilephoto-get) or [update](/graph/api/profilephoto-update) the [photo](/graph/api/resources/profilephoto) for a [team](/graph/api/resources/team).
- Use the delegated permission, `TeamsTab.ReadWriteSelfForChat`, to [read](/graph/api/chat-get-tabs), [install](/graph/api/chat-post-tabs), [upgrade](/graph/api/chat-patch-tabs), or [uninstall](/graph/api/chat-delete-tabs) a [tab](/graph/api/resources/teamstab) pinned to your Teams app in chats that the signed-in user can access.
- Use the application permission, `TeamsTab.ReadWriteSelfForChat.All`, to read, install, upgrade, or uninstall a tab pinned to your Team's app for any chat, without a signed-in user.
- Use the delegated permission, `TeamsTab.ReadWriteSelfForTeam`, to [read](/graph/api/channel-get-tabs), [install](/graph/api/channel-post-tabs), [upgrade](/graph/api/channel-patch-tabs), or [uninstall](/graph/api/channel-delete-tabs) a tab pinned to your Teams app for the channels that the signed-in user can access.
- Use the application permission, `TeamsTab.ReadWriteSelfForTeam.All`, to read, install, upgrade, or uninstall a tab pinned to your Team's app for any channel, without a signed-in user.
- Share a channel with one or more teams:
  - [List only channels that are shared with a team](/graph/api/team-list-incomingchannels).
  - [List all the channels in a team](/graph/api/team-list-allchannels) including those hosted in a team or shared with the team.
  - [List team members who can access a specified shared channel](/graph/api/sharedwithchannelteaminfo-list-allowedmembers).
  - [Remove a channel shared with a team](/graph/api/team-delete-incomingchannels).
  - [List the teams that have been shared a specified channel](/graph/api/sharedwithchannelteaminfo-list).
  - [Unshare a channel with a team](/graph/api/sharedwithchannelteaminfo-delete).
  - [Create a team from a group](/graph/api/team-put-teams), and [create a channel in a team](/graph/api/channel-post) as asynchronous operations.
- [Add a member directly to a channel](/graph/api/channel-post-members) without first adding the member to the parent team.

## July 2022: New in preview only

### Cloud communications | Call
- [Join a scheduled call](/graph/api/application-post-calls?view=graph-rest-beta&preserve-view=true) with a join-meeting ID or passcode. 

### Cloud communications | Online meeting
- [Create](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true#example-4-create-an-online-meeting-that-requires-a-passcode) an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) that requires a passcode.
- Specify [settings](/graph/api/resources/joinmeetingidsettings?view=graph-rest-beta&preserve-view=true) for a join-meeting ID, including whether attendees require a passcode to use the join-meeting ID for an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- [Create](/graph/api/virtualappointment-put?view=graph-rest-beta&preserve-view=true) and manage a [virtual appointment](/graph/api/resources/virtualappointment?view=graph-rest-beta&preserve-view=true) between a service provider and their customer. This release is a programmatic debut that enables providers such as financial professionals, design consultants, or health care clinicians to consume online workflows and to meet with their customers remotely over video meetings. Find out more information about the _end user_ experience with [virtual appointments on Microsoft Teams](/microsoft-365/frontline/virtual-appointments?view=o365-worldwide).

### Devices and apps | Cloud PC
[Create](/graph/api/virtualendpoint-post-externalpartnersettings?view=graph-rest-beta&preserve-view=true), [get](/graph/api/cloudpcexternalpartnersetting-get?view=graph-rest-beta&preserve-view=true), or [update](/graph/api/cloudpcexternalpartnersetting-update?view=graph-rest-beta&preserve-view=true) [settings for an external partner](/graph/api/resources/cloudpcexternalpartnersetting?view=graph-rest-beta&preserve-view=true) of Cloud PC, such as the partner status, and enabling or disabling the connection.

### Devices and apps | Corporate management
Intune [July updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-07-01&to=2022-07-31) for the beta version.

### Identity and access | Directory management
- [Get](/graph/api/externalidentitiespolicy-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/externalidentitiespolicy-update?view=graph-rest-beta&preserve-view=true) a tenant-wide [policy](/graph/api/resources/externalIdentitiesPolicy?view=graph-rest-beta&preserve-view=true) whether the administrator of a guest tenant must remove an external user from the tenant, or whether external users can self-serve and remove themselves from the guest tenant.
- Find [tenant information](/graph/api/resources/tenantinformation?view=graph-rest-beta&preserve-view=true) [by domain name](/graph/api/tenantrelationship-findtenantinformationbydomainname?view=graph-rest-beta&preserve-view=true) or [by tenant ID](/graph/api/tenantrelationship-findtenantinformationbytenantid?view=graph-rest-beta&preserve-view=true).

### Reports | Microsoft 365 usage reports
[Get](/graph/api/adminreportsettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/adminreportsettings-update?view=graph-rest-beta&preserve-view=true) tenant-wide [settings](/graph/api/resources/adminreportsettings?view=graph-rest-beta&preserve-view=true) to hide or show identifiable information for users, groups, or sites in Microsoft 365 usage reports.

### Security | Threat submission
Create or get a [submission](/graph/api/resources/security-threatsubmission?view=graph-rest-beta&preserve-view=true) of an [email](/graph/api/resources/security-emailthreatsubmission?view=graph-rest-beta&preserve-view=true), [email file attachment](/graph/api/resources/security-filethreatsubmission?view=graph-rest-beta&preserve-view=true), or [URL](/graph/api/resources/security-urlthreatsubmission?view=graph-rest-beta&preserve-view=true) at the the Microsoft 365 Defender portal (https://security.microsoft.com) to confirm if the item is malicious or safe, or has been allowed or blocked by tenant policies that have overridden Microsoft Defender for Office 365.

### Teamwork
- Get a collection of [team templates](/graph/api/resources/teamTemplate?view=graph-rest-beta&preserve-view=true) and their [template definitions](/graph/api/resources/teamtemplatedefinition?view=graph-rest-beta&preserve-view=true) available for a tenant.
- [Delete](/graph/api/chatmessage-softdelete?view=graph-rest-beta&preserve-view=true) or [undo a deletion](/graph/api/chatmessage-undosoftdelete?view=graph-rest-beta&preserve-view=true) of a [chat message](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) in a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) or [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).
- [Get](/graph/api/teamsappsettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/teamsappsettings-update?view=graph-rest-beta&preserve-view=true) tenant-wide [settings](/graph/api/resources/teamsappsettings?view=graph-rest-beta&preserve-view=true) to allow or disallow installing Teams apps that require resource-specific permissions in a chat or meeting.

### Teamwork | Employee learning
Debut of the [employee learning API](/graph/api/resources/viva-learning-api-overview?view=graph-rest-beta&preserve-view=true) that enables apps to make content from a Learning Management System (LMS) or learning provider available in Viva Learning. In Viva Learning, employees and teams can discover, share, recommend, and learn from content libraries provided by both their organization and partners. Because Viva Learning is a centralized learning hub in Microsoft Teams, this makes it easier for employees to prioritize their growth and integrate learning and building skills into their work day.

### To-do tasks
- Use a single POST operation to [attach a file](/graph/api/todotask-post-attachments?view=graph-rest-beta&preserve-view=true) up to 3MB to a [to-do task](/graph/api/resources/todotask?view=graph-rest-beta&preserve-view=true), or [create an upload session](/graph/api/taskfileattachment-createuploadsession?view=graph-rest-beta&preserve-view=true) to iteratively upload portions of a file up to 25 MB total size to attach it to a task.
- Get or set a date and time in a specific time zone for a to-do task to begin.

### Users
[Get](/graph/api/user-get?view=graph-rest-beta&preserve-view=true) the security identifier (SID) of a user in Windows scenarios.

## June 2022: New and generally available

### Cloud communications | Call records
Get information about the audio codec, video codec, network transport protocol, and trace route hops for a [media stream](/graph/api/resources/callrecords-mediastream) when [getting a call record](/graph/api/callrecords-callrecord-get) and expanding each [segment](/graph/api/resources/callrecords-segment) of a [session](/graph/api/resources/callrecords-session).

### Identity and access | Directory management
- [List the administrative units](/graph/api/device-list-memberOf) that a [device](/graph/api/resources/device) is a member of.
- Manage devices as members in an [administrative unit](/graph/api/resources/administrativeunit): [list members](/graph/api/administrativeunit-list-members) including devices, and [get](/graph/api/administrativeunit-get-members), [add](/graph/api/administrativeunit-post-members), and [remove](/graph/api/administrativeunit-delete-members) a device as a member. 
- [Get](/graph/api/application-get) the status and other details of [security and compliance certification](/graph/api/resources/certification) of an [application](/graph/api/resources/application) to protect customer data. For more information, see [Microsoft 365 Certification](/microsoft-365-app-certification/docs/enterprise-app-certification-guide).
- Configure [federation settings with Azure AD](/graph/api/resources/internalDomainFederation).

### Identity and access | Identity and sign-in
- Configure and manage the [settings of the Temporary Access Pass authentication methods policy](/graph/api/resources/temporaryAccessPassAuthenticationMethodConfiguration) in your tenant.
- Get the [base policy in a directory for cross-tenant access settings](/graph/api/resources/crosstenantaccesspolicy), [default configuration](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault) for how an organization interacts with external Azure Active Directory organizations, and [partner-specific configurations](/graph/api/resources/crosstenantaccesspolicyconfigurationpartner) for external Azure Active Directory organizations.

### Reports | Microsoft 365 usage reports
Find new columns in Teams reports generated by the following methods:
  - [getTeamsUserActivityCounts](/graph/api/reportroot-getteamsuseractivitycounts)
  - [getTeamsUserActivityUserDetail](/graph/api/reportroot-getTeamsUserActivityUserDetail)
  - [getTeamsDeviceUsageUserDetail](/graph/api/reportroot-getTeamsDeviceUsageUserDetail)
  - [getTeamsDeviceUsageUserCounts](/graph/api/reportroot-getteamsdeviceusageusercounts)
  - [getTeamsDeviceUsageDistributionUserCounts](/graph/api/reportroot-getTeamsDeviceUsageDistributionUserCounts)
- Deprecated the Windows Phone column in the Teams reports generated by the following methods:
  - [getTeamsDeviceUsageUserCounts](/graph/api/reportroot-getteamsdeviceusageusercounts)
  - [getTeamsDeviceUsageDistributionUserCounts](/graph/api/reportroot-getTeamsDeviceUsageDistributionUserCounts)

### Teamwork
Subscribe to change notifications for the following in Teams:
- [team and channel](teams-changenotifications-team-and-channel.md)
- [team and channel membership](teams-changenotifications-teammembership.md)
- [chat](teams-changenotifications-chat.md)
- [chat membership](teams-changenotifications-chatmembership.md)
- [chat messages across all chats](/graph/teams-changenotifications-chatmessage#subscribe-to-changes-at-the-user-level) that a particular user is part of.

## June 2022: New in preview only

### Applications
Specify [linked objects](/graph/api/resources/synchronization-synchronizationLinkedObjects?view=graph-rest-beta&preserve-view=true) that can be [provisioned during on-demand provisioning](/graph/api/resources/synchronization-synchronizationJobSubject?view=graph-rest-beta&preserve-view=true), including  principals like manager, members, and owners.

### Compliance | eDiscovery
Access the [eDiscovery API](/graph/api/resources/security-ediscoverycase?view=graph-rest-beta&preserve-view=true) from the [security](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true) namespace going forward, instead of the compliance namespace.

### Compliance | Records management
Use the debut [Microsoft Purview records management API](/graph/api/resources/security-recordsmanagement-overview?view=graph-rest-beta&preserve-view=true) to help organizations manage the retention and deletion of data to meet legal obligations and compliance regulations.

### Customer booking
- Manage the language of the self-serve booking page of a [business](/graph/api/resources/bookingbusiness?view=graph-rest-beta&preserve-view=true) or a [service](/graph/api/resources/bookingservice?view=graph-rest-beta&preserve-view=true) provided by the business.
- Specify in the [customer's information](/graph/api/resources/bookingCustomerInformation?view=graph-rest-beta&preserve-view=true) whether SMS notifications are enabled for an [appointment](/graph/api/resources/bookingappointment?view=graph-rest-beta&preserve-view=true) of the customer's.
- Specify whether anonymous join is enabled for a [service](/graph/api/resources/bookingservice?view=graph-rest-beta&preserve-view=true), and whether to generate an anonymous join Web URL for an appointment for the service.
- Differentiate the role of a [staff member](/graph/api/resources/bookingstaffmember?view=graph-rest-beta&preserve-view=true) as a scheduler or a member.
- Specify whether to notify a [staff member](/graph/api/resources/bookingstaffmember?view=graph-rest-beta&preserve-view=true) by email when a booking is assigned or updated for the member.

### Device and app management | Cloud PC
Get the following information for a Cloud PC [provisioning policy](/graph/api/resources/cloudPcProvisioningPolicy?view=graph-rest-beta&preserve-view=true):
- The name of the group that Cloud PCs reside in.
- The number of hours to wait before reprovisioning/deprovisioning happens.
- Whether local admin (such as the end user of the Cloud PC) is enabled.
- The service that manages the Azure network connection, which currently is Windows 365 or Microsoft Dev Box.

### Device and app management | Multi-tenant management
[Get](/graph/api/managedtenants-managedtenant-list-myroles?view=graph-rest-beta&preserve-view=true) the collection of [roles assigned to a user signed in](/graph/api/resources/managedtenants-myRole?view=graph-rest-beta&preserve-view=true) to a [managed tenant](/graph/api/resources/managedtenants-managedTenant?view=graph-rest-beta&preserve-view=true).

### Education
- [Create](/graph/api/educationassignment-setupfeedbackresourcesfolder?view=graph-rest-beta&preserve-view=true) a SharePoint folder for an [assignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) to upload feedback documents.
- [Create](/graph/api/educationfeedbackresourceoutcome-post-outcomes?view=graph-rest-beta&preserve-view=true) a [feedback document](/graph/api/resources/educationFeedbackResourceOutcome?view=graph-rest-beta&preserve-view=true) for a [submission](/graph/api/resources/educationsubmission?view=graph-rest-beta&preserve-view=true) in the feedback folder associated with the assignment.

### Groups
Specify if a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) is [configured to write back](/graph/api/resources/groupWritebackConfiguration?view=graph-rest-beta&preserve-view=true) group object properties to on-premise Active Directory.

### Identity and access | Directory management
- [Promote](/graph/api/domain-promote?view=graph-rest-beta&preserve-view=true) a verified subdomain to the root domain.
- [Get](/graph/api/application-get?view=graph-rest-beta&preserve-view=true) the URL to the SAML metadata for federation of a single-tenant [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
Hide self-service password reset (SSPR) links in the [login page text visibility settings](/graph/api/resources/loginpagetextvisibilitysettings?view=graph-rest-beta&preserve-view=true) for a tenant's sign-in page.

### Teamwork
- Get the details of [pinning](/graph/api/resources/messagePinnedEventMessageDetail?view=graph-rest-beta&preserve-view=true) or [unpinning](/graph/api/resources/messageUnpinnedEventMessageDetail?view=graph-rest-beta&preserve-view=true) a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) in a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) or [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true). 
- As scenarios supported to export Teams content, you can [list](/graph/api/teamwork-list-deletedteams?view=graph-rest-beta&preserve-view=true) teams that have been deleted, and [get](/graph/api/deletedteam-getallmessages?view=graph-rest-beta&preserve-view=true) 1:1 chats, group chats, meeting chats, and channel messages of a [deleted team](/graph/api/resources/deletedTeam?view=graph-rest-beta&preserve-view=true). For more information, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Feedback Portal](https://aka.ms/graphfeedback).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/m365-dev-call) the weekly Microsoft 365 platform community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
