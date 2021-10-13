---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## September 2021: New and generally available

### Cloud communications | Online meetings
Use `OnlineMeetingArtifact.Read.All` as delegated or application permission to read artifacts of online meetings. For more information, see [online meetings permissions](permissions-reference.md#online-meetings-permissions).

### Files
- Get the details of any virus detected in a [driveItem](/graph/api/resources/driveItem) through a **malware** property.
- Use the [delta](/graph/api/driveitem-delta) function to track changes on not only the root folder but also other folders within a drive.

### Identity and access | Directory management
- Providers of role-based access control (RBAC) can [manage roles](/graph/api/resources/rolemanagement) in Azure Active Directory, by [defining role actions](/graph/api/resources/unifiedroledefinition) that can be performed on specific resources, and [assigning roles](/graph/api/resources/unifiedroleassignment) to users based on such role definitions, giving them the corresponding access to those resources.

### Search | Query
- Aggregate numeric or string type search results that are imported by [Microsoft Graph connectors](/microsoftsearch/connectors-overview) and that are set to be refinable in the [schema](/graph/api/resources/schema). See more information about [refining search results using aggregations](search-concept-aggregation.md).
- [Sort](/graph/api/resources/search-api-overview#sort-search-results) search results for OneDrive and SharePoint on any sortable property. For more information, see [Use the Microsoft Search API to sort search results](search-concept-sort.md).

### Teamwork
- Use a single action [provisionEmail](/graph/api/channel-provisionemail) to get the email address of a [channel](/graph/api/resources/channel) if one exists, or create one otherwise. Use the [removeEmail](/graph/api/channel-removeemail) action to remove the email address.

### Workbooks and charts
Create table rows asynchronously. For better performance, a good practice to create multiple table rows is to batch them in one [create tableRow](/graph/api/table-post-rows) operation and carry out the operation asynchronously. Follow with the [GET workbookOperation](/graph/api/workbookoperation-get) operation and [tableRowOperationResult](/graph/api/workbook-tableRowOperationResult) function to get the new [workbookTableRow](/graph/api/resources/workbooktablerow) resource.


## September 2021: New in preview only

### Cloud communications | Online meetings
Get the total participant count in a [meeting attendance report](/graph/api/resources/meetingattendancereport?view=graph-rest-beta&preserve-view=true) of an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).

### Compliance | eDiscovery
The [create case](/graph/api/ediscovery-case-post?view=graph-rest-beta&preserve-view=true) operation always creates cases in large format. This expands the case size limit to accommodate a higher total data volume and total number of items. For details, see [benefits of large cases](/microsoft-365/compliance/advanced-ediscovery-large-cases?view=o365-worldwide&preserve-view=true#benefits-of-large-cases).

### Devices and apps | Cloud PC
- [Reprovision a Cloud PC](/graph/api/manageddevice-reprovisioncloudpc?view=graph-rest-beta&preserve-view=true) as a cloud-managed virtual desktop enrolled into Intune.
- [Resize a Cloud PC](/graph/api/manageddevice-resizecloudpc?view=graph-rest-beta&preserve-view=true) by either upgrading or downgrading it to another configuration with a new virtual CPU (vCPU) and storage size.

### Education
Support for adding assignments to only students' calendars if you use the `Prefer: include-unknown-enum-members` request header for operations on the [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) or [educationAssignmentDefaults](/graph/api/resources/educationassignmentdefaults?view=graph-rest-beta&preserve-view=true) resource.

### Identity and access | Governance
[Delete](/graph/api/accesspackageassignmentrequest-delete?view=graph-rest-beta&preserve-view=true) an [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true) to remove a denied or completed request.

### Identity and access | Identity and sign-in
Allow users to perform multi-factor authentication using a [software OATH token](/graph/api/resources/softwareOathAuthenticationMethod?view=graph-rest-beta&preserve-view=true). A software OATH token is a software-based number generator that uses the OATH Time-Based One Time Password (TOTP) standard.


## August 2021: New and generally available

### Cloud communications | Calls
A [participant](/graph/api/resources/participant) can include metadata as a blob of data in the roster for a [call](/graph/api/resources/call).

### Cloud communications | Online meetings
- Create an [online meeting](/graph/api/resources/onlinemeeting) as a live event, configuring [broadcast settings](/graph/api/resources/broadcastMeetingSettings) and [meeting participant info](/graph/api/resources/meetingparticipantinfo) with the role of producer. See an [example](/graph/api/application-post-onlinemeetings#example-2-create-a-live-event-with-user-token).
- Enable, disable, or limit duration of chat for an online meeting by using the **allowMeetingChat** property.
- Enable or disable reactions for an online meeting, by using the **allowTeamworkReactions** property.
- Allow an attendee to turn on their camera or microphones by using the **allowAttendeeToEnableCamera** or **allowAttendeeToEnableMic** property respectively.

### Cloud communications | Presence
- [Set the state of a user's presence](/graph/api/presence-setpresence) which is an aggregated state on each Teams client (desktop, mobile, or web).
- [Clear the presence session](/graph/api/presence-clearpresence) for a user.


### Devices and apps | Corporate management
Intune monthly updates for the v1.0 version. Set the **Date** filter for August, 2021, and look for a section with this same heading.

### Devices and apps | Service health and communications
GA of the [service communications API](service-communications-concept-overview.md) in Microsoft Graph to access the health status and message center posts about Microsoft cloud services.

### Identity and access | Governance
Get a collection of access review scopes that is used to define reviewers and fallback reviewers for an [instance of access reviews](/graph/api/resources/accessReviewInstance).

### Sites and lists | Taxonomy
Access the SharePoint [term store](/graph/api/resources/termstore-store) taxonomy, the hierarchy that consists of [group](/graph/api/resources/termstore-group), [set](/graph/api/resources/termstore-set), and [term](/graph/api/resources/termstore-term) resources, and [relation](/graph/api/resources/termstore-relation) resources between terms.

### Teamwork
[List chats](/graph/api/chat-list) that a user is part of, in a delegated context.

## August 2021: New in preview only

### Cloud communications | Calls
- Put a [participant](/graph/api/resources/participant?view=graph-rest-beta&preserve-view=true) on hold and play music in the background, by using the [startHoldMusic](/graph/api/participant-startHoldMusic?view=graph-rest-beta&preserve-view=true) action.
- Reincorporate a participant previously put on hold to a call, by using the [stopHoldMusic](/graph/api/participant-stopHoldMusic?view=graph-rest-beta&preserve-view=true) action.

### Cloud communications | Online meetings
Set an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) to record automatically.

### Devices and apps | Cloud PC
[End the grace period](/graph/api/cloudPC-endGracePeriod?view=graph-rest-beta&preserve-view=true) for a Cloud PC. The grace period lets users access Cloud PCs up to seven days before de-provisioning occurs. Ending the grace period immediately deprovisions the Cloud PC without waiting the seven days.

### Devices and apps | Corporate management
Intune monthly updates for the beta version. Set the **Date** filter for August, 2021, and look for a section with this same heading.

### Identity and access | Governance
- [Reprocess](/graph/api/accesspackageassignmentrequest-reprocess?view=graph-rest-beta&preserve-view=true) an [access package assignment request](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true) to automatically retry a user's request for access to the package.
- [Reprocess](/graph/api/accesspackageassignment-reprocess?view=graph-rest-beta&preserve-view=true) an [access package assignment](/graph/api/resources/accesspackageassignment?view=graph-rest-beta&preserve-view=true) to automatically re-evaluate and enforce a user's assignments.
- [Get a set of policy requirements](/graph/api/accesspackage-getapplicablepolicyrequirements?view=graph-rest-beta&preserve-view=true) to create an [assignment request for an access package](/graph/api/resources/accesspackageassignmentrequestrequirements?view=graph-rest-beta&preserve-view=true).
- Get a collection of [access review reviewer](/graph/api/resources/accessreviewreviewer?view=graph-rest-beta&preserve-view=true) resources that is used to define reviewers contacted for an [instance of access reviews](/graph/api/resources/accessReviewInstance?view=graph-rest-beta&preserve-view=true).
- Get or set the duration of inactivity that recommendations are configured from in the [schedule settings of an access review](/graph/api/resources/accessReviewScheduleSettings?view=graph-rest-beta&preserve-view=true), by using the **recommendationLookBackDuration** property.

### Identity and access | Identity and sign-in
- Organizations can use [policies to enforce best practices for apps using application authentication methods](/graph/api/resources/applicationauthmethodpolicy?view=graph-rest-beta&preserve-view=true). Such policies can apply to [specific applications and service principals](/graph/api/resources/appmanagementpolicy?view=graph-rest-beta&preserve-view=true), or to [all applications and service principals in a tenant](/resources/tenantappmanagementpolicy?view=graph-rest-beta&preserve-view=true).
- Support for paging on the **appRoleAssignments** navigation property for [users](/api/user-list-approleassignments?view=graph-rest-beta&preserve-view=true), [groups](/api/group-list-approleassignments?view=graph-rest-beta&preserve-view=true), and [service principals](/api/serviceprincipal-list-approleassignments?view=graph-rest-beta&preserve-view=true).
- Allow an Azure Active Directory (Azure AD) tenant to set up [federation with another organization whose identity provider (IdP) supports either the SAML or WS-Fed protocol](/graph/api/resources/samlOrWsFedExternalDomainFederation?view=graph-rest-beta&preserve-view=true). This enables the Azure AD tenant to allow guest users to access its resources.

### Teamwork
- Get [information about an online meeting](/graph/api/resources/teamworkOnlineMeetingInfo?view=graph-rest-beta&preserve-view=true) that is associated with a [chat](/api/resources/chat?view=graph-rest-beta&preserve-view=true).
- Get the identifier of the tenant in which a **chat** is created.

### Users
Use the last interactive and non-interactive sign-in date/time values of users' [signInActivity](/graph/api/resources/signInActivity?view=graph-rest-beta&preserve-view=true) to [manage inactive accounts](/azure/active-directory/reports-monitoring/howto-manage-inactive-user-accounts).

## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
