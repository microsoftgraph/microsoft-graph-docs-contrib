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


## November 2022: New and generally available

### Education
- [Create](/graph/api/educationassignment-setupfeedbackresourcesfolder) a SharePoint folder for an [assignment](/graph/api/resources/educationassignment) to upload feedback documents.
- [Create](/graph/api/educationfeedbackresourceoutcome-post-outcomes) a [feedback document](/graph/api/resources/educationFeedbackResourceOutcome) for a [submission](/graph/api/resources/educationsubmission) in the feedback folder associated with the assignment.

### Identity and access | Directory management
[List](/graph/api/directory-deleteditems-list) or [restore](/graph/api/directory-deleteditems-restore) deleted [administrative unit](/graph/api/resources/administrativeunit).

### Teamwork and communications | Messaging
- Only the tenant admin of the sender of a [chat message](/graph/api/resources/chatmessage) can [update](/graph/api/chatmessage-update) and override a [policy violation](/graph/api/resources/chatmessagepolicyviolation) on the message. Usually, a data loss prevention (DLP) application takes action when a sender violates policy and sends data they should not send. 
- [Send activity feed notifications](teams-send-activityfeednotifications.md) to a user, to a user in a chat, or to a user in a team, based on the supported types of [activities](/microsoftteams/platform/resources/schema/manifest-schema#activities) declared in the corresponding app manifest.


## November 2022: New in preview only

### Applications
- Enable or disable the [lock configuration of sensitive properties](/graph/api/resources/serviceprincipallockconfiguration?view=graph-rest-beta&preserve-view=true) of a multi-tenant [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) for editing after the application is provisioned in a tenant. 
- Address a [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) by a new alternate key, **appId**.

### Devices and apps | Browser management
Administrators can use the [Edge API in Microsoft Graph](/graph/api/resources/browser-edge-api-overview?view=graph-rest-beta&preserve-view=true) in an app to manage an organization's browser site lists for Internet Explorer (IE) mode that reside in the cloud, much like the way they can do it in the [Microsoft 365 admin center](https://admin.microsoft.com/). With proper permissions, the app can create a [browser site list](/graph/api/resources/browsersitelist?view=graph-rest-beta&preserve-view=true), add a [browser site](/graph/api/resources/browsersite?view=graph-rest-beta&preserve-view=true) and [shared cookie](/graph/api/resources/browsersharedcookie?view=graph-rest-beta&preserve-view=true), and [publish](/graph/api/browsersitelist-publish?view=graph-rest-beta&preserve-view=true) the site list for Microsoft Edge to download.

### Identity and access | Directory management
Use the [assignedPrincipals](/graph/api/unifiedroledefinition-assignedprincipals?view=graph-rest-beta&preserve-view=true) method to get the list of security principals (users, groups, and service principals) that are assigned to a specific role for different scopes either directly or transitively.

### Search | Index
Specify in a [schema](/graph/api/resources/externalconnectors-schema?view=graph-rest-beta&preserve-view=true) property definition for a [connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) whether to match the property exactly for queries.

### Search | Query
Specify in a [search request](/graph/api/resources/searchRequest?view=graph-rest-beta&preserve-view=true) one or more [criteria](/graph/api/resources/collapseproperty?view=graph-rest-beta&preserve-view=true) to collapse search results.


## October 2022: New and generally available

### Devices and apps | Corporate management
Intune [October updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-10-01&to=2022-10-31) for v1.0.

### Education
- Use application permissions to update the [outcome](/graph/api/resources/educationoutcome) of an [assignment](/graph/api/resources/educationassignment).
- Use application permissions to [submit](/graph/api/educationsubmission-submit), [unsubmit](/graph/api/educationsubmission-unsubmit), [return](/graph/api/educationsubmission-return), or [reassign](/graph/api/educationsubmission-reassign) a [submission](/graph/api/resources/educationsubmission).

### Identity and access | Governance
Manage [access package](/graph/api/resources/accesspackage) or [group](/graph/api/resources/group) resources that are incompatible with one another.

### Identity and access | Identity and sign-in
- Use an [authentication context class reference](/graph/api/resources/authenticationContextClassReference) to specify custom values for a [conditional access](/azure/active-directory/conditional-access/overview) authentication requirement, to build user-facing custom admin experiences.
- Enable or disable users and groups in an organization to use the [Azure AD native Certificate-Based Authentication (CBA)](/graph/api/resources/x509CertificateAuthenticationMethodConfiguration).
- [Get](/graph/api/conditionalaccesstemplate-get) [conditional access details](/graph/api/resources/conditionalaccesspolicydetail) in a [template](/graph/api/resources/conditionalaccesstemplate) that is recommended by Microsoft as best practice configurations for an Azure Active Directory [conditional access policy](/graph/api/resources/conditionalaccesspolicy).
- [Get](/graph/api/microsoftauthenticatorauthenticationmethodconfiguration-get) or [update](/graph/api/microsoftauthenticatorauthenticationmethodconfiguration-update) specific [feature settings](/graph/api/resources/microsoftAuthenticatorFeatureSettings) for Microsoft Authenticator, for example, whether to show the app that the user is signing into, or the geographic location from which the authentication request originated.

### Reports | Microsoft 365 usage reports
Get reports for [Microsoft 365 app usage](/graph/api/resources/microsoft-365-apps-usage-report), including the usage of Microsoft 365 apps by user, the number of daily unique active users by app, and the number of daily unique active users across all apps by platform (Windows, Mac, web, and mobile).

### Teamwork and communications | Calls and online meetings
When [inviting](/graph/api/participant-invite) a [participant](/graph/api/resources/invitationparticipantinfo) to a [call](/graph/api/resources/call), you can specify whether to hide the participant from the roster or remove the participant from the main mixer.

### Teamwork and communications | Messaging
- [Send activity feed notifications to multiple users](/graph/api/teamwork-sendActivityNotificationToRecipients), in bulk.
- [Hide](/graph/api/chat-hideforuser) or [unhide](/graph/api/chat-unhideforuser) a [chat](/graph/api/resources/chat) for a user.
- Using delegated permissions to [list chats](/graph/api/chat-list) now takes the [viewpoint](/graph/api/resources/chatviewpoint) of the specific user into account. The viewpoint includes whether the user has hidden the chat, and the date/time when the user last read a message in that chat.


## October 2022: New in preview only

### Device and app management | Cloud PCs
- Use an [alert rule](/graph/api/resources/devicemanagement-alertrule?view=graph-rest-beta&preserve-view=true) with prefered notification channels, like email and Microsoft Endpoint Manager admin center notification, to monitor and receive alerts when conditions set in alert rules are met. Currently issues with Cloud PCs such as provisioning or checking on-premise network connections can trigger alerts.
- For customers accessing their Cloud PCs in the US Government Community Cloud (GCC), administrators can [set up](/graph/api/virtualendpoint-post-crosscloudgovernmentorganizationmapping?view=graph-rest-beta&preserve-view=true) a [mapping](/graph/api/resources/cloudpccrosscloudgovernmentorganizationmapping?view=graph-rest-beta&preserve-view=true) between the the Azure Active Directory in the public cloud and GCC. Use the mapping to update the security and compliance requirements for the FedRAMP certification and onboarding to GCC.
- Get real-time or aggregated [reports](/graph/api/resources/cloudPcReports?view=graph-rest-beta&preserve-view=true) about Cloud PC remote connection. You can also download a report by an [export job](/graph/api/resources/cloudpcexportjob?view=graph-rest-beta&preserve-view=true), where you can specify a filter, columns, and format.

### Device and app management | Cloud printing
[Get](/graph/api/print-list-recentshares?view=graph-rest-beta&preserve-view=true) a list of [printer share](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true) resources recently used by the signed-in user.

### Devices and apps | Corporate management
Intune [October updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-10-01&to=2022-10-31) for the beta version.

### Devices and apps | Multi-tenant management
- Support a status of granular delegated admin privileges (GDAP) or delegated and granular delegated admin privileges relationship between a managing entity and a [managed tenant](/graph/api/resources/managedtenants-tenant?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
- Enable a [workflow](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true) or its subsequent versions to run on demand, or on schedule by the Lifecycle Workflows engine based on the schedule defined by tenant settings. 
- [Move](/graph/api/accesspackage-movetocatalog?view=graph-rest-beta&preserve-view=true) an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true) to a specified target [access package catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- [Get](/graph/api/conditionalaccesstemplate-get?view=graph-rest-beta&preserve-view=true) a Microsoft-recommended [template](/graph/api/resources/conditionalaccesstemplate?view=graph-rest-beta&preserve-view=true) of best practice configurations for Azure Active Directory [conditional access policies](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- Include an [authentication strength policy](/graph/api/resources/authenticationstrengthpolicy?view=graph-rest-beta&preserve-view=true) as part of [conditonal access grant controls](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta&preserve-view=true) to be fulfilled to pass a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true). An authentication strength policy defines specific combinations of authentication methods to be used to authenticate in the corresponding scenario.
- Configure an [authorization policy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) to allow [user consent for risky apps](/azure/active-directory/manage-apps/configure-risk-based-step-up-consent).
- Specify a dynamic application syntax rule as a [filter](/graph/api/resources/conditionalaccessfilter?view=graph-rest-beta&preserve-view=true) to [include or exclude cloud applications](/graph/api/resources/conditionalaccessapplications?view=graph-rest-beta&preserve-view=true) from a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- Specify a dynamic service principal syntax rule as a [filter](/graph/api/resources/conditionalaccessfilter?view=graph-rest-beta&preserve-view=true) to [include or exclude service principals](/graph/api/resources/conditionalaccessclientapplications?view=graph-rest-beta&preserve-view=true) from a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).

### Personal contact | Org control for contact insights
Administrators can configure tenant-level privacy control as [organization settings](/graph/api/resources/organizationSettings?view=graph-rest-beta&preserve-view=true) for displaying or returning contact insights in an organization. An example of contact insights is whether to identify duplicate contacts among a user's contacts list and suggest the user to merge those contacts to have a cleaner contacts list.

### Search | Query
- Specify [options for searching for SharePoint or OneDrive content](/graph/api/resources/sharepointonedriveoptions?view=graph-rest-beta&preserve-view=true) - the kinds of content to be searched when performing a [search request](/graph/api/resources/searchRequest?view=graph-rest-beta&preserve-view=true) using application permissions.
- Include in a [search request](/graph/api/resources/searchrequest?view=graph-rest-beta&preserve-view=true) the possible resource types of [acronym](/graph/api/resources/search-acronym?view=graph-rest-beta&preserve-view=true), [bookmark](/graph/api/resources/search-bookmark?view=graph-rest-beta&preserve-view=true), or [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) in the search response.

### Security | Advanced hunting
[Query](/graph/api/security-security-runhuntingquery?view=graph-rest-beta&preserve-view=true) event, activity, or entity data in Microsoft 365 Defender to proactively look for specific threats in your environment. This [advanced hunting](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#advanced-hunting-preview) feature enables unconstrained hunting for both known and potential threats.

### Security | Alerts and incidents
Create a [comment](/graph/api/resources/security-alertcomment?view=graph-rest-beta&preserve-view=true) for an existing [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true) or [incident](/graph/api/resources/security-incident?view=graph-rest-beta&preserve-view=true).

### Tasks and plans
[Get](/graph/api/plannertaskdetails-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/plannertaskdetails-update?view=graph-rest-beta&preserve-view=true) rich text description of a Planner [task](/graph/api/resources/plannertask?view=graph-rest-beta&preserve-view=true) intended for HTML-aware clients.

### Teamwork and communications | Messaging
- Subscribe to [change notification of membership in all the channels across a tenant](teams-changenotifications-teamMembership.md#subscribe-to-membership-changes-in-all-channels-across-the-tenant-preview). 
- [Set](/graph/api/chatmessage-setreaction?view=graph-rest-beta&preserve-view=true) or [unset](/graph/api/chatmessage-unsetreaction?view=graph-rest-beta&preserve-view=true) a reaction to a single [message](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) or a [message reply](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) in a Teams [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) or a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).
- Only the tenant admin of the sender of a [chat message](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) can [update](/graph/api/chatmessage-update?view=graph-rest-beta&preserve-view=true) and override a [policy violation](/graph/api/resources/chatmessagepolicyviolation?view=graph-rest-beta&preserve-view=true) on the message. Usually, a data loss prevention (DLP) application takes action when a sender violates policy and sends data they should not send. 
- Be aware that the [identity](/graph/api/resources/teamworkUserIdentity?view=graph-rest-beta&preserve-view=true) of a user in a Teams chat or online meeting can now be an Azure Communication Services user.


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
