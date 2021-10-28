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


## October 2021: New and generally available

### Cloud communications | Calls
- [Transfer](/graph/api/call-transfer) an active peer-to-peer call.
- Transfer a group call to a specified participant (transferee).

### Cloud communications | Online meetings
Support multiple toll and toll-free numbers for dial-in phone access ([audio conferencing](/graph/api/resources/audioConferencing)) of an [online meeting](/graph/api/resources/onlinemeeting).

### Compliance | Subject rights request
As part of [privacy management in Microsoft 365](/privacy/solutions/privacymanagement/privacy-management?view=o365-worldwide&preserve-view=true), subject rights request now debuts in both v1 and beta endpoints of Microsoft Graph. The [subject rights request API](/graph/api/resources/subjectrightsrequest) lets users make requests to review or manage their personal data in their organizations. It also lets organizations automate and scale managing these requests, helping them to meet industry regulations more efficiently.

### Education
Support [media](/graph/api/resources/educationMediaResource) files or other [external generic resource](/graph/api/resources/educationExternalResource) as an [assignment resource](/graph/api/resources/educationassignmentresource).

### Identity and access | Applications
- To drive the consent experience for an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true), specify the [resources that the app needs to access](/graph/api/resources/requiredresourceaccess?view=graph-rest-beta&preserve-view=true), including the set of OAuth 2.0 delegated permissions and application roles that the application requires.
- Limit the number of required APIS to 50, and required permissions to 400 per application.

### Personal contacts
Enable support for delegated permissions (`Contacts.Read` or `Contacts.ReadWrite`) for [profilePhoto](/graph/api/resources/profilephoto?view=graph-rest-beta&preserve-view=true) resources in personal Microsoft accounts.

### Teamwork
- [Get all chat messages across all channels](/graph/api/channel-getallmessages) in a [team](/graph/api/resources/team).
- [Get all messages from all the chats](/graph/api/chats-getallmessages) that a user participates in, including one-on-one chats, group chats, and meeting chats.

## October 2021: New in preview only

### Cloud communications | Calls
Identify a call [participant](/graph/api/resources/participantInfo?view=graph-rest-beta&preserve-view=true), by using the **participantId** property of the [participantInfo](/graph/api/resources/participantInfo?view=graph-rest-beta&preserve-view=true) resource type.

### Cloud communications | Online meetings
Enable [meeting registration](/graph/api/resources/meetingregistration?view=graph-rest-beta&preserve-view=true) and organize online meetings as a [webinar](/office/get-started-with-teams-webinars-42f3f874-22dc-4289-b53f-bbc1a69013e3). Associate the meeting with a registration page, and choose to enroll everyone or only organization members as [meeting registrants](/graph/api/resources/meetingregistrant?view=graph-rest-beta&preserve-view=true). 

### Identity and access | Governance
Enable the following additional [settings](/graph/api/resources/assignmentReviewSettings?view=graph-rest-beta&preserve-view=true) to review an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true):
- Default behavior if request is not reviewed in a specified duration (**accessReviewTimeoutBehavior** property).
- Display recommendations to reviewer (**isAccessRecommendationEnabled** property).
- Require reviewer to provide justification for approval (**isApprovalJustificationRequired** property).

### Identity and access | Identity and sign-in
As a part of Azure Active Directory [conditional access](/azure/active-directory/conditional-access/overview), use a new session control, [continuousAccessEvaluationSessionControl](/graph/api/resources/continuousAccessEvaluationSessionControl?view=graph-rest-beta&preserve-view=true), to continuously evaluate access and make access decisions.

### Search | Index
- Specify [settings](/graph/api/resources/externalconnectors-searchsettings?view=graph-rest-beta&preserve-view=true) for the search experience of content in an [external connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true). For example, a [display template](/graph/api/resources/externalconnectors-displaytemplate?view=graph-rest-beta&preserve-view=true) for search results, and a [rule](/graph/api/resources/externalconnectors-propertyRule?view=graph-rest-beta&preserve-view=true) to select the display template.
- Relate one or more [external groups](/graph/api/resources/externalconnectors-externalgroup?view=graph-rest-beta&preserve-view=true) to an [external connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true). For example, an external group such as a business unit or work team can determine permissions to the content in the data source represented by the external connection.
- Can optionally specify the ID of a Teams app in an [external connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) in the **connectorId** property.


## September 2021: New and generally available

### Cloud communications | Online meetings
Use `OnlineMeetingArtifact.Read.All` as delegated or application permission to read artifacts of online meetings. For more information, see [online meetings permissions](permissions-reference.md#online-meetings-permissions).

### Devices and apps | Corporate management
Intune monthly updates for the v1.0 version. In the [changelog](https://developer.microsoft.com/graph/changelog), set the **Date** filter for September, 2021, and look for a section with this same heading.

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

### Devices and apps | Corporate management
Intune monthly updates for the beta version. In the [changelog](https://developer.microsoft.com/graph/changelog), set the **Date** filter for September, 2021, and look for a section with this same heading.

### Education
Support for adding assignments to only students' calendars if you use the `Prefer: include-unknown-enum-members` request header for operations on the [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) or [educationAssignmentDefaults](/graph/api/resources/educationassignmentdefaults?view=graph-rest-beta&preserve-view=true) resource.

### Identity and access | Governance
[Delete](/graph/api/accesspackageassignmentrequest-delete?view=graph-rest-beta&preserve-view=true) an [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true) to remove a denied or completed request.

### Identity and access | Identity and sign-in
Allow users to perform multi-factor authentication using a [software OATH token](/graph/api/resources/softwareOathAuthenticationMethod?view=graph-rest-beta&preserve-view=true). A software OATH token is a software-based number generator that uses the OATH Time-Based One Time Password (TOTP) standard.


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
