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

## October 2022: New and generally available

### Education
- Use application permissions to update the [outcome](/graph/api/resources/educationoutcome) of an [assignment](/graph/api/resources/educationassignment).
- Use application permissions to [submit](/graph/api/educationsubmission-submit), [unsubmit](/graph/api/educationsubmission-unsubmit), [return](/graph/api/educationsubmission-return), or [reassign](/graph/api/educationsubmission-reassign) a [submission](/graph/api/resources/educationsubmission).

### Identity and access | Governance
Manage [access package](/graph/api/resources/accesspackage) or [group](/graph/api/resources/group) resources that are incompatible with one another.

### Identity and access | Identity and sign-in
Use an [authentication context class reference](/graph/api/resources/authenticationContextClassReference) to specify custom values for a [conditional access](/azure/active-directory/conditional-access/overview) authentication requirement, to build user-facing custom admin experiences.

### Teamwork and communications
[Send activity feed notifications to multiple users](/graph/api/teamwork-sendActivityNotificationToRecipients), in bulk.

## October 2022: New in preview only

### Device and app management | Cloud printing
[Get](/graph/api/print-list-recentshares?view=graph-rest-beta&preserve-view=true) a list of [printer share](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true) resources recently used by the signed-in user.

### Identity and access | Governance
Enable a [workflow](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true) or its subsequent versions to run on demand, or on schedule by the Lifecycle Workflows engine based on the schedule defined by tenant settings. 

### Identity and access | Identity and sign-in
[Get](/graph/api/conditionalaccesstemplate-get?view=graph-rest-beta&preserve-view=true) a Microsoft-recommended [template](/graph/api/resources/conditionalaccesstemplate?view=graph-rest-beta&preserve-view=true) of best practice configurations for Azure Active Directory [conditional access policies](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).

### Personal contact | Org control for contact insights
Administrators can configure tenant-level privacy control as [organization settings](/graph/api/resources/organizationSettings?view=graph-rest-beta&preserve-view=true) for displaying or returning contact insights in an organization. An example of contact insights is whether to identify duplicate contacts among a user's contacts list and suggest the user to merge those contacts to have a cleaner contacts list.

### Search | Query
Specify [options for searching for SharePoint or OneDrive content](/graph/api/resources/sharepointonedriveoptions?view=graph-rest-beta&preserve-view=true) - the kinds of content to be searched when performing a [search request](/graph/api/resources/searchRequest?view=graph-rest-beta&preserve-view=true) using application permissions.

### Security | Advanced hunting
[Query](/graph/api/security-security-runhuntingquery?view=graph-rest-beta&preserve-view=true) event, activity, or entity data in Microsoft 365 Defender to proactively look for specific threats in your environment. This [advanced hunting](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#advanced-hunting-preview) feature enables unconstrained hunting for both known and potential threats.

### Security | Alerts and incidents
Create a [comment](/graph/api/resources/security-alertcomment?view=graph-rest-beta&preserve-view=true) for an existing [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) or [incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true).

### Tasks and plans
[Get](/graph/api/plannertaskdetails-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/plannertaskdetails-update?view=graph-rest-beta&preserve-view=true) rich text description of a Planner [task](/graph/api/resources/plannertask?view=graph-rest-beta&preserve-view=true) intended for HTML-aware clients.

### Teamwork and communications | Messaging
- Subscribe to [change notification of membership in all the channels across a tenant](teams-changenotifications-teamMembership.md#subscribe-to-membership-changes-in-all-channels-across-the-tenant-preview). 
- [Set](/graph/api/chatmessage-setreaction?view=graph-rest-beta&preserve-view=true) or [unset](/graph/api/chatmessage-unsetreaction?view=graph-rest-beta&preserve-view=true) a reaction to a single [message](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) or a [message reply](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) in a Teams [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) or a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).


## September 2022: New and generally available

### Devices and apps | Corporate management
Intune [September updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-09-01&to=2022-09-30) for the v1.0 version.

### Identity and access | Directory management
[Add](/graph/api/administrativeunit-post-members) a [group](/graph/api/resources/group) as a member of an [administrative unit](/graph/api/resources/administrativeunit).

### Identity and access | Identity and sign-in
Identify the risk state in a [risky user](/graph/api/resources/riskyuser) or [sign-in](/graph/api/resources/signin) event as safe or compromised because an Microsoft 365 Defender administrator dismissed [risk detection](/graph/api/resources/riskdetection).

### Security | Attack simulation and training
GA of the API for [attack simulation and training](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true), which is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). The API enables tenant administrators to [list launched simulation exercises and trainings](/graph/api/attacksimulationroot-list-simulations), and get [reports](/graph/api/resources/report-m365defender-reports-overview) on derived insights into online behaviors of users in the phishing simulations.

### Teamwork and communications | Calls and online meetings
- Configure [broadcast settings](/graph/api/resources/broadcastMeetingSettings) to create an [online meeting](/graph/api/resources/onlinemeeting) as a live event. See an [example](/graph/api/application-post-onlinemeetings#example-2-create-a-microsoft-teams-live-event-with-user-token).
- [Turn on the large gallery view](/graph/api/call-addLargeGalleryView) to display participants on a Teams call. For more information about the large gallery view on a call, check out the section titled "[see more participants](https://support.microsoft.com/office/customize-your-meeting-view-95aaeaf8-0f22-46cf-a6f9-34ca9b04a1b2#:~:text=See%20more%20participants)".
- Get the [sessions where users share content](/graph/api/resources/contentSharingSession) in a [call](/graph/api/resources/call).

### Teamwork and communications | Messaging
Get the details of [pinning](/graph/api/resources/messagePinnedEventMessageDetail) or [unpinning](/graph/api/resources/messageUnpinnedEventMessageDetail) a [chatMessage](/graph/api/resources/chatmessage) in a [chat](/graph/api/resources/chat).

### Use the API | Batching
For apps that make multiple requests on Outlook resources in the same mailbox, you can now further optimize app performance by using [JSON batching](json-batching.md) to combine _more than 4 such requests_ in one HTTP call. The previous limit on _batching_ up to 4 requests on the same mailbox has been removed.

## September 2022: New in preview only

### Devices and apps | Corporate management
Intune [September updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-09-01&to=2022-09-30) for the beta version.

### Files 
[Assign a sensitivity label](/graph/api/driveitem-assignsensitivitylabel?view=graph-rest-beta&preserve-view=true) to a file in OneDrive or SharePoint. 

### Identity and access | Governance
As part of a [policy for access package assignment](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true), you can specify or get the required regex pattern for a requestor to answer an [access package question](/graph/api/resources/accessPackageTextInputQuestion?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Identify the risk state in a [risky user](/graph/api/resources/riskyuser?view=graph-rest-beta&preserve-view=true) or [sign-in](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) event as safe or compromised based on one of the following reasons:
  - An administrator has dismissed all risks for the service principal.
  - An administrator confirmed the service principal has been compromised.
- Allow internal guests or external users to be among the types of [conditional access users](/graph/api/resources/conditionalaccessusers?view=graph-rest-beta&preserve-view=true) that can be included or excluded in the scope of a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).

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
- [List the apps](/graph/api/user-list-approleassignedresources?view=graph-rest-beta&preserve-view=true) to which a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) has an [app role assignment](/graph/api/resources/approleassignment?view=graph-rest-beta&preserve-view=true) either directly or through group membership.


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
