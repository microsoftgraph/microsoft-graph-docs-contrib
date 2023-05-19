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


## May 2023: New and generally available

### Identity and access | Directory management
Intune sets properties on a [device](/graph/api/resources/device) registered in an organization used for multi-factor authentication in conditional access policies:  **deviceCategory**, **deviceOwnership**, **enrollmentProfileName**, and **registrationDateTime**.

### Identity and access | Identity and sign-in
Specify as conditional access conditions whether to exclude or include [guests or external users](/graph/api/resources/conditionalAccessGuestsOrExternalUsers) as part of the [condition set for conditional access](/graph/api/resources/conditionalaccessconditionset).

### Sites and lists
[Get](/graph/api/sharepointsettings-get) or [update](/graph/api/sharepointsettings-update) tenant-wide [settings](/graph/api/resources/sharepointsettings) for SharePoint and OneDrive, which include a number of settings such as the following:
- The [idle session sign-out policy settings](/graph/api/resources/idlesessionsignout) for SharePoint.
- Whether legacy authentication protocols are enabled for the tenant.
- Whether guests must sign in using the same account to which sharing invitations are sent.


## May 2023: New in preview only

### Identity and access | Governance
When [getting a list](/graph/api/accessreviewinstance-list-decisions?view=graph-rest-beta&preserve-view=true) of every [decision for an instance of an access review](/graph/api/resources/accessreviewinstancedecisionitem?view=graph-rest-beta&preserve-view=true), access reviewers can expand to find the last user who modified any [insight that a user has low affiliation and is an outlier with other users within the group](/graph/api/resources/membershipoutlierinsight?view=graph-rest-beta&preserve-view=true).

## April 2023: New and generally available

### Device and app management | Browser management
Administrators can use the [Edge API in Microsoft Graph](/graph/api/resources/browser-edge-api-overview) in an app to manage an organization's browser site lists for Internet Explorer (IE) mode that reside in the cloud, much like the way they can do it in the [Microsoft 365 admin center](https://admin.microsoft.com/). With proper permissions, the app can create a [browser site list](/graph/api/resources/browsersitelist), add a [browser site](/graph/api/resources/browsersite) and [shared cookie](/graph/api/resources/browsersharedcookie), and [publish](/graph/api/browsersitelist-publish) the site list for Microsoft Edge to download.

### Identity and access | Identity and sign-in
- Include an [authentication strength policy](/graph/api/resources/authenticationstrengthpolicy) as part of [conditonal access grant controls](/graph/api/resources/conditionalaccessgrantcontrols) to be fulfilled to pass a [conditional access policy](/graph/api/resources/conditionalaccesspolicy). An authentication strength policy defines specific combinations of authentication methods to be used to authenticate in the corresponding scenario.
- As part of the [default user role](/graph/api/resources/defaultuserrolepermissions) of an [authorization policy](/graph/api/resources/authorizationPolicy), specify whether the registered owner of a device can read their own BitLocker recovery keys.

### Search | Query
Qualify a [search query](/graph/api/resources/searchquery) string with a query template, which supports KQL and query variables.

### Teamwork and communications | Calls and online meetings
Specify whether content for an [online meeting](/graph/api/resources/onlinemeeting), such as shared content or video feed, should have [watermark protection](/graph/api/resources/watermarkprotectionvalues). To support watermarking content, client applications must implement and apply the watermarking.

### Teamwork and communications | Messaging
Subscribe to change notifications in a tenant where a specific Teams app is installed, for the following resources:
- [Any message in any chat](/graph/teams-changenotifications-chatmessage#subscribe-to-messages-of-any-chat-in-a-tenant-where-a-specific-teams-app-is-installed)
- [Any chat](/graph/teams-changenotifications-chat#subscribe-to-changes-in-any-chat-in-a-tenant-where-a-teams-app-is-installed)
- [Membership of any chat](/graph/teams-changenotifications-chatmembership#subscribe-to-changes-in-membership-of-any-chat-in-a-tenant-where-a-teams-app-is-installed)

## April 2023: New in preview only

### Device and app management | Cloud PC
- [Start](/graph/api/cloudpc-start?view=graph-rest-beta&preserve-view=true) or [stop](/graph/api/cloudpc-stop?view=graph-rest-beta&preserve-view=true) a [Windows 365 Frontline](https://www.microsoft.com/en-us/windows-365/frontline) [Cloud PC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) for a user.
- IT administrators can [power on](/graph/api/cloudpc-poweron?view=graph-rest-beta&preserve-view=true) or [power off](/graph/api/cloudpc-poweroff?view=graph-rest-beta&preserve-view=true) a Windows 365 Frontline [Cloud PC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true). After powering on a Cloud PC, an IT administrator can allocate and assign licenses to a user.

### Device and app management | Corporate management
Intune [April updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-04-01&to=2023-04-30) for the beta version.

### Education
- Teachers can [activate](/graph/api/educationassignment-activate?view=graph-rest-beta&preserve-view=true) an inactive [assignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) to signal that the assignment has further action items for teachers or students.
- Teachers can [deactivate](/graph/api/educationassignment-deactivate?view=graph-rest-beta&preserve-view=true) and mark an assignment as inactive to signal that the assignment has no further action items for teachers and students.

### Identity and access | Directory management
[List](/graph/api/devicelocalcredentialinfo-list?view=graph-rest-beta&preserve-view=true) or [get](/graph/api/devicelocalcredentialinfo-get?view=graph-rest-beta&preserve-view=true) local administrator credential information for all device objects in Azure Active Directory that are enabled with [Local Admin Password Solution (LAPS)](/windows-server/identity/laps/laps-scenarios-azure-active-directory). For more information on LAPS, see [Windows Local Administrator Password Solution in Azure AD (preview)](/azure/active-directory/devices/howto-manage-local-admin-passwords).

### Identity and access | Governance
- Use the new `LifecycleWorkflows.ReadWrite.All` delegated or application permission to [resume](/graph/api/identitygovernance-taskprocessingresult-resume?view=graph-rest-beta&preserve-view=true) a task-processing result that's in progress.
- [Get](/graph/api/accesspackageassignmentpolicy-get?view=graph-rest-beta&preserve-view=true) the [settings for verifiable credentials](/graph/api/resources/verifiablecredentialsettings?view=graph-rest-beta&preserve-view=true) in an [access package assignment policy](/graph/api/resources/accessPackageAssignmentPolicy?view=graph-rest-beta&preserve-view=true), that have been set up in the [Microsoft Entra Verified ID](/azure/active-directory/verifiable-credentials/decentralized-identifier-overview) verification solution. These settings represent the verifiable credentials that a requestor of an access package in this policy can present to be assigned the access package. The types of verifiable credentials that a requestor presents include the type of the credential issued, such as `BusinessCardCredential`, and list of accepted issuers.

### Identity and access | Identity and sign-in
- Get or update the [permissions for the default user role](/graph/api/resources/defaultuserrolepermissions?view=graph-rest-beta&preserve-view=true?view=graph-rest-beta&preserve-view=true) in an [authorization policy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) to allow creating tenants in an Azure Active Directory organization.
- Get or update the settings in an [authentication methods policy](/graph/api/resources/authenticationMethodsPolicy?view=graph-rest-beta&preserve-view=true) for selected users or groups to be included or excluded from being prompted with their [preferred multifactor authentication methods](/graph/api/resources/systemcredentialpreferences?view=graph-rest-beta&preserve-view=true) for their Azure Active Directory organization.
- To support [Windows Local Administrator Password Solution (LAPS) in Azure AD](/azure/active-directory/devices/howto-manage-local-admin-passwords), administrators can [get](/graph/api/deviceregistrationpolicy-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/deviceregistrationpolicy-update?view=graph-rest-beta&preserve-view=true) [local admin password settings](/graph/api/resources/localAdminPasswordSettings?view=graph-rest-beta&preserve-view=true) in the [device registration policy](/graph/api/resources/deviceRegistrationPolicy?view=graph-rest-beta&preserve-view=true) for an organization.

### Reports | Azure AD activity reports
List any [managed identity](/graph/api/resources/managedIdentity?view=graph-rest-beta&preserve-view=true) used for a [sign-in](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) activity, including the identity type and associated Azure Resource Manager (ARM) resource ID.

### Reports | Microsoft 365 usage reports
For Microsoft Forms:
- [Get usage reports for activity counts by activity type](/graph/api/reportroot-getformsuseractivitycounts?view=graph-rest-beta&preserve-view=true).
- [Get usage reports for activity counts by user type](/graph/api/reportroot-getformsuseractivityusercounts?view=graph-rest-beta&preserve-view=true).
- [Get usage reports for details of form activity by user](/graph/api/reportroot-getformsuseractivityuserdetail?view=graph-rest-beta&preserve-view=true).

### Search | Index
Get or set the relative ranking importance of a [property](/graph/api/resources/externalconnectors-property?view=graph-rest-beta&preserve-view=true) in a [schema](/graph/api/resources/externalconnectors-schema?view=graph-rest-beta&preserve-view=true), to allow Microsoft Search to determine the search relevance of the content.

### Teamwork and communications | Calls and online meetings
- [Get the metadata content](/graph/api/calltranscript-get?view=graph-rest-beta&preserve-view=true#example-6-get-a-calltranscript-metadatacontent) of a [call transcript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) in a stream.
- [Get a log of users who are blocked or unblocked](/graph/api/callrecords-callrecord-getpstnblockeduserslog?view=graph-rest-beta&preserve-view=true) from making public switched telephone network (PSTN) calls in Microsoft Teams.
- [Get an aggregated report of the usage and money spent](/graph/api/callrecords-callrecord-getpstnonlinemeetingdialoutreport?view=graph-rest-beta&preserve-view=true) for audio conferencing dial-out service. The report includes the cost, number of dial-out calls, and total time of use over a selected period.
- [Get a log of sent or received SMS messages](/graph/api/callrecords-callrecord-getsmslog?view=graph-rest-beta&preserve-view=true).
- In addition to existing data in a [PSTN call log row](/graph/api/resources/callrecords-pstncalllogrow?view=graph-rest-beta&preserve-view=true), [get](/graph/api/callrecords-callrecord-getpstncalls?view=graph-rest-beta&preserve-view=true) the country code for the second party in the PSTN call.
- In addition to existing data in a [direct routing call log row](/graph/api/resources/callrecords-directroutinglogrow?view=graph-rest-beta&preserve-view=true), [get](/graph/api/callrecords-callrecord-getdirectroutingcalls?view=graph-rest-beta&preserve-view=true) the country codes of the two parties in the direct routing call.
- [Get the join URL](/graph/api/virtualappointment-getvirtualappointmentjoinweburl?view=graph-rest-beta&preserve-view=true) for an appointment on the [Virtual Appointments](https://support.microsoft.com/office/what-is-virtual-appointments-22df0079-e6d9-4225-bc65-22747fb2cb5f) app for Microsoft Teams. Existing customers who use the prior [virtual appointment](/graph/api/resources/virtualappointment?view=graph-rest-beta&preserve-view=true) API in their apps should update their apps to integrate with the Virtual Appointments app before the API stops returning data on June 20, 2023. For more information, see [Virtual Appointments with Microsoft Teams](/microsoft-365/frontline/virtual-appointments?view=o365-worldwide&preserve-view=true). 
- Get or set the option to share the chat history of an [online meeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta&preserve-view=true) with participants.
- [Listing](/graph/api/callrecords-session-list?view=graph-rest-beta&preserve-view=true) sessions in a [call record](/graph/api/resources/callrecords-callrecord?view=graph-rest-beta&preserve-view=true) can now identify those sessions that took place for testing purpose.
- Represent CPU capabilities of a caller or callee [participant endpoint](/graph/api/resources/callrecords-participantendpoint?view=graph-rest-beta&preserve-view=true) in a [call](/graph/api/resources/call?view=graph-rest-beta&preserve-view=true) or [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- Track the freeze duration data of a video stream in a [media stream](/graph/api/resources/callRecords-mediaStream?view=graph-rest-beta&preserve-view=true).
- Communications servers can publish [deltaParticipants](/graph/api/resources/deltaParticipants?view=graph-rest-beta&preserve-view=true) notifications for the creation, update, or deletion of a [participant](/graph/api/resources/participant?view=graph-rest-beta&preserve-view=true) in a [call](/graph/api/resources/call?view=graph-rest-beta&preserve-view=true). For more information, see [JSON payload examples](/graph/api/application-post-calls?view=graph-rest-beta&preserve-view=true#notification---roster) of notifications with delta roster disabled or enabled.

### Teamwork and communications | Employee learning
Track an [activity that is part of a learning course in Viva Learning](/graph/api/resources/learningCourseActivity?view=graph-rest-beta&preserve-view=true), for a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) and for a [learning provider](/graph/api/resources/learningprovider?view=graph-rest-beta&preserve-view=true). Differentiate between an [activity that's been assigned to the user](/graph/api/resources/learningAssignment?view=graph-rest-beta&preserve-view=true), and an [activity that is initiated by the user](/graph/api/resources/learningSelfInitiatedCourse?view=graph-rest-beta&preserve-view=true).


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
