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


## November 2021: New and generally available

### Files
Get the state of a drive as of a specific time by specifying the corresponding URL-encoded timestamp. See an [example](/graph/api/driveitem-delta#example-4-retrieving-delta-results-using-a-timestamp).

### Identity and access | Identity and sign-in
- Run [campaigns](/graph/api/resources/authenticationMethodsRegistrationCampaign) and [enforce users to register](/graph/api/resources/registrationEnforcement) at sign-in time to set up targeted authentication methods.
-  Configure an [Apple identity provider](/graph/api/resources/applemanagedidentityprovider) in an Azure AD B2C tenant.

## November 2021: New in preview only

### Cloud communications | Online meeting
Automatically admit new types of participants in an online meeting and bypass the meeting lobby:
- Only people the organizer invites.
- Only the participants from the same company.

### Devices and apps | Cloud PC
- Define a [configuration](/graph/api/resources/cloudPcDomainJoinConfiguration?view=graph-rest-beta&preserve-view=true) of how a provisioned Cloud PC device can join Azure Active Directory (Azure AD): either cloud-only and join only to Azure AD, or hybrid and join on-premises Active Directory and Azure AD.
- Get the [gallery image resource](/graph/api/resources/cloudPcGalleryImage?view=graph-rest-beta&preserve-view=true) of the current organization which can be used to provision a Cloud PC.

### Devices and apps | Device updates
- Use [safeguard settings](/graph/api/resources/windowsupdates-safeguardSettings?view=graph-rest-beta&preserve-view=true) to opt-out of safeguards against likely issues in a deployment.
- Support for a [deployment state](/graph/api/resources/windowsupdates-deploymentState?view=graph-rest-beta&preserve-view=true) where a deployment is faulted due to the content no longer being deployable, for example, at the end of service.

### Identity and access | Directory management
- Define and assign [custom security attributes](/graph/api/resources/custom-security-attributes-overview?view=graph-rest-beta&preserve-view=true) to Azure AD objects. Use these attributes to store information, categorize objects, or enforce fine-grained access control over specific Azure resources. Use these attributes with [Azure attribute-based access control](/azure/role-based-access-control/conditions-overview) (Azure ABAC).
- [Create a group within an administrative unit](/graph/api/administrativeunit-post-members?view=graph-rest-beta&preserve-view=true).

### Reports | Microsoft 365 usage reports
[Microsoft 365 usage reports](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true) in JSON output type are no longer strongly typed and are of the type `Edm.Stream`. For more information, see [OData property changes to Microsoft 365 usage reports API in Microsoft Graph](https://devblogs.microsoft.com/microsoft365dev/odata-property-changes-to-microsoft-365-usage-reports-api-in-microsoft-graph/).

### Teamwork
Mark a chat as [read](/graph/api/chat-markChatReadForUser?view=graph-rest-beta&preserve-view=true), or [unread](/graph/api/chat-markchatunreadforuser?view=graph-rest-beta&preserve-view=true) for a user.

## October 2021: New and generally available

### Cloud communications | Calls
- [Transfer](/graph/api/call-transfer) an active peer-to-peer call.
- Transfer a group call to a specified participant (transferee).

### Cloud communications | Online meetings
Support multiple toll and toll-free numbers for dial-in phone access ([audio conferencing](/graph/api/resources/audioConferencing)) of an [online meeting](/graph/api/resources/onlinemeeting).

<!-- Hold off until permissions are deployed
As part of [privacy management in Microsoft 365](/privacy/solutions/privacymanagement/privacy-management?view=o365-worldwide&preserve-view=true), subject rights request now debuts in both v1 and beta endpoints of Microsoft Graph. The [subject rights request API](/graph/api/resources/subjectrightsrequest) lets users make requests to review or manage their personal data in their organizations. It also lets organizations automate and scale managing these requests, helping them to meet industry regulations more efficiently.
-->

### Education
Support a [media](/graph/api/resources/educationMediaResource) file or some other [external generic resource](/graph/api/resources/educationExternalResource) as an [assignment resource](/graph/api/resources/educationassignmentresource).

### Identity and access | Applications
- To drive the consent experience for an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true), specify the [resources that the app needs to access](/graph/api/resources/requiredresourceaccess?view=graph-rest-beta&preserve-view=true), including the set of OAuth 2.0 delegated permissions and application roles that the application requires.
- Limit the number of required APIS to 50, and required permissions to 400 per application.

### Identity and access | Directory management
- Set [extension attributes](/graph/api/resources/onpremisesextensionattributes) for a [device](/graph/api/resources/device) and manage them in Azure Active Directory on device [creation](/graph/api/device-post-devices) or [update](/graph/api/device-update).
- [Get a BitLocker recovery key](/graph/api/bitlockerrecoverykey-get) on behalf of the signed-in user who's the device owner or in an appropriate role. Getting a recovery key generates an [audit log](/azure/active-directory/reports-monitoring/concept-audit-logs), in parity with the end user experience.

### Identity and access | Governance
Specify a list of additional users or group members to be notified of the access review progress, in the **additionalNotificationRecipients** property of an [accessReviewScheduleDefinition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
Specify the devices in a [conditional access policy](/graph/api/resources/conditionalaccesspolicy), as part of the [conditions](/graph/api/resources/conditionalAccessConditionSet) that govern when the policy applies.

### Personal contacts
Enable support for delegated permissions (`Contacts.Read` or `Contacts.ReadWrite`) for [profilePhoto](/graph/api/resources/profilephoto?view=graph-rest-beta&preserve-view=true) resources in personal Microsoft accounts.

### Teamwork
- [Get all chat messages across all channels](/graph/api/channel-getallmessages) in a [team](/graph/api/resources/team).
- [Get all messages from all the chats](/graph/api/chats-getallmessages) that a user participates in, including one-on-one chats, group chats, and meeting chats.
- Check out the [licensing and payment models](teams-licenses.md) that apply to Microsoft Teams APIs in Microsoft Graph.

### Users
User licenses for Azure Active Directory (Azure AD) services now support a timestamp for when the [state of the license assignment](/graph/api/resources/licenseassignmentstate) is last updated. 

## October 2021: New in preview only

### Applications
Use [federated identity credentials](/graph/api/resources/federatedidentitycredential?view=graph-rest-beta&preserve-view=true) to manage an application's credentials and allow an organization's cloud applications to access Azure AD without using secrets and certificates.

### Cloud communications | Calls
Identify a call [participant](/graph/api/resources/participantInfo?view=graph-rest-beta&preserve-view=true), by using the **participantId** property of the [participantInfo](/graph/api/resources/participantInfo?view=graph-rest-beta&preserve-view=true) resource type.

### Cloud communications | Online meetings
Enable [meeting registration](/graph/api/resources/meetingregistration?view=graph-rest-beta&preserve-view=true) and organize online meetings as a [webinar](/office/get-started-with-teams-webinars-42f3f874-22dc-4289-b53f-bbc1a69013e3). Associate the meeting with a registration page, and choose to enroll everyone or only organization members as [meeting registrants](/graph/api/resources/meetingregistrant?view=graph-rest-beta&preserve-view=true). 

### Customer booking
- Support the following attributes for a [booking service](/graph/api/resources/bookingService?view=graph-rest-beta&preserve-view=true):
  - Enable sending SMS notifications to customers for their appointments (**smsNotificationsEnabled** property).
  - The URL that customers can use to access the service (**webUrl** property).
- Book an [appointment](/graph/api/resources/bookingappointment?view=graph-rest-beta&preserve-view=true) with one or more of the following attributes:
  - Specify the customer's time zone (**customerTimeZone** property).
  - Specify the URL for an online appointment (**joinWebUrl** property).
  - Enable SMS notifications to the customer for the appointment (**smsNotificationsEnabled** property).
- Specify one or more addresses and phone numbers for a [customer](/graph/api/resources/bookingcustomer?view=graph-rest-beta&preserve-view=true).
- Specify the time zone for a [staff member](/graph/api/resources/bookingStaffMember?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Cloud PC
[List](/graph/api/virtualendpoint-list-serviceplans?view=graph-rest-beta&preserve-view=true) the [Windows 365 service plans](/graph/api/resources/cloudPcServicePlan?view=graph-rest-beta&preserve-view=true) that an organization subscribes to for their Cloud PCs. Under each [service plan type](/graph/api/resources/cloudPcServicePlan?view=graph-rest-beta&preserve-view=true#cloudpcserviceplantype-values) (business or enterprise), an organization can choose to subscribe from a range of plan configurations that vary by attributes like vCPU, RAM, and storage.

### Identity and access | Directory management
Specify [key credential configuration settings](/graph/api/resources/keycredentialconfiguration?view=graph-rest-beta&preserve-view=true) that can be [configured to enable restrictions to an application or service principal](/graph/api/resources/appmanagementconfiguration?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
Enable the following additional [settings](/graph/api/resources/assignmentReviewSettings?view=graph-rest-beta&preserve-view=true) to review an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true):
- Default behavior if request is not reviewed in a specified duration (**accessReviewTimeoutBehavior** property).
- Display recommendations to reviewer (**isAccessRecommendationEnabled** property).
- Require reviewer to provide justification for approval (**isApprovalJustificationRequired** property).

### Identity and access | Identity and sign-in
- Specify whether [continuous access evaluation policy](/graph/api/resources/continuousAccessEvaluationPolicy?view=graph-rest-beta&preserve-view=true) settings should be or have been migrated to the [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- As a part of Azure Active Directory [conditional access](/azure/active-directory/conditional-access/overview), use a new session control, [continuousAccessEvaluationSessionControl](/graph/api/resources/continuousAccessEvaluationSessionControl?view=graph-rest-beta&preserve-view=true), to continuously evaluate access and make access decisions.

### Search | Index
- Specify [settings](/graph/api/resources/externalconnectors-searchsettings?view=graph-rest-beta&preserve-view=true) for the search experience of content in an [external connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true). For example, a [display template](/graph/api/resources/externalconnectors-displaytemplate?view=graph-rest-beta&preserve-view=true) for search results, and a [rule](/graph/api/resources/externalconnectors-propertyRule?view=graph-rest-beta&preserve-view=true) to select the display template.
- Relate one or more [external groups](/graph/api/resources/externalconnectors-externalgroup?view=graph-rest-beta&preserve-view=true) to an [external connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true). For example, an external group such as a business unit or work team can determine permissions to the content in the data source represented by the external connection.
- Can optionally specify the ID of a Teams app in an [external connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) in the **connectorId** property.

### Users
[Validate a password](/graph/api/user-validatePassword?view=graph-rest-beta&preserve-view=true) in real time against an organization's password validation policy, as a user types the password. Get [detailed information from the validation](/graph/api/resources/passwordValidationInformation?view=graph-rest-beta&preserve-view=true) against rules in the policy.



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
