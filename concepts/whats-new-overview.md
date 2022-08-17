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


## August 2022: New and generally available

### Applications
Use [federated identity credentials](/graph/api/resources/federatedidentitycredential) to manage an application's credentials and allow an organization's cloud applications to access Azure AD without using secrets and certificates.

### Identity and access | Identity and sign-in
- GA of [authentication methods](/graph/api/resources/authenticationmethods-overview) including [email](/graph/api/resources/emailauthenticationmethod), [password](/graph/api/resources/passwordauthenticationmethod), [phone](/graph/api/resources/phoneauthenticationmethod), and [software OATH](/graph/api/resources/softwareoathauthenticationmethod). 
- [Reset a user password](/graph/api/authenticationmethod-resetpassword) and [get the operation status](/graph/api/authenticationoperation-get) for a [long-running operation](/graph/api/resources/longrunningoperation).
- Manage [session controls](/graph/api/resources/conditionalaccesssessioncontrols) to enforce signin frequency in a [conditional access policy](/graph/api/resources/conditionalaccesspolicy).

### Sites and lists
Manage the [version history of a document set](/graph/api/resources/documentsetversion) in SharePoint, allowing apps to capture the document set (folder) and its contents (documents) at a point in time.

### Teamwork
- Limit a [chat](/graph/api/resources/chat) title to a maximum of 255 characters and characters that are _not_ the colon. 
- [List](/graph/api/chat-list) the chats of a specific user who may not be signed in or is different from the signed-in user, using application permissions.


## August 2022: New in preview only

### Calendar | Places
[Get](/graph/api/place-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/place-update?view=graph-rest-beta&preserve-view=true) a [workspace](/graph/api/resources/workspace?view=graph-rest-beta&preserve-view=true) in a tenant.

### Cloud communications | Online meeting
[Get](/graph/api/calltranscript-get?view=graph-rest-beta&preserve-view=true) a specific [transcript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) or all the transcipts of an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).

### Files
[Get](/graph/api/tenantadmin-settings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/tenantadmin-settings-update?view=graph-rest-beta&preserve-view=true) tenant-wide [settings](/graph/api/resources/tenantadmin-settings?view=graph-rest-beta&preserve-view=true) for SharePoint and OneDrive:
- The [idle session sign-out policy settings](/graph/api/resources/tenantadmin-idlesessionsignout?view=graph-rest-beta&preserve-view=true) for SharePoint.
- Whether legacy authentication protocols are enabled for the tenant.
- Whether guests must sign in using the same account to which sharing invitations are sent.

### Reports | Identity and access reports
[Get](/graph/api/userregistrationdetails-get?view=graph-rest-beta&preserve-view=true) more details about [authentication registration by users](/graph/api/resources/userregistrationdetails?view=graph-rest-beta&preserve-view=true) in a tenant - whether a user is a member or guest, and whether the user has an admininstrator role in the tenant.

### Teamwork
[List](/graph/api/chat-list?view=graph-rest-beta&preserve-view=true) and sort chats in descending order.


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
