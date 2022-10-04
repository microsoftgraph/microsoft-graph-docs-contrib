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

## September 2022: New and generally available

### Identity and access | Directory management
[Add](/graph/api/administrativeunit-post-members) a [group](/graph/api/resources/group) as a member of an [administrative unit](/graph/api/resources/administrativeunit).

### Identity and access | Identity and sign-in
Identify the risk state in a [risky user](/graph/api/resources/riskyuser) or [sign-in](/graph/api/resources/signin) event as safe or compromised because an Microsoft 365 Defender administrator dismissed [risk detection](/graph/api/resources/riskdetection).

## September 2022: New in preview only

### Files 
[Assign a sensitivity label](/graph/api/driveitem-assignsensitivitylabel?view=graph-rest-beta&preserve-view=true) to a file in OneDrive or SharePoint. 

### Identity and access | Governance
As part of a [policy for access package assignment](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true), you can specify or get the required regex pattern for a requestor to answer an [access package question](/graph/api/resources/accessPackageTextInputQuestion?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
Identify the risk state in a [risky user](/graph/api/resources/riskyuser?view=graph-rest-beta&preserve-view=true) or [sign-in](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) event as safe or compromised based on one of the following reasons:
- An administrator has dismissed all risks for the service principal.
- An administrator confirmed the service principal has been compromised.

### Teamwork and communications
- Subscribe to change notifications in a tenant where a specific Teams app is installed, for the following resources:
  - [Any message in any chat](/graph/teams-changenotifications-chatmessage?view=graph-rest-beta&preserve-view=true#subscribe-to-messages-of-any-chat-in-a-tenant-where-a-specific-teams-app-is-installed-preview)
  - [Any chat](/graph/teams-changenotifications-chat?view=graph-rest-beta&preserve-view=true#subscribe-to-changes-in-any-chat-in-a-tenant-where-a-teams-app-is-installed-preview)
  - [Membership of any chat](/graph/teams-changenotifications-chatmembership?view=graph-rest-beta&preserve-view=true#subscribe-to-changes-in-membership-of-any-chat-in-a-tenant-where-a-teams-app-is-installed-preview)
- Use the following least privileged application permission necessary for a [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) for chats, chat messages, or chat members as listed in the preceding scenarios:
  - `Chat.ReadBasic.WhereInstalled`
  - `Chat.Read.WhereInstalled`
  - `Chat.ReadWrite.WhereInstalled`
  - `ChatMember.Read.WhereInstalled`
  - `ChatMember.ReadWrite.WhereInstalled`

### Users
- Get or set the date for an employee leaving an organization as part of the [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) resource.
- Use the [authorization info](/graph/api/resources/authorizationInfo?view=graph-rest-beta&preserve-view=true) resource to bind IDs of smart card certificates of an Azure AD user for identification and authentication to non-Azure AD environments, such as on-premises Active Directory deployments or federated environments.


## August 2022: New and generally available

### Applications
Use [federated identity credentials](/graph/api/resources/federatedidentitycredential) to manage an application's credentials and allow an organization's cloud applications to access Azure AD without using secrets and certificates.

### Devices and apps | Corporate management
Intune [August updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-08-01&to=2022-08-31) for the v1.0 version.

### Identity and access | Governance
Manage a [policy](/graph/api/resources/accessPackageAssignmentPolicy) that assigns an [access package](/graph/api/resources/accesspackage) to a subject automatically, as opposed to assigning on the subject's request.

### Identity and access | Identity and sign-in
- GA of [authentication methods](/graph/api/resources/authenticationmethods-overview) including [email](/graph/api/resources/emailauthenticationmethod), [password](/graph/api/resources/passwordauthenticationmethod), [phone](/graph/api/resources/phoneauthenticationmethod), and [software OATH](/graph/api/resources/softwareoathauthenticationmethod). 
- [Reset a user password](/graph/api/authenticationmethod-resetpassword) and [get the operation status](/graph/api/authenticationoperation-get) for a [long-running operation](/graph/api/resources/longrunningoperation).
- Manage [session controls](/graph/api/resources/conditionalaccesssessioncontrols) to enforce sign-in frequency in a [conditional access policy](/graph/api/resources/conditionalaccesspolicy).

### Sites and lists
Manage the [version history of a document set](/graph/api/resources/documentsetversion) in SharePoint, allowing apps to capture the document set (folder) and its contents (documents) at a point in time.

### Teamwork and communications | Calls and online meetings
- [Get](/graph/api/calltranscript-get?view=graph-rest-beta&preserve-view=true) a specific [transcript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) or all the transcripts of an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- [Set](/graph/api/presence-setuserpreferredpresence) or [clear](/graph/api/presence-clearuserpreferredpresence) the preferred availability and activity status for a user.
- Get a [call record](/graph/api/resources/callrecords-callrecord) of calls or online meetings that use Azure Communication Service as a [client user agent](/graph/api/resources/callrecords-clientuseragent) in an [endpoint](/graph/api/resources/callrecords-endpoint).

### Teamwork and communications | Messaging
- Limit a [chat](/graph/api/resources/chat) title to a maximum of 255 characters and characters that are _not_ the colon. 
- [List](/graph/api/chat-list) the chats of a specific user who may not be signed in or is different from the signed-in user, using application permissions.
- [List](/graph/api/chat-list) and sort chats starting with the most recent ones.


## August 2022: New in preview only

### Applications
- Specify if an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) requires [Azure AD to verify signed authentication requests](/graph/api/resources/requestSignatureVerification?view=graph-rest-beta&preserve-view=true).
- Configure [Azure AD Application Proxy](/azure/active-directory/app-proxy/what-is-application-proxy) to [publish on-premises apps](/graph/api/resources/onPremisesPublishing?view=graph-rest-beta&preserve-view=true) for remote users.

### Calendar | Places
[Get](/graph/api/place-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/place-update?view=graph-rest-beta&preserve-view=true) a [workspace](/graph/api/resources/workspace?view=graph-rest-beta&preserve-view=true) in a tenant.

### Devices and apps | Cloud PC
[Restore](/graph/api/cloudpc-restore?view=graph-rest-beta&preserve-view=true) a Cloud PC to a prior state.

### Devices and apps | Corporate management
Intune [August updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-08-01&to=2022-08-31) for the beta version.

### Files
[Get](/graph/api/tenantadmin-settings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/tenantadmin-settings-update?view=graph-rest-beta&preserve-view=true) tenant-wide [settings](/graph/api/resources/tenantadmin-settings?view=graph-rest-beta&preserve-view=true) for SharePoint and OneDrive:
- The [idle session sign-out policy settings](/graph/api/resources/tenantadmin-idlesessionsignout?view=graph-rest-beta&preserve-view=true) for SharePoint.
- Whether legacy authentication protocols are enabled for the tenant.
- Whether guests must sign in using the same account to which sharing invitations are sent.

### Identity and access | Governance
- Configure [group peer outlier insights](/graph/api/resources/groupPeerOutlierRecommendationInsightSettings?view=graph-rest-beta&preserve-view=true) that help reviewers make decisions for an [access review schedule definition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true) based on the access that the user's peers have.
- [Create](/graph/api/identitygovernance-lifecycleworkflowscontainer-post-workflows?view=graph-rest-beta&preserve-view=true), [activate](/graph/api/identitygovernance-workflow-activate?view=graph-rest-beta&preserve-view=true), and maintain [Azure AD lifecycle workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview?view=graph-rest-beta&preserve-view=true) to manage Azure AD users by automating lifecycle processes, including the following:
  - When a user comes into scope of needing access, such as joining an organization.
  - When a user moves between boundaries within an organization, such that the move requires more access.
  - When a user leaves the scope of needing access, such as leaving or retiring from an organization.

  Use [lifecycle workflow reporting](/graph/api/resources/identitygovernance-lifecycleworkflows-reporting-overview?view=graph-rest-beta&preserve-view=true) to get insight into how lifecycle workflows are processed.

### Identity and access | Identity and sign-in
Use [Microsoft authenticator authentication method configuration](/graph/api/resources/microsoftAuthenticatorAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) as an authentication methods policy to configure and allow users to use specific authentication methods, such as number matching and location context, and whether to enable the methods for all users or specific users.

### Mail
Track and get specifically only created, updated, or deleted messages in a [delta](/graph/api/message-delta?view=graph-rest-beta&preserve-view=true) request.

### Reports | Identity and access reports
[Get](/graph/api/userregistrationdetails-get?view=graph-rest-beta&preserve-view=true) more details about [authentication registration by users](/graph/api/resources/userregistrationdetails?view=graph-rest-beta&preserve-view=true) in a tenant - whether a user is a member or guest, and whether the user has an admininstrator role in the tenant.

### Security | Alerts and incidents
Use the latest generation of [alerts and incidents](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#alerts) that aggregate alert data from security providers integrated with Microsoft 365 Defender, correlate clues and [evidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true) to provide a richer, broader context of an attack. These [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) and [incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true) resources offer consistent actionability across the different providers, making it easy for analysts to collectively investigate and respond to threats.

### Teamwork and communications | Calls and online meetings
[Get](/graph/api/calltranscript-get?view=graph-rest-beta&preserve-view=true) a specific [transcript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) or all the transcripts of an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging
[List](/graph/api/chat-list?view=graph-rest-beta&preserve-view=true) and sort chats in descending order.


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
