---
title: "Highlights of earlier releases in Microsoft Graph"
description: "What was new earlier in Microsoft Graph"
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# Highlights of earlier releases

## January 2023: New and generally available

### Device and app management | Corporate management
Intune [January updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-01-01&to=2023-01-31) for the v1.0 version.

### Identity and access | Directory management
Get the country code that represents the default service usage location of an [organization](/graph/api/resources/organization). 

### Security | Attack simulation and training
- [Get](/graph/api/attacksimulationroot-get-simulationautomations) information about an [automated attack simulation](/graph/api/resources/simulationautomation) for a tenant.
- [Get a list](/graph/api/simulationautomation-list-runs) of [automated runs of attack simulation](/graph/api/resources/simulationautomationrun) for a tenant.

### Tasks and plans
Use application permissions for read and write operations of [Planner](/graph/api/resources/planner-overview) resources.

### Teamwork and communications | Calls and online meetings
Specify [settings](/graph/api/resources/joinmeetingidsettings) that include a meeting ID, and whether attendees require a passcode to join the [online meeting](/graph/api/resources/onlinemeeting).

### Teamwork and communications | Messaging
- [Delete](/graph/api/chatmessage-softdelete) or [undo a deletion](/graph/api/chatmessage-undosoftdelete) of a [chat message](/graph/api/resources/chatmessage) in a [channel](/graph/api/resources/channel) or [chat](/graph/api/resources/chat).
- Get or set [summary information](/graph/api/resources/teamSummary) about a [team](/graph/api/resources/team), including the count of owners, members, and guests.


## January 2023: New in preview only

### Device and app management | Cloud PCs
- [Get a usage report on shared licenses of a service plan](/graph/api/cloudpcreports-getshareduselicenseusagereport?view=graph-rest-beta&preserve-view=true) over a specified period of time, or at real time.
- Associate a [Cloud PC supported region](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true) to a geographic group that belongs to a [supported set](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true#cloudpcregiongroup-values).
- [Get](/graph/api/cloudpc-getsupportedcloudpcremoteactions?view=graph-rest-beta&preserve-view=true) the set of [remote actions](/graph/api/resources/cloudPcRemoteActionCapability?view=graph-rest-beta&preserve-view=true) supported for a Cloud PC device.

### Device and app management | Cloud printing
Get or set a display name for a [print job](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
[Update](/graph/api/identitygovernance-task-update?view=graph-rest-beta&preserve-view=true) a [task](/graph/api/resources/identitygovernance-task?view=graph-rest-beta&preserve-view=true) for [lifecycle workflows](/graph/api/resources/identitygovernance-lifecycleworkflows-overview?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Use a [cross-tenant identity sync policy](/graph/api/resources/crosstenantidentitysyncpolicypartner?view=graph-rest-beta&preserve-view=true) to synchronize users from a partner tenant. The policy streamlines collaboration between users in a multi-tenant organization, by automating creating, updating, and deleting users from one tenant to another.
- [Get](/graph/api/crosstenantaccesspolicyconfigurationdefault-get?view=graph-rest-beta&preserve-view=true) the cross-tenant access default settings for automatic user consent from an [inbound/outbound policy configuration](/graph/api/resources/inboundoutboundpolicyconfiguration?view=graph-rest-beta&preserve-view=true).


### Security | Attack simulation and training
- [Create](/graph/api/attacksimulationroot-create-simulation?view=graph-rest-beta&preserve-view=true) or [delete](/graph/api/attacksimulationroot-delete-simulation?view=graph-rest-beta&preserve-view=true) an [attack simulation](/graph/api/resources/simulation?view=graph-rest-beta&preserve-view=true) campaign for a tenant. Prior to this update, apps can only [get](/graph/api/attacksimulationroot-get-simulations?view=graph-rest-beta&preserve-view=true) information about an existing simulation campaign.
- [Get](/graph/api/attacksimulationroot-get-payload?view=graph-rest-beta&preserve-view=true) information about an attack simulation training. Get further [details](/graph/api/resources/payloaddetail?view=graph-rest-beta&preserve-view=true) such as the content and coachmarks.


### Tasks and plans | Business scenarios
Debut of the [business scenarios API](/graph/api/resources/businessscenario-overview?view=graph-rest-beta&preserve-view=true) which allows developer customers to [configure plans and tasks](/graph/api/resources/businessscenario-planner-overview?view=graph-rest-beta&preserve-view=true#planner-configuration), and to bring custom scenario data in entities for their Planner-specific scenarios. 


## December 2022: New and generally available

### Applications
Address a [service principal](/graph/api/resources/serviceprincipal) by a new alternate key, **appId**.

### Identity and access | Directory management
- Address an [device](/graph/api/resources/device) by a new alternate key, **deviceId**. 
- Address an [directoryRole](/graph/api/resources/directoryrole) by a new alternate key, **roleTemplateId**.

### Identity and access | Identity and sign-in
Identify [at-risk service principals](/graph/api/resources/riskyserviceprincipal) in an organization with Azure AD, which continually [detects and evaluates risks](/graph/api/resources/serviceprincipalriskdetection) based on various signals and machine learning. You can [confirm](/graph/api/riskyserviceprincipal-confirmcompromised) if an at-risk service principal is indeed compromised, upon which Microsoft would disable that service principal object. You can [dismiss](/graph/api/riskyserviceprincipal-dismiss) the risk of an at-risk service principal. And, you can [list the risk history](/graph/api/riskyserviceprincipal-list-history) of a service principal.


## December 2022: New in preview only

### Device and app management | Corporate management
Intune [December updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2022-12-01&to=2022-12-31) for the beta version.

### Identity and access | Directory management
- Use additional customizations on the Azure Active Directory sign-in page for an organization: custom CSS, organization logo on the page header, and [login page layout configuration](/graph/api/resources/loginPageLayoutConfiguration?view=graph-rest-beta&preserve-view=true).
- [Get](/graph/api/onpremisesdirectorysynchronization-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/onpremisesdirectorysynchronization-update?view=graph-rest-beta&preserve-view=true) the configuration and features of [on-premises directory synchronization](/graph/api/resources/onpremisesdirectorysynchronization?view=graph-rest-beta&preserve-view=true) set up for an organization.

### People and workplace intelligence | Item insights
A user whose item insights have been disabled can still see the file-based activities of other users with item insights enabled. Previous to this update, that user with item insights disabled would not see anybody's trending content. Learn more about [an organization's insights-based experience after disabling a user's item insights](item-insights-overview.md#disable-or-re-enable-item-insights).

### Reports | Azure AD activity reports
Get additional details about user or application [sign-in](/graph/api/resources/signIn?view=graph-rest-beta&preserve-view=true) activity logs:
- Details about the [app and device used during an Azure AD authentication](/graph/api/resources/authenticationappdevicedetails?view=graph-rest-beta&preserve-view=true) step.
- Details about the [Azure AD policies applied to a user or client authentication app](/graph/api/resources/authenticationapppolicydetails?view=graph-rest-beta&preserve-view=true) during an authentication step.

### Sites and lists
- Get [counts of user reactions](/graph/api/resources/reactionsfacet?view=graph-rest-beta&preserve-view=true) (likes, comments, and shares) of a [site page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true).
- When [creating](/graph/api/sitepage-create?view=graph-rest-beta&preserve-view=true) a [site page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true), you can specify the following:
  - The [title area](/graph/api/resources/titlearea?view=graph-rest-beta&preserve-view=true) of the page.
  - The [page layout](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true#pagelayouttype-values) as an article page or a home page when [creating](/graph/api/sitepage-create?view=graph-rest-beta&preserve-view=true) a [site page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true).
  - The [canvas layout](/graph/api/resources/canvaslayout?view=graph-rest-beta&preserve-view=true), including any [horizontal section](/graph/api/resources/horizontalsection?view=graph-rest-beta&preserve-view=true), [column](/graph/api/resources/horizontalsectioncolumn?view=graph-rest-beta&preserve-view=true) in a horizontal section, [vertical section](/graph/api/resources/verticalsection?view=graph-rest-beta&preserve-view=true), or [web part](/graph/api/resources/webpart?view=graph-rest-beta&preserve-view=true).
  - The URL of a thumbnail image for the page.
  - Whether to show comments at the bottom of the page.
  - Whether to show recommended pages at the bottom of the page.
- Differentiate a [web part](/graph/api/resources/webpart?view=graph-rest-beta&preserve-view=true) as a [standard web part](/graph/api/resources/standardwebpart?view=graph-rest-beta&preserve-view=true) or [text web part](/graph/api/resources/textwebpart?view=graph-rest-beta&preserve-view=true). 
- Get [web part data](/graph/api/resources/webpartdata?view=graph-rest-beta&preserve-view=true) from a [standard web part](/graph/api/resources/standardwebpart?view=graph-rest-beta&preserve-view=true).
- [Get position information](/graph/api/webpart-getposition?view=graph-rest-beta&preserve-view=true) of a [web part](/graph/api/resources/webpart?view=graph-rest-beta&preserve-view=true).
- [Get a collection of web parts](/graph/api/sitepage-getwebpartsbyposition?view=graph-rest-beta&preserve-view=true) by providing [web part position](/graph/api/resources/webpartposition?view=graph-rest-beta&preserve-view=true) information.

### Tasks and plans
Use an external source to relate a [bucket](/graph/api/resources/plannerbucket?view=graph-rest-beta&preserve-view=true), [task](/graph/api/resources/plannertask?view=graph-rest-beta&preserve-view=true), or [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) to a user experience outside of Planner. Surface and sync the bucket, task, or plan in that experience, and track work in the context of that experience. See more information in [external bucket source](/graph/api/resources/plannerexternalbucketsource?view=graph-rest-beta&preserve-view=true), [external task source](/graph/api/resources/plannerexternaltasksource?view=graph-rest-beta&preserve-view=true), and [external plan source](/graph/api/resources/plannerexternalplansource?view=graph-rest-beta&preserve-view=true). 


### Use SDKs
Try the new [Microsoft Graph Python SDK (preview)](https://devblogs.microsoft.com/microsoft365dev/introducing-the-microsoft-graph-python-sdk-now-available-for-public-preview/) and take advantage of the following improvements:
- A new authentication provider that automatically refreshes access tokens.
- A built-in retry handler that understands response status codes.
- A fluent request building pattern to improve efficiency and discoverability.
- Type annotations, both synchronous and asynchronous experiences and HTTP2 support.

**Note**: The Microsoft Graph Python SDK is currently in public preview. Don't use this SDK in production environments. For details see [SDKs in preview or GA status](/graph/sdks/sdks-overview#sdks-in-preview-or-ga-status).

To get started, see:
- [README](https://github.com/microsoftgraph/msgraph-sdk-python#readme)
- [Upgrade guide](https://github.com/microsoftgraph/msgraph-sdk-python/blob/main/UPGRADING.md)


## November 2022: New and generally available

### Education
- [Create](/graph/api/educationassignment-setupfeedbackresourcesfolder) a SharePoint folder for an [assignment](/graph/api/resources/educationassignment) to upload feedback documents.
- [Create](/graph/api/educationfeedbackresourceoutcome-post-outcomes) a [feedback document](/graph/api/resources/educationFeedbackResourceOutcome) for a [submission](/graph/api/resources/educationsubmission) in the feedback folder associated with the assignment.

### Identity and access | Directory management
- [List](/graph/api/directory-deleteditems-list) or [restore](/graph/api/directory-deleteditems-restore) deleted [administrative unit](/graph/api/resources/administrativeunit).
- [Promote](/graph/api/domain-promote) a verified subdomain to the root domain.
- [Reset a guest user's redemption status](/azure/active-directory/external-identities/reset-redemption-status#use-microsoft-graph-api-to-reset-redemption-status) by using the **resetRedemption** property of an [invitation](/graph/api/resources/invitation). This enables the user to sign in using a different email address, without first deleting the user's account from the directory and re-inviting the user, thereby retaining their user identifier, group memberships, and app assignments.

### Search
- Use the delegated permission `Acronym.Read.All` to [query](/graph/api/search-query) and read all acronyms on behalf of a signed-in user.
- Use the delegated permission `Bookmark.Read.All` to [query](/graph/api/search-query) and read all bookmarks on behalf of a signed-in user.
- Use the delegated permission `Chat.Read` to [query](/graph/api/search-query) and read a signed-in user's 1:1 or group chat messages, on behalf of the signed-in user.
- Use the delegated permission `ChannelMessage.Read.All` to [query](/graph/api/search-query) and read all messages in a Teams channel on behalf of a signed-in user.

### Security | eDiscovery
[Delete Microsoft Teams messages](/graph/api/security-ediscoverysearch-purgedata) contained in a eDiscovery search. Specify the purge type to be soft or hard delete, and the scope of the purge action.

### Teamwork and communications | Messaging
- Only the tenant admin of the sender of a [chat message](/graph/api/resources/chatmessage) can [update](/graph/api/chatmessage-update) and override a [policy violation](/graph/api/resources/chatmessagepolicyviolation) on the message. Usually, a data loss prevention (DLP) application takes action when a sender violates policy and sends data they should not send. 
- [Send activity feed notifications](teams-send-activityfeednotifications.md) to a user, to a user in a chat, or to a user in a team, based on the supported types of [activities](/microsoftteams/platform/resources/schema/manifest-schema#activities) declared in the corresponding app manifest.


## November 2022: New in preview only

### Applications
- Enable or disable the [lock configuration of sensitive properties](/graph/api/resources/serviceprincipallockconfiguration?view=graph-rest-beta&preserve-view=true) of a multi-tenant [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) for editing after the application is provisioned in a tenant. 
- Address a [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) by a new alternate key, **appId**.
- Address an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) by a new alternate key, **appId**. The Azure portal refers to **appId** as the application (client) ID.

### Devices and apps | Browser management
Administrators can use the [Edge API in Microsoft Graph](/graph/api/resources/browser-edge-api-overview?view=graph-rest-beta&preserve-view=true) in an app to manage an organization's browser site lists for Internet Explorer (IE) mode that reside in the cloud, much like the way they can do it in the [Microsoft 365 admin center](https://admin.microsoft.com/). With proper permissions, the app can create a [browser site list](/graph/api/resources/browsersitelist?view=graph-rest-beta&preserve-view=true), add a [browser site](/graph/api/resources/browsersite?view=graph-rest-beta&preserve-view=true) and [shared cookie](/graph/api/resources/browsersharedcookie?view=graph-rest-beta&preserve-view=true), and [publish](/graph/api/browsersitelist-publish?view=graph-rest-beta&preserve-view=true) the site list for Microsoft Edge to download.

### Identity and access | Directory management
Use the [assignedPrincipals](/graph/api/unifiedroledefinition-assignedprincipals?view=graph-rest-beta&preserve-view=true) method to get the list of security principals (users, groups, and service principals) that are assigned to a specific role for different scopes either directly or transitively.

### Search | Index
Specify in a [schema](/graph/api/resources/externalconnectors-schema?view=graph-rest-beta&preserve-view=true) property definition for a [connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) whether to match the property exactly for queries.

### Search | Query
Specify in a [search request](/graph/api/resources/searchRequest?view=graph-rest-beta&preserve-view=true) one or more [criteria](/graph/api/resources/collapseproperty?view=graph-rest-beta&preserve-view=true) to collapse search results.

### Teamwork and communications | Messaging
List the [message history items](/graph/api/resources/chatmessagehistoryitem?view=graph-rest-beta&preserve-view=true) of a [chat message](/graph/api/resources/chatMessage?view=graph-rest-beta&preserve-view=true) in a Teams chat or channel.


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
- The [identity](/graph/api/resources/teamworkUserIdentity?view=graph-rest-beta&preserve-view=true) of a user in a Teams chat or online meeting can be an Azure Communication Services user.

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
- Specify [settings](/graph/api/resources/joinmeetingidsettings?view=graph-rest-beta&preserve-view=true) that include a meeting ID, and whether attendees require a passcode to join the [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- [Create](/graph/api/virtualappointment-put?view=graph-rest-beta&preserve-view=true) and manage a [virtual appointment](/graph/api/resources/virtualappointment?view=graph-rest-beta&preserve-view=true) between a service provider and their customer. This release is a programmatic debut that enables providers such as financial professionals, design consultants, or health care clinicians to consume online workflows and to meet with their customers remotely over video meetings. Find out more information about the _end user_ experience with [virtual appointments on Microsoft Teams](/microsoft-365/frontline/virtual-appointments?view=o365-worldwide&preserve-view=true).

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
Debut of the [employee learning API](/graph/api/resources/viva-learning-api-overview?view=graph-rest-beta&preserve-view=true) that enables apps to make content from a Learning Management System (LMS) or learning provider available in Viva Learning. In Viva Learning, employees and teams can discover, share, recommend, and learn from content libraries provided by both their organization and partners. Because Viva Learning is a centralized learning hub in Microsoft Teams, this makes it easier for employees to prioritize their growth and integrate learning and building skills into their workday.

### To-do tasks
- Use a single POST operation to [attach a file](/graph/api/todotask-post-attachments?view=graph-rest-beta&preserve-view=true) up to 3MB to a [to-do task](/graph/api/resources/todotask?view=graph-rest-beta&preserve-view=true), or [create an upload session](/graph/api/taskfileattachment-createuploadsession?view=graph-rest-beta&preserve-view=true) to iteratively upload portions of a file up to 25 MB total size to attach it to a task.
- Get or set a date and time in a specific time zone for a to-do task to begin.

### Use SDKs
Try the new [Microsoft Graph PHP SDK 2.0.0-RC5](https://devblogs.microsoft.com/microsoft365dev/microsoft-graph-php-sdk-2-0-0-rc5-is-now-available/) and take advantage of the following improvements:
- A new authentication provider that automatically refreshes access tokens.
- A built-in retry handler that understands response status codes.
- A fluent request building pattern to improve efficiency and discoverability.

To get started, see:
- [README](https://aka.ms/graph/sdk/php/preview/readme)
- [Upgrade guide](https://aka.ms/graph/sdk/php/preview/upgrade)
- [Code examples](https://aka.ms/graph/sdk/php/preview/examples)

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
- Get the details of [pinning](/graph/api/resources/messagePinnedEventMessageDetail?view=graph-rest-beta&preserve-view=true) or [unpinning](/graph/api/resources/messageUnpinnedEventMessageDetail?view=graph-rest-beta&preserve-view=true) a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) in a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true). 
- As scenarios supported to export Teams content, you can [list](/graph/api/teamwork-list-deletedteams?view=graph-rest-beta&preserve-view=true) teams that have been deleted, and [get](/graph/api/deletedteam-getallmessages?view=graph-rest-beta&preserve-view=true) 1:1 chats, group chats, meeting chats, and channel messages of a [deleted team](/graph/api/resources/deletedTeam?view=graph-rest-beta&preserve-view=true). For more information, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).



## May 2022: New and generally available

### Education
- [Track changes for assignment](/graph/api/educationassignment-delta) resources.
- [Track changes for assignment category](/graph/api/educationcategory-delta) resources.

### Identity and access | Directory management
An [application](/graph/api/resources/application) registered in Azure Active Directory (Azure AD) can specify application or service contact information from a Service or Asset Management database.

### Identity and access | Identity and sign-in
Allow an Azure Active Directory (Azure AD) tenant to set up [federation with another organization whose identity provider (IdP) supports either the SAML or WS-Fed protocol](/graph/api/resources/samlOrWsFedExternalDomainFederation). This enables the Azure AD tenant to allow guest users to access its resources.

### Search
You can specify up to 1000 search results per page for a [search request](/graph/api/resources/searchrequest).

### Sites and lists
- Get a collection of [content type](/graph/api/resources/contentType) resources from the content type hub that are compatible by using the [getCompatibleHubContentTypes](/graph/api/contenttype-getcompatiblehubcontenttypes) action. 
- Add or synchronize a content type from the content type hub to a [site](/graph/api/resources/site) or [list](/graph/api/resources/list), by using the [addCopyFromContentTypeHub](/graph/api/contenttype-addcopyfromcontenttypehub) action. This makes a content type or its update available to a specific site or list where it is needed. This is an improvement from the legacy sync infrastructure which pushes the content type to all sites across an organization, reducing wait times for the publishing to propagate. 
- Get one or more [rich, long-running operations](/graph/api/resources/richlongrunningoperation) occurring on a site or list, which can happen when adding a content type synchronously.

### Tasks and plans
- [Get](/graph/api/plannerplandetails-get) or [update](/graph/api/plannerplandetails-update) category descriptions as part of the [details](/graph/api/resources/plannerplandetails) of a [plan](/graph/api/resources/plannerplan).
- Instead of the **owner** property of a **plan**, use the **type** property of a [plan container](/graph/api/resources/plannerplancontainer) to specify authorization rules and the lifetime of a **plan**.
- Get the priority of a [task](/graph/api/resources/plannerTask).

### Teamwork
[Get messages on a channel](/graph/api/channel-list-messages) and [include any replies](/graph/api/channel-list-messages#example-3-request-with-top-and-expand-query-options-on-replies) to the message.

### To-do tasks
- Break down a complex [to-do task](/graph/api/resources/todotask) into more actionable, smaller tasks each as a [checklist item](/graph/api/resources/checklistitem).
- Label a to-do task with a [category](/graph/api/resources/outlookcategory) that is defined by the user to group Outlook contacts, events, messages, group posts, and to-do tasks.


## May 2022: New in preview only

### Application
When configuring Azure AD Application Proxy for on-premises applications for secure remote access, use the **isStateSessionEnabled** property in the [onPremisesPublishing](/graph/api/resources/onPremisesPublishing?view=graph-rest-beta&preserve-view=true) resource to specify whether to validate the state parameter if the application uses the OAuth 2.0 authorization code grant flow. Setting this property helps administrators to protect the app from cross-site request forgery (CSRF).

### Compliance | Subject rights requests
- Specify or get the locations that should searched in a [subject rights request](/graph/api/resources/subjectRightsRequest?view=graph-rest-beta&preserve-view=true), such as [mailboxes](/graph/api/resources/subjectRightsRequestAllMailboxLocation?view=graph-rest-beta&preserve-view=true), [SharePoint, OneDrive, or Teams channels](/graph/api/resources/subjectRightsRequestAllSiteLocation?view=graph-rest-beta&preserve-view=true).
- Specify or get a KQL-based content query that should be used for search in a subject rights request.

### Device and app management | Cloud PC
- Get a clearly defined [result](/graph/api/resources/cloudpcbulkremoteactionresult?view=graph-rest-beta&preserve-view=true) upon [bulk-reprovisioning Cloud PC devices](/graph/api/manageddevice-bulkReprovisionCloudPc?view=graph-rest-beta&preserve-view=true).
- [Get](/graph/api/manageddevice-getcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) or [set](/graph/api/manageddevice-setcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) a [Cloud PC review status](/graph/api/resources/cloudpcreviewstatus?view=graph-rest-beta&preserve-view=true), or [bulk-set Cloud PC review status](/graph/api/manageddevice-bulksetcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) for multiple devices.

### Device and app management | Multi-tenant management
[Get](/graph/api/managedtenants-managedtenant-list-tenantusage?view=graph-rest-beta&preserve-view=true) the number of monthly active users for each service in a managed tenant.

### Education
Use a [Teams app resource](/graph/api/resources/educationteamsappresource?view=graph-rest-beta&preserve-view=true) that corresponds to an installed Microsoft Teams app, to allow education service users to create and share assignments with embedded Teams applications, such as YouTube or FlipGrid.

### Identity and access | Directory management
Activating a service [for an organization](/graph/api/organization-activateService?view=graph-rest-beta&preserve-view=true) and [for a user](/graph/api/user-activateServicePlan?view=graph-rest-beta&preserve-view=true) are deprecated, and will stop returning data on June 30, 2022.

### Identity and access | Identity and sign-in
As part of the [default user role](/graph/api/resources/defaultuserrolepermissions?view=graph-rest-beta&preserve-view=true) of an [authorization policy](/graph/api/resources/authorizationPolicy?view=graph-rest-beta&preserve-view=true), specify whether the registered owner of a device can read their own BitLocker recovery keys.

### Reports | Identity and access reports
Get a [usage report for a user's registered authentication methods](/graph/api/resources/userregistrationdetails?view=graph-rest-beta&preserve-view=true) that includes the default method for multi-factor authentication.

### Search | Index
[Get](/graph/api/externalconnectors-connectionquota-get?view=graph-rest-beta&preserve-view=true) the [quota information](/graph/api/resources/externalconnectors-connectionQuota?view=graph-rest-beta&preserve-view=true) for a [connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true). This information includes the number of items you can ingest into the connection, taking into account items remaining in the connection and the tenant-level remaining quota for all its connections.

### Sites and lists
[Track changes for SharePoint list item](/graph/api/listitem-delta?view=graph-rest-beta&preserve-view=true) resources.

### Teamwork
- Use application permissions to [get all the chats](/graph/api/chat-list?view=graph-rest-beta&preserve-view=true) that a specified user is involved in without the user being present.
- [Send activity feed notifications to multiple users in bulk](/graph/api/teamwork-sendActivityNotificationToRecipients?view=graph-rest-beta&preserve-view=true), up to 100 users at a time.

### To-do tasks
As of May 31, 2022 the [to-do API set that is built on baseTask](/graph/api/resources/tasks-overview?view=graph-rest-beta&preserve-view=true) is deprecated. That API set will stop returning data on August 31, 2022. Use the [to-do API set built on todoTask](/graph/api/resources/todo-overview?view=graph-rest-beta&preserve-view=true) instead.


## April 2022: New and generally available

### Identity and access | Governance
Use [Privileged Identity Management (PIM)](/graph/api/resources/privilegedidentitymanagementv3-overview) in production apps to manage, control, and monitor access to important resources in your organization. The access is enabled through privileged roles and role-based access control (RBAC) and can be granted to users, groups, or service principals. The resources can be in Azure AD, Azure, and other Microsoft cloud services such as Microsoft 365 or Microsoft Intune.

### Search | Index
- Use the application permissions `ExternalConnection.Read.All` and `ExternalConnection.ReadWrite.All` to read or write all external connections without a signed-in user present.
- Use the application permission `ExternalItem.Read.All` to read all external items without a signed-in user present.
- Use the delegated permission `ExternalConnection.ReadWrite.OwnedBy` to read and write external connections on behalf of a signed-in user, that your app is authorized to.
- Use the delegated permission `ExternalConnection.Read.All` or `ExternalConnection.ReadWrite.All` to read or write all external connections on behalf a signed-in user.
- Use the delegated permission `ExternalItem.ReadWrite.OwnedBy` to read and write external items on behalf of a signed-in use, that your app is authorized to.
- Use the delegated permission `ExternalItem.Read.All` or `ExternalItem.ReadWrite.All` to read or write all external items on behalf of a signed-in user.


## April 2022: New in preview only

### Customer bookings
- [Get availability information](/graph/api/bookingbusiness-getstaffavailability?view=graph-rest-beta&preserve-view=true) for [staff member](/graph/api/resources/bookingstaffmember?view=graph-rest-beta&preserve-view=true) resources in a [business](/graph/api/resources/bookingbusiness?view=graph-rest-beta&preserve-view=true).
- Use the application permission `Bookings.Read.All` in read operations for [business](/graph/api/resources/bookingbusiness?view=graph-rest-beta&preserve-view=true), [staff member](/graph/api/resources/bookingstaffmember?view=graph-rest-beta&preserve-view=true), [service](/graph/api/resources/bookingservice?view=graph-rest-beta&preserve-view=true), [customer](/graph/api/resources/bookingcustomer?view=graph-rest-beta&preserve-view=true), and [appointment](/graph/api/resources/bookingappointment?view=graph-rest-beta&preserve-view=true) resources.
- Use the application permission `BookingsAppointment.ReadWrite.All` for read/write operations for customer and appointment resources.

### Device and app management | Cloud PC
- Specify [Windows settings](/graph/api/resources/cloudpcwindowssettings?view=graph-rest-beta&preserve-view=true) as part of [Cloud PC organization settings](/graph/api/resources/cloudPcOrganizationSettings?view=graph-rest-beta&preserve-view=true) for a tenant.
- [Get](/graph/api/user-list-cloudpcs?view=graph-rest-beta&preserve-view=true) the Cloud PC devices attributed to the signed-in user.
- [Get information to launch a Cloud PC device](/graph/api/cloudpc-getcloudpclaunchinfo?view=graph-rest-beta&preserve-view=true) for the signed-in user.

### Identity and access | Directory management
Configure [federation settings](/graph/api/resources/internalDomainFederation?view=graph-rest-beta&preserve-view=true) to federate domains with Azure Active Directory.

### Identity and access | Governance
[Get assignments](/graph/api/accesspackageassignment-additionalaccess?view=graph-rest-beta&preserve-view=true) for which the corresponding user has an incompatible access packages. 

### Reports | Identity and access reports
Confirm an event is [high-risk and compromised](/graph/api/signin-confirmCompromised?view=graph-rest-beta&preserve-view=true) or is [safe](/graph/api/signin-confirmSafe?view=graph-rest-beta&preserve-view=true) by marking the event in the corresponding Azure Active Directory sign-in logs.

### Reports | Microsoft 365 usage reports
- [Get a total distribution report](/graph/api/reportroot-getTeamsUserActivityTotalDistributionCounts?view=graph-rest-beta&preserve-view=true) for the count of specific Teams activities over a specified period. Counts of Teams activities include team chat messages, calls, meetings, audio duration, posting messages, and so on.
- Get additional activity types in reports that [get user detail](/graph/api/reportroot-getTeamsUserActivityUserDetail?view=graph-rest-beta&preserve-view=true), [get activity counts](/graph/api/reportroot-getteamsuseractivitycounts?view=graph-rest-beta&preserve-view=true), and [get activity total counts](/graph/api/reportroot-getteamsuseractivitytotalcounts?view=graph-rest-beta&preserve-view=true).

### Teamwork
Share a channel with one or more teams:
- [List only channels that are shared with a team](/graph/api/team-list-incomingchannels?view=graph-rest-beta&preserve-view=true).
- [List all the channels in a team](/graph/api/team-list-allchannels?view=graph-rest-beta&preserve-view=true) including those hosted in a team or shared with the team.
- [List team members who can access a specified shared channel](/graph/api/sharedwithchannelteaminfo-list-allowedmembers?view=graph-rest-beta&preserve-view=true).
- [Remove a channel shared with a team](/graph/api/team-delete-incomingchannels?view=graph-rest-beta&preserve-view=true).
- [List the teams that have been shared a specified channel](/graph/api/sharedwithchannelteaminfo-list?view=graph-rest-beta&preserve-view=true).
- [Unshare a channel with a team](/graph/api/sharedwithchannelteaminfo-delete?view=graph-rest-beta&preserve-view=true).


## March 2022: New and generally available

### Files
Use a [bundle](/graph/api/resources/bundle) resource to share multiple files at once, much like other [driveItem](/graph/api/resources/driveitem) resources. You can apply CRUD operations on a bundle, and [add](/graph/api/bundle-additem) an item to or [remove](/graph/api/bundle-removeitem) an item from a bundle.

### Identity and access | Directory management
Use [resource-specific permission](/graph/api/resources/resourcespecificpermission) to authorize a Teams app direct access to the data of a specific instance of a chat or team. For example, the resource-specific permission ChannelMessage.Read.Group allows a Teams app to read the channel messages of a single team.

### Identity and access | Governance
- [Get](/graph/api/approval-get) [approval](/graph/api/resources/approval) decisions associated with a [request for access package assignment](/graph/api/resources/accesspackageassignmentrequest).
- As part of [Azure Active Directory (Azure AD) entitlement management](/graph/api/resources/entitlementmanagement-overview), use an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy) to manage a request, approval, assignment, or regular review to an [access package](/graph/api/resources/accesspackage). You can govern internal and external users' access to groups, applications, and SharePoint Online sites of an organization.

### Identity and access | Identity and sign-in
Specify the [inclusion or exclusion of client applications](/graph/api/resources/conditionalaccessclientapplications) as among a [set of conditions](/graph/api/resources/conditionalAccessConditionSet) to apply a [conditional access policy](/graph/api/resources/conditionalaccesspolicy).

### Use the toolkit
Celebrate real teamwork with community contributions and try new features in [Microsoft Graph Toolkit v2.4.0](https://github.com/microsoftgraph/microsoft-graph-toolkit/releases/tag/v2.4.0):
- Optimize refreshing of people's images in the [person](/graph/toolkit/components/person) component by using the `disable-image-fetch` attribute to control unnecessary fetching.
- Avoid unncessary loading of people's images in the [people picker](/graph/toolkit/components/people-picker) component by using the `disable-images` attribute. 
- Filter for available users, groups, and list of people in the [people picker](/graph/toolkit/components/people-picker) component by using the `user-filters`, `group-filters`, and `people-filters` attributes.


## March 2022: New in preview only

### Cloud communications | Online meeting
Specify one or more [meeting participants](/graph/api/resources/meetingParticipants?view=graph-rest-beta&preserve-view=true) as co-organizer.

### Compliance | eDiscovery
[Purge data](/graph/api/ediscovery-sourcecollection-purgeData?view=graph-rest-beta&preserve-view=true) and permanently delete Microsoft Teams messages from an eDiscovery [source collection](/graph/api/resources/ediscovery-sourcecollection?view=graph-rest-beta&preserve-view=true).

### Device and app management | Cloud PC
- Use delegated or application permissions of `RoleManagement.Read.CloudPC` for the read operations of the [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) resource.
- Use delegated or application permissions of `RoleManagement.ReadWrite.CloudPC` for the read and write operations of the [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) resource.
- Specify the ID and display name of an Azure subscription as part of the information for a [source image for a device](/graph/api/resources/cloudPcSourceDeviceImage?view=graph-rest-beta&preserve-view=true).
- Specify and configure [Windows settings](/graph/api/resources/cloudpcwindowssettings?view=graph-rest-beta&preserve-view=true) when creating Cloud PCs for a [provisioning policy](/graph/api/resources/cloudPcProvisioningPolicy?view=graph-rest-beta&preserve-view=true).

### Device and app management | Corporate management
- Intune March updates for the beta version.

### Device and app management | Multi-tenant management
[List](/graph/api/managedtenants-managedtenant-list-auditevents?view=graph-rest-beta&preserve-view=true) and [get](/graph/api/managedtenants-auditevent-get?view=graph-rest-beta&preserve-view=true) audit events for managed tenants in Microsoft 365 Lighthouse.

### Identity and access | Directory management
- [List](/graph/api/organizationsettings-list-microsoftapplicationdataaccess?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/microsoftapplicationdataaccesssettings-update?view=graph-rest-beta&preserve-view=true) [settings](/graph/api/resources/microsoftapplicationdataaccesssettings?view=graph-rest-beta&preserve-view=true) that specify access from Microsoft applications to Microsoft 365 data belonging to users in an organization. For example, given the proper authorization, whether only Microsoft 365 apps (such as Word and Excel) can access users' Microsoft 365 data, or whether other Microsoft apps (such as Windows) can access the data as well. By default, all users in an organization can access in a Microsoft app any Microsoft 365 data that the user has been authorized to access. 
- Following the Zero Trust cybersecurity model, Microsoft partners can use [granular delegated admin privileges (GDAP)](/graph/api/resources/delegatedadminrelationships-api-overview?view=graph-rest-beta&preserve-view=true) to carry out administrative tasks with least-privileged access to their customer tenants, to avoid potential security exposures. Instead of requesting Global Administrator role as in the past, partners request specific roles for customer tenant administration for a definite amount of time, and their customers must explicitly grant the least-privileged access to them.

### Security | Attack simulation and training
- [List simulation automations](/graph/api/attacksimulationroot-list-simulationautomations?view=graph-rest-beta&preserve-view=true) for a tenant.
- [List runs](/graph/api/resources/simulationautomationrun?view=graph-rest-beta&preserve-view=true) of simulation automations for a tenant.

### Search
- Specify in a [search request](/graph/api/resources/searchrequest?view=graph-rest-beta&preserve-view=true) whether to trim away the duplicate SharePoint files from search results. The default is false.
- Qualify a [search query](/graph/api/resources/searchquery?view=graph-rest-beta&preserve-view=true) string with a template, which supports KQL and query variables.

### Sites and lists
- For a [column](/graph/api/resources/columnDefinition?view=graph-rest-beta&preserve-view=true) that contains taxonomy data, specify the parent [term](/graph/api/resources/termstore-term?view=graph-rest-beta&preserve-view=true) and [term set](/graph/api/resources/termstore-set?view=graph-rest-beta&preserve-view=true) for which the child terms can be selected as column values.
- Get the settings for a [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true), including its language and time zone.

### Tasks and plans
Identify if a Planner plan intended for experiences outside of Planner (such as Microsoft Teams) can track work in that context, by checking the **details** relationship of the corresponding  [plannerPlan](/graph/api/resources/plannerPlan?view=graph-rest-beta&preserve-view=true) resource.

### Teamwork
- Get or set [summary information](/graph/api/resources/teamSummary?view=graph-rest-beta&preserve-view=true) about a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), including the count of owners, members, and guests.
- Sort messages in descending order when [listing messages in a chat](/graph/api/chat-list-messages?view=graph-rest-beta&preserve-view=true).


## February 2022: New and generally available

### Teamwork
Get [details about an online meeting](/graph/api/resources/teamworkOnlineMeetingInfo) that is associated with a [chat](/graph/api/resources/chat) through the **onlineMeetingInfo** property.

## February 2022: New in preview only

### Applications
- Use a new policy option for [application authentication methods](/graph/api/resources/applicationauthenticationmethodpolicy?view=graph-rest-beta&preserve-view=true) to restrict a custom password secret on an application or service principal.
- Specify [settings](/graph/api/resources/windowsApplication?view=graph-rest-beta&preserve-view=true) for apps running Windows and published in the Microsoft Store or Xbox games store.

### Change notifications
Subscribe to changes of Outlook contacts, events, or messages to receive notifications that include resource data in the payload. For more information, see [Change notifications for Outlook resources in Microsoft Graph](outlook-change-notifications-overview.md).

### Device and app management | Cloud PC 
- Define [restore point settings](/graph/api/resources/cloudpcrestorepointsetting?view=graph-rest-beta&preserve-view=true), which include the frequency to create a restore point, and whether users can restore their own Cloud PC based on a restore point backup.
- [Restore](/graph/api/manageddevice-restorecloudpc?view=graph-rest-beta&preserve-view=true) a Cloud PC based on a previous snapshot.
- [Restore multiple Cloud PCs](/graph/api/manageddevice-bulkrestorecloudpc?view=graph-rest-beta&preserve-view=true) in a single request by specifying their managed device IDs and a date/time range (e.g., before, after) of a restore point.

### Identity and access | Directory management
Use application permissions `CustomSecAttributeAssignment.Read.All` to read [custom security attribute definitions](/graph/api/resources/customsecurityattributedefinition?view=graph-rest-beta&preserve-view=true) for an organization without a signed-in user.

### Identity and access | Governance
- Configure [settings](/graph/api/resources/accessreviewstagesettings?view=graph-rest-beta&preserve-view=true) for each [stage](/graph/api/resources/accessreviewstage?view=graph-rest-beta&preserve-view=true) in a multi-stage access review. In addition to [get](/graph/api/accessreviewstage-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/accessreviewstage-update?view=graph-rest-beta&preserve-view=true) an access review stage, you can do the following: 
  - [Stop](/graph/api/accessreviewstage-stop?view=graph-rest-beta&preserve-view=true) reviewers from giving more input to a stage and proceed to the next stage if applicable. 
  - [Filter](/graph/api/accessreviewstage-filterbycurrentuser?view=graph-rest-beta&preserve-view=true) and get all the stages on an [access review instance](/graph/api/resources/accessreviewinstance?view=graph-rest-beta&preserve-view=true) for which the calling user is a reviewer
  - [List decisions](/graph/api/accessreviewstage-list-decisions?view=graph-rest-beta&preserve-view=true) from a multi-stage access review.
- Apps can use application permission `EntitlementManagement.ReadWrite.All` to [create an access package resource request](/graph/api/entitlementmanagement-post-accesspackageresourcerequests?view=graph-rest-beta&preserve-view=true) to add or remove a resource to an [access package catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Use a number of new properties to configure an [organization's branding](/graph/api/resources/organizationalbrandingproperties?view=graph-rest-beta&preserve-view=true). For example, a banner version of a company logo for the sign-in page, a custom favicon with a CDN-based URL, and a few other custom properties for users to manage accounts.
- Include or exclude Linux as one of the [platform conditions](/graph/api/resources/conditionalaccessplatforms?view=graph-rest-beta&preserve-view=true) in a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- Identify [at-risk service principals](/graph/api/resources/riskyserviceprincipal?view=graph-rest-beta&preserve-view=true) in an organization with Azure AD, which continually [detects and evaluates risks](/graph/api/resources/serviceprincipalriskdetection?view=graph-rest-beta&preserve-view=true) based on various signals and machine learning. You can [confirm](/graph/api/riskyserviceprincipal-confirmcompromised?view=graph-rest-beta&preserve-view=true) if an at-risk service principal is indeed compromised, upon which Microsoft would disable that service principal object. You can [dismiss](/graph/api/riskyserviceprincipal-dismiss?view=graph-rest-beta&preserve-view=true) the risk of an at-risk service principal. And, you can [list the risk history](/graph/api/riskyserviceprincipal-list-history?view=graph-rest-beta&preserve-view=true) of a service principal.
- Use [cross-tenant access settings](/graph/api/resources/crosstenantaccesspolicy-overview?view=graph-rest-beta&preserve-view=true) to control and manage collaboration between users in your organization and other organizations. They are granular to let you determine the users, groups, and apps, both in your organization and in external organizations, that can participate in Azure AD B2B collaboration and Azure AD B2B direct connect. 
- Enable or disable users and groups in an organization to use the [Azure AD native Certificate-Based Authentication (CBA)](/graph/api/resources/x509CertificateAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true).

### Search
Set up [acronym](/graph/api/resources/search-acronym?view=graph-rest-beta&preserve-view=true), [bookmark](/graph/api/resources/search-bookmark?view=graph-rest-beta&preserve-view=true), and [QnA](/graph/api/resources/search-qna?view=graph-rest-beta&preserve-view=true) resources as [administrative search answers for users in an organization](search-concept-answers.md).


## January 2022: New and generally available

### Devices and apps | Service health and communications
Get a [service announcement attachment](/graph/api/resources/serviceAnnouncementAttachment) added to a [service update message](/graph/api/resources/serviceupdatemessage).

### Identity and access | Governance
- Get a collection of [access review reviewer](/graph/api/resources/accessreviewreviewer) resources that is used to define reviewers contacted for an [instance of access reviews](/graph/api/resources/accessReviewInstance).
- Differentiate 3 types of resources whose access is represented through an [access review decision](/graph/api/resources/accessreviewinstancedecisionitem):
  - An [access package assignment policy](/graph/api/resources/accessReviewInstanceDecisionItemAccessPackageAssignmentPolicyResource) for which access is determined by an access review decision.
  - An [Azure resource role](/graph/api/resources/accessReviewInstanceDecisionItemAzureRoleResource) for which access is determined by an access review decision.
  - A [service principal](/graph/api/resources/accessReviewInstanceDecisionItemServicePrincipalResource) whose access to a resource is determined by an access review decision.

### Identity and access | Identity and sign-in
Enforce a [session control](/graph/api/resources/conditionalAccessSessionControls) (by setting the **disableResilienceDefaults** property) to determine whether Azure AD should extend existing sessions based on information collected prior to an outage.

### Teamwork
[Create a chat](/graph/api/chat-post) using application permissions.

## January 2022: New in preview only

### Compliance | eDiscovery
Get the URL of a custodian's OneDrive for Business site (**siteWebUrl** property of [userSource](/graph/api/resources/ediscovery-userSource?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Cloud PC
- Get or update [settings for an organization](/graph/api/resources/cloudpcorganizationsettings?view=graph-rest-beta&preserve-view=true), which include the Windows operating system version to provision on Cloud PCs, and the user account type on provisioned Cloud PCs.
- [Change the user account type](/graph/api/cloudPC-changeUserAccountType?view=graph-rest-beta&preserve-view=true) on a specified Cloud PC.

### Identity and access | Governance
- Reviewers of an access review can [record](/graph/api/accessreviewinstancedecisionitem-recordalldecisions?view=graph-rest-beta&preserve-view=true) decisions for which the current user is the reviewer.
- Configure [the last sign-in date and time of a user as an insight](/graph/api/resources/userLastSignInRecommendationInsightSetting?view=graph-rest-beta&preserve-view=true) to aid reviewers in making decisions for an [access review schedule definition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true).
- Configure [the last sign-in date and time of a user as an insight](/graph/api/resources/userSignInInsight?view=graph-rest-beta&preserve-view=true) for a [decision on a user or principal's access in an instance of an access review](/graph/api/resources/accessreviewinstancedecisionitem?view=graph-rest-beta&preserve-view=true).
- The requestor of an access package can provide custom information as part of an [access package resource](/graph/api/resources/accesspackageresource?view=graph-rest-beta&preserve-view=true) that may be used to make approval decisions for the access package.
- A requestor can edit the answer to a [question](/graph/api/resources/accessPackageQuestion?view=graph-rest-beta&preserve-view=true) in an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true).

### Reports | Identity and access reports
- Get details of the [authentication methods registered for a user](/graph/api/resources/userRegistrationDetails?view=graph-rest-beta&preserve-view=true), such as multi-factor authentication, self-service password reset, and passwordless authentication.
- Get the following properties for a [sign-in](/graph/api/resources/signIn?view=graph-rest-beta&preserve-view=true) event of a user or application in an organization: 
  - Any conditional access [authentication context](/graph/api/resources/authenticationContext?view=graph-rest-beta&preserve-view=true).
  - Any conditional access [session lifetime policy](/graph/api/resources/sessionLifetimePolicy?view=graph-rest-beta&preserve-view=true).
  - The ID of an Azure resource accessed during sign-in.
  - The identifier of an application's federated identity credential if that was used to sign in.
  - The identifier of the service principal representing the target resource in the sign-in event.

### Reports | Microsoft 365 usage reports
Get usage reports for Outlook, OneDrive, and SharePoint for Microsoft Cloud for US Government. See summary for [cloud deployments](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true#cloud-deployments).

### Sites and lists
- Add or synchronize a content type from the content type hub to a [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/resources/list?view=graph-rest-beta&preserve-view=true), by using the [addCopyFromContentTypeHub](/graph/api/contenttype-addcopyfromcontenttypehub?view=graph-rest-beta&preserve-view=true) action. This makes a content type or its update available to a specific site or list where it is needed. This is an improvement from the legacy sync infrastructure which pushes the content type to all sites across an organization, reducing wait times for the publishing to propagate. 
- Get one or more [rich, long-running operations](/graph/api/resources/richlongrunningoperation?view=graph-rest-beta&preserve-view=true) occurring on a site or list, which can happen when adding a content type synchronously.
- Get a collection of [content type](/graph/api/resources/contentType?view=graph-rest-beta&preserve-view=true) resources from the content type hub that are compatible by using the [getCompatibleHubContentTypes](/graph/api/contenttype-getcompatiblehubcontenttypes?view=graph-rest-beta&preserve-view=true) action. 

### Teamwork
- Let users choose **LastModifiedDateTime** or **CreatedDateTime** as the sorting order when [listing messages in a chat](/graph/api/chat-list-messages?view=graph-rest-beta&preserve-view=true).
- Specify user attribution (in the **onBehalfOf** property) when a bot sends a [chat message](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) on behalf of a user.
- Add the following types of members to a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true):
  - [Anonymous guest](/graph/api/resources/anonymousGuestConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Microsoft account user](/graph/api/resources/microsoftAccountUserConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Skype for Business user](/graph/api/resources/skypeForBusinessUserConversationMember?view=graph-rest-beta&preserve-view=true)
  - [Skype user](/graph/api/resources/skypeUserConversationMember?view=graph-rest-beta&preserve-view=true)
- Use the delegated permission `TeamworkTag.Read` to read [tags](/graph/api/resources/teamworktag?view=graph-rest-beta&preserve-view=true) and [tag members](/graph/api/resources/teamworktagmember?view=graph-rest-beta&preserve-view=true) in Teams, on behalf of the signed-in user.


## December 2021: New and generally available

### Cloud communications | Presence
[Subscribe to notifications of changes](/graph/api/subscription-post-subscriptions) in a specified user's [presence](/graph/api/resources/presence) status. Always specify an encryption certificate in the subscription request as these are [rich notifications that include encrypted resource data](webhooks-with-resource-data.md).


### Compliance | Subject rights requests
As part of [privacy management in Microsoft 365](/privacy/solutions/privacymanagement/privacy-management?view=o365-worldwide&preserve-view=true), the [subject rights requests API](/graph/api/resources/subjectrightsrequest) debuts in both v1 and beta endpoints of Microsoft Graph. The API lets users make requests to review or manage their personal data in their organizations. It also lets organizations automate and scale managing these requests, helping them to meet industry regulations more efficiently.

### Customer booking
Use the API for Microsoft Bookings in production apps, and take advantage of the following new features and updates:
- Notify your customers in the US or Canada by SMS for an [appointment](/graph/api/resources/bookingappointment) or specific [service](/graph/api/resources/bookingservice) associated with an appointment.
- Enable meeting online for a service and auto-generate a Microsoft Teams meeting link for the appointment.
- Allow one or more customers in a group appointment, setting a maximum attendee count for a service and for an appointment, and tracking the actual attendee count in an appointment.
- Create a [custom question](/graph/api/resources/bookingcustomquestion) for a [business](/graph/api/resources/bookingbusiness), associate a question with an option to specify it as mandatory for a service, and track questions and answers in an appointment.
- Get or set the time zone for a customer in an appointment or [staff member](/graph/api/resources/bookingstaffmember).
- Get or set the location and phone number for a [customer](/graph/api/resources/bookingcustomer).
- Access the v1 API from the new endpoint `https://graph.microsoft.com/v1.0/solutions/`. Note that the beta API remains in the `https://graph.microsoft.com/beta` endpoint.

### Education
- Specify an [assignment](/graph/api/resources/educationassignment) to be added to only students' calendars using the **addToCalendarAction** property.
- [Reassign](/graph/api/educationsubmission-reassign) a [submitted assignment](/graph/api/resources/educationsubmission) to a student with feedback for review.
- [List assignments](/graph/api/educationuser-list-assignments) for an [educationUser](/graph/api/resources/educationuser). 

### Identity and access | Governance
[Update](/graph/api/accessreviewinstance-update) the reviewers and fall-back reviewers for an [instance of an access review](/graph/api/resources/accessreviewinstance).

### Teamwork
- Identify a [chat](/graph/api/resources/chat) in Microsoft Teams by its web URL (via the **webUrl** property).
- Get details of an event that happened in a chat, channel or team by accessing [eventMessageDetail](/graph/api/resources/EventMessageDetail) from a [chatMessage](/graph/api/resources/chatmessage) or [chat](/graph/api/resources/chat). For example, members added to a channel or  chat, and team description updated.

## December 2021: New in preview only

### Cloud communications | Online meetings
Enable registration for an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) using an [external registration](/graph/api/resources/externalmeetingregistration?view=graph-rest-beta&preserve-view=true) system. 

### Cloud communications | Presence
- Use the [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true) action to set the preferred availability and activity status for a user. The user's presence becomes the preferred presence.
- Use the [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true) action to clear any preferred availability and activity status for a user.
- Use `Presence.ReadWrite` as delegated permission with [setPresence](/graph/api/presence-setpresence?view=graph-rest-beta&preserve-view=true), [clearPresence](/graph/api/presence-clearpresence?view=graph-rest-beta&preserve-view=true), [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true), or [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true).
- Use `Presence.ReadWrite.All` as application permission with [setPresence](/graph/api/presence-setpresence?view=graph-rest-beta&preserve-view=true), [clearPresence](/graph/api/presence-clearpresence?view=graph-rest-beta&preserve-view=true), [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true), or [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Cloud PC
- Administrators can enable [Microsoft Managed Desktop](/graph/api/resources/microsoftmanageddesktop?view=graph-rest-beta&preserve-view=true) by specifying settings in a [Cloud PC provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) and configuring a managed device experience for a Cloud PC.
- [Reboot](/graph/api/cloudpc-reboot?view=graph-rest-beta&preserve-view=true) a [Cloud PC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true).
- [Rename](/graph/api/cloudpc-rename?view=graph-rest-beta&preserve-view=true) to update the display name of a Cloud PC.
- [Troubleshoot](/graph/api/cloudpc-troubleshoot?view=graph-rest-beta&preserve-view=true) to check the health status of a Cloud PC and the session host.
- Track the last remote action result on a Cloud PC, including reboot, rename, reprovision, troubleshoot, by the **lastRemoteActionResult** property.
- Track the last login timestamp of a Cloud PC by the **lastLoginResult** property.
- Track the date that a [Cloud PC device image](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) becomes unavailable by the **expirationDate** property.
- Track the status of the operating system in a [Cloud PC device image](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) by the **osStatus** property.
- [Create](/graph/api/rbacapplication-post-roledefinitions?view=graph-rest-beta&preserve-view=true), [update](/graph/api/unifiedroledefinition-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/unifiedroledefinition-delete?view=graph-rest-beta&preserve-view=true) a [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) object for a Cloud PC RBAC provider.

### Education
- [Track changes](delta-query-overview.md) to [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta&preserve-view=true) and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta&preserve-view=true) resources.
- Specify an [assignment](/graph/api/resources/educationassignment) to be added to only students' calendars using the **addToCalendarAction** property.

### Identity and access | Directory management
- [Get](/graph/api/application-get?view=graph-rest-beta&preserve-view=true) the certification details of an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) through the **certification** property. The property is set only when the application is certified through the [Microsoft 365 App Compliance Program](/microsoft-365-app-certification/docs/enterprise-app-certification-guide).  
- [Include](/graph/api/permissiongrantpolicy-post-includes?view=graph-rest-beta&preserve-view=true) or [exclude](/graph/api/permissiongrantpolicy-post-excludes?view=graph-rest-beta&preserve-view=true) certification as a [condition](/graph/api/resources/permissionGrantConditionSet?view=graph-rest-beta&preserve-view=true) in a [permission grant policy](/graph/api/resources/permissiongrantpolicy?view=graph-rest-beta&preserve-view=true), through the **certifiedClientApplicationsOnly** property of [permissionGrantConditionSet](/graph/api/resources/permissionGrantConditionSet?view=graph-rest-beta&preserve-view=true).

### Search | Index
Use the [update](/graph/api/externalconnectors-schema-update?view=graph-rest-beta&preserve-view=true) operation to update properties for items in a [connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) schema, including their aliases and labels.

### Teamwork
- [List](/graph/api/teams-list?view=graph-rest-beta&preserve-view=true) all teams in an organization.

### To-do tasks
- To anticipate being able to manage in a single place all the tasks from multiple sources (such as Outlook messages, Teams chats, OneDrive documents):
  - Use the [latest To Do API](/graph/api/resources/tasks-overview?view=graph-rest-beta&preserve-view=true) and access it from the new endpoint `https://graph.microsoft.com/beta/me/tasks/`.
  - Use the segment `allTasks` to get all the tasks for a user: `https://graph.microsoft.com/beta/me/tasks/alltasks`.
  - Differentiate between a built-in task list (such as **Flagged Email** or **Tasks**) and a user-defined task list. A built-in task list is represented by the [wellKnownTaskList](/graph/api/resources/wellknowntasklist?view=graph-rest-beta&preserve-view=true) resource, and a user-defined task list is represented by the [taskList](/graph/api/resources/tasklist?view=graph-rest-beta&preserve-view=true) resource.
  - Differentiate between the currently defined type of tasks, [task](/graph/api/resources/task?view=graph-rest-beta&preserve-view=true), from a base type [baseTask](/graph/api/resources/basetask?view=graph-rest-beta&preserve-view=true).
- Break down a more complex [task](/graph/api/resources/task?view=graph-rest-beta&preserve-view=true) into smaller, more actionable subtasks. Each subtask is represented by a [checklistItem](/graph/api/resources/checklistitem?view=graph-rest-beta&preserve-view=true) resource.
- [Move](/graph/api/basetask-move?view=graph-rest-beta&preserve-view=true) a task across lists.
- Refer to this [blog post](https://devblogs.microsoft.com/microsoft365dev/announcing-the-public-preview-of-to-do-tasks-api/) for more details and migrate any existing apps that use the [earlier To Do API](/graph/api/resources/todo-overview?view=graph-rest-beta&preserve-view=true) to the [latest To Do API](/graph/api/resources/tasks-overview?view=graph-rest-beta&preserve-view=true).


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
- Only the participants from the same company.

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
Enable [meeting registration](/graph/api/resources/meetingregistration?view=graph-rest-beta&preserve-view=true) and organize online meetings as a [webinar](https://support.microsoft.com/office/get-started-with-teams-webinars-42f3f874-22dc-4289-b53f-bbc1a69013e3). Associate the meeting with a registration page, and choose to enroll everyone or only organization members as [meeting registrants](/graph/api/resources/meetingregistrant?view=graph-rest-beta&preserve-view=true). 

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


## September 2021: New and generally available

### Cloud communications | Calls
- Put a [participant](/graph/api/resources/participant) on hold and play music in the background, by using the [startHoldMusic](/graph/api/participant-startHoldMusic) action.
- Reincorporate a participant previously put on hold to a call, by using the [stopHoldMusic](/graph/api/participant-stopHoldMusic) action.

### Cloud communications | Online meetings
- Get the content stream of an attendee report of a [Teams live event](/microsoftteams/teams-live-events/what-are-teams-live-events).
- Get or set the option to automatically record an [online meeting](/graph/api/resources/onlineMeeting).
- Use `OnlineMeetingArtifact.Read.All` as delegated or application permission to read artifacts of online meetings. For more information, see [online meetings permissions](permissions-reference.md#online-meetings-permissions).

### Devices and apps | Cloud printing
Cloud printer status includes all the standard values in [Internet Printing Protocol (IPP)](https://www.iana.org/assignments/ipp-registrations/ipp-registrations.xhtml).

### Devices and apps | Corporate management
Intune monthly updates for the v1.0 version. In the [changelog](https://developer.microsoft.com/graph/changelog), set the **Date** filter for September, 2021, and look for a section with this same heading.

### Files
- Get the details of any virus detected in a [driveItem](/graph/api/resources/driveItem) through a **malware** property.
- Use the [delta](/graph/api/driveitem-delta) function to track changes on not only the root folder but also other folders within a drive.

### Identity and access | Directory management
Providers of role-based access control (RBAC) can [manage roles](/graph/api/resources/rolemanagement) in Azure Active Directory, by [defining role actions](/graph/api/resources/unifiedroledefinition) that can be performed on specific resources, and [assigning roles](/graph/api/resources/unifiedroleassignment) to users based on such role definitions, giving them the corresponding access to those resources.

### Search | Query
- Aggregate numeric or string type search results that are imported by [Microsoft Graph connectors](/microsoftsearch/connectors-overview) and that are set to be refinable in the [schema](/graph/api/resources/schema). See more information about [refining search results using aggregations](search-concept-aggregation.md).
- [Sort](/graph/api/resources/search-api-overview#sort-search-results) search results for OneDrive and SharePoint on any sortable property. For more information, see [Use the Microsoft Search API to sort search results](search-concept-sort.md).

### Teamwork
Use a single action [provisionEmail](/graph/api/channel-provisionemail) to get the email address of a [channel](/graph/api/resources/channel) if one exists, or create one otherwise. Use the [removeEmail](/graph/api/channel-removeemail) action to remove the email address.

### Workbooks and charts
Create table rows asynchronously. For better performance, a good practice to create multiple table rows is to batch them in one [create tableRow](/graph/api/table-post-rows) operation and carry out the operation asynchronously. Follow with the [GET workbookOperation](/graph/api/workbookoperation-get) operation and [tableRowOperationResult](/graph/api/workbook-tableRowOperationResult) function to get the new [workbookTableRow](/graph/api/resources/workbooktablerow) resource.


## September 2021: New in preview only

### Applications
Applications that use Security Assertion Markup Language (SAML) single sign-on flows can specify a default redirect URI (**defaultRedirectUri** property of [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true)), or identify a specific redirect URI where users are sent to sign in (**redirectUriSettings** property of [webApplication](/graph/api/resources/webapplication?view=graph-rest-beta&preserve-view=true)). 

### Cloud communications | Online meetings
Get the total participant count in a [meeting attendance report](/graph/api/resources/meetingattendancereport?view=graph-rest-beta&preserve-view=true) of an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).

### Compliance | eDiscovery
The [create case](/graph/api/ediscovery-case-post?view=graph-rest-beta&preserve-view=true) operation always creates cases in large format. This expands the case size limit to accommodate a higher total data volume and total number of items. For details, see [benefits of large cases](/microsoft-365/compliance/advanced-ediscovery-new-case-format).

### Devices and apps | Cloud PC
- [Reprovision a Cloud PC](/graph/api/manageddevice-reprovisioncloudpc?view=graph-rest-beta&preserve-view=true) as a cloud-managed virtual desktop enrolled into Intune.
- [Resize a Cloud PC](/graph/api/manageddevice-resizecloudpc?view=graph-rest-beta&preserve-view=true) by either upgrading or downgrading it to another configuration with a new virtual CPU (vCPU) and storage size.
- [Set up](/graph/api/virtualendpoint-post-onpremisesconnections?view=graph-rest-beta&preserve-view=true), [list](/graph/api/virtualendpoint-list-onpremisesconnections?view=graph-rest-beta&preserve-view=true), and [run health checks](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) on [on-premises network connections](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true) to provision Cloud PCs.

### Devices and apps | Corporate management
Intune monthly updates for the beta version. In the [changelog](https://developer.microsoft.com/graph/changelog), set the **Date** filter for September, 2021, and look for a section with this same heading.

### Education
- Allow teachers to [reassign](/graph/api/educationsubmission-reassign?view=graph-rest-beta&preserve-view=true) an assignment [submission](/graph/api/resources/educationsubmission?view=graph-rest-beta&preserve-view=true) to the student with feedback for review.
- Support for adding assignments to only students' calendars if you use the `Prefer: include-unknown-enum-members` request header for operations on the [educationAssignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) or [educationAssignmentDefaults](/graph/api/resources/educationassignmentdefaults?view=graph-rest-beta&preserve-view=true) resource.

### Identity and access | Governance
[Delete](/graph/api/accesspackageassignmentrequest-delete?view=graph-rest-beta&preserve-view=true) an [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true) to remove a denied or completed request.

### Identity and access | Identity and sign-in
- Allow users to perform multi-factor authentication using a [software OATH token](/graph/api/resources/softwareOathAuthenticationMethod?view=graph-rest-beta&preserve-view=true). A software OATH token is a software-based number generator that uses the OATH Time-Based One Time Password (TOTP) standard.
- Identify whether number matching is enabled or disabled for multi-factor authentication by policy in Azure AD, by using the **numberMatchingRequiredState** property of [microsoftAuthenticatorAuthenticationMethodTarget](/graph/api/resources/microsoftAuthenticatorAuthenticationMethodTarget?view=graph-rest-beta&preserve-view=true).
- Identify whether to show a user additional context in their authenticator app notification, by using the **displayAppInformationRequiredState** property of [microsoftAuthenticatorAuthenticationMethodTarget](/graph/api/resources/microsoftAuthenticatorAuthenticationMethodTarget?view=graph-rest-beta&preserve-view=true).
- Use [B2C user flow](/graph/api/resources/b2cidentityuserflow?view=graph-rest-beta&preserve-view=true) and [self-service sign-up user flow](/graph/api/resources/b2xidentityuserflow?view=graph-rest-beta&preserve-view=true) in favor of the earlier [user flow](/graph/api/resources/identityuserflow?view=graph-rest-beta&preserve-view=true) API, which has been deprecated.

### Security | Attack simulation and training
Debut of the API for [attack simulation and training](/microsoft-365/security/office-365-security/attack-simulation-training?view=o365-worldwide&preserve-view=true), which is a service available as part of [Microsoft Defender for Office 365](/microsoft-365/security/office-365-security/defender-for-office-365?view=o365-worldwide&preserve-view=true). The API enables tenant administrators to [list launched simulation exercises and trainings](/graph/api/attacksimulationroot-list-simulations?view=graph-rest-beta&preserve-view=true), and get [reports](/graph/api/resources/report-m365defender-reports-overview?view=graph-rest-beta&preserve-view=true) on derived insights into online behaviors of users in the phishing simulations.

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
- Organizations can use [policies to enforce best practices for apps using application authentication methods](/graph/api/resources/applicationauthenticationmethodpolicy). Such policies can apply to [specific applications and service principals](/graph/api/resources/appmanagementpolicy?view=graph-rest-beta&preserve-view=true), or to [all applications and service principals in a tenant](/graph/api/resources/tenantappmanagementpolicy).
- Support for paging on the **appRoleAssignments** navigation property for [users](/graph/api/user-list-approleassignments), [groups](/graph/api/group-list-approleassignments), and [service principals](/graph/api/serviceprincipal-list-approleassignments).
- Allow an Azure Active Directory (Azure AD) tenant to set up [federation with another organization whose identity provider (IdP) supports either the SAML or WS-Fed protocol](/graph/api/resources/samlOrWsFedExternalDomainFederation?view=graph-rest-beta&preserve-view=true). This enables the Azure AD tenant to allow guest users to access its resources.

### Teamwork
- Get [information about an online meeting](/graph/api/resources/teamworkOnlineMeetingInfo?view=graph-rest-beta&preserve-view=true) that is associated with a [chat](/graph/api/resources/chat).
- Get the identifier of the tenant in which a **chat** is created.

### Users
Use the last interactive and non-interactive sign-in date/time values of users' [signInActivity](/graph/api/resources/signInActivity?view=graph-rest-beta&preserve-view=true) to [manage inactive accounts](/azure/active-directory/reports-monitoring/howto-manage-inactive-user-accounts).


## July 2021: New and generally available

### Cloud communications | Calls
Support for a capacity limit for the number of participants that an application can handle when [answering](/graph/api/call-answer) a [call](/graph/api/resources/call), in organizations that adopt [Teams policy-based recording](/microsoftteams/teams-recording-policy).

### Identity and access | Identity and sign-in
- GA of identity providers that share a common base type [identityProviderBase](/graph/api/resources/identityproviderbase):
  - Built-in identity providers for Azure AD B2B scenarios in an Azure AD tenant. These providers can support Azure AD, Microsoft account (MSA), or email one-time passcodes.
  - Social identity providers in an Azure AD B2C tenant to allow users to sign up and sign in for the service using a social media account, such as Microsoft, Google, Facebook, Amazon, LinkedIn, or Twitter.
- Deprecation of the earlier [identity provider](/graph/api/resources/identityprovider) API.

### Users
Let a user [change their own password](/graph/api/user-changepassword) without requiring an administrator role.


## July 2021: New in preview only

### Devices and apps | Cloud PC
An on-premises connection [health check](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) can identify a few more possible health check error types:
- Cloud PC computer account is not found in the organizational unit (`adJoinCheckComputerObjectAlreadyExists`).
- Cloud PC object is not found in Azure AD (`azureAdDeviceSyncCheckDeviceNotFound`).
- Timeout from checking if a cloud PC object has been synchronized to Azure AD (`azureAdDeviceSyncCheckLongSyncCircle`). 

See the [reference](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true#cloudpconpremisesconnectionhealthcheckerrortype-values) for details and recommended remedial actions.

### Devices and apps | Corporate management
Intune monthly updates for the beta version. Set the **Date** filter for July, 2021, and look for a section with this same heading.

### Devices and apps | Multi-tenant management
Debut of the [Microsoft 365 Lighthouse API](managedtenants-concept-overview.md) that lets Managed Service Providers (MSPs) remotely manage multiple customer tenants at scale for compliance and threat detection, and help get tenant devices in a healthy and secure state.

### Education
- Get an error count and status message as part of the [status of a school data synchronization](/graph/api/resources/educationsynchronizationprofilestatus?view=graph-rest-beta&preserve-view=true).
- Get `extracting` or `validating` as possible states of a such a sync.

### Identity and access | Governance
Get a collection of errors in the lifecycle of an [access review instance](/graph/api/resources/accessreviewinstance?view=graph-rest-beta&preserve-view=true).

### Search
- Use the [Microsoft Search API to retrieve information about the people](search-concept-person.md) who are most relevant to a user. Relevance is determined by the user’s communication and collaboration patterns and business relationships. 
- Access the [connectors indexing API](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true) in the microsoft.graph.externalConnectors sub-namespace.

### Teamwork
- [Subscribe to change notifications on the chat resource](teams-changenotifications-chat.md).
- [Subscribe to change notifications of users in a chat](teams-changenotifications-chatmembership.md), in a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), or in a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) (i.e., [conversationMember](/graph/api/resources/conversationmember?view=graph-rest-beta&preserve-view=true) resources).
- Get details of an event that happened in a chat, channel or team by accessing [eventMessageDetail](/graph/api/resources/EventMessageDetail?view=graph-rest-beta&preserve-view=true) from a [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) or [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true). For example, members added to a channel or  chat, and team description updated.


## June 2021: New and generally available

### Applications
Get or set the status of an [application](/graph/api/resources/application) or [servicePrincipal](/graph/api/resources/serviceprincipal) to identify if Microsoft has disabled the application through the **disabledByMicrosoftStatus** property. Disabling reasons include suspicious, abusive, or malicious activity, or a violation of the Microsoft Services Agreement.

### Change notifications
Extended the maximum length of a subscription before expiring for the following resources:
- OneDrive [driveItem](/graph/api/resources/driveitem) and SharePoint [list](/graph/api/resources/list) from 3 to 30 days.
- [group](/graph/api/resources/group), [user](/graph/api/resources/user), or other directory resources from 3 to 29 days.

### Change tracking
Removed limitation for tracking changes in non-root folders in OneDrive for Business and SharePoint.

### Education
The APIs for the education [assignments service](/graph/api/resources/educationassignment) are now generally available. 

### Identity and access | Governance
GA of the [access review](/graph/api/resources/accessreviewsv2-overview) API. Check out the [overview](accessreviews-overview.md) and tutorials to [review access to security groups](tutorial-accessreviews-securitygroup.md) and [access to Microsoft 365 groups](tutorial-accessreviews-m365group.md). Note that the [legacy access review API](/graph/api/resources/accessreviews-root?view=graph-rest-beta&preserve-view=true) is being deprecated and will stop returning data in May 2023.


## June 2021: New in preview only

### Cloud communications | Online meetings
Customize audio and video control in an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) by enabling or disabling attendees from turning on their cameras and microphones, through the **allowAttendeeToEnableCamera** and **allowAttendeeToEnableMic** respectively.

### Devices and apps | Cloud PC
- [Assign](/graph/api/cloudpcusersetting-assign?view=graph-rest-beta&preserve-view=true) and manage [cloudPcUserSetting](/graph/api/resources/cloudpcusersetting?view=graph-rest-beta&preserve-view=true) to enable local admin or self-service option for a user on a cloud PC. Currently assignments can be made at a group level (users belonging to a Microsoft 365 group or security group).
- [Get](/graph/api/cloudpc-get?view=graph-rest-beta&preserve-view=true) a few new properties of a [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true): the names of the provisioning policy and of the on-premises connection used during provisioning, and the end date/time of the grace period by which reprovisioning or deprovisioning happens.
- Support for more status and error types upon a [health check](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) on an [on-premises connection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true).

### Education
- Teachers can now select the default behavior for a calendar when they publish assignments. Teachers can control the assignment calendar behavior by using the **addToCalendarAction** property of the [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) resource.
- Teachers can now also set a default behavior for a calendar when they publish assignments. Teachers can control the assignment default calendar behavior by using the **addToCalendarAction** property of the [educationAssignmentDefaults](/graph/api/resources/educationAssignmentDefaults?view=graph-rest-beta&preserve-view=true) resource.

### Groups
Allow a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) to be assigned to an Azure AD role on creation by setting the **isAssignableToRole** property. If set, this property makes it convenient to manage roles for individuals - instead of having to assign a role to each individual person, eligible persons can join a group, and assigning the role to the group would by default assign the role to each new person joining the group. 

### Identity and access | Governance
Set users or group members to be notified of the progress of an [access review](/graph/api/resources/accessreviewsv2-overview?view=graph-rest-beta&preserve-view=true), by using the **additionalNotificationRecipients** property of the [schedule definition](/graph/api/resources/accessreviewscheduledefinition?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
Define a filter to dynamically include or exclude devices, using the **deviceFilter** property of [conditionalAccessDevices](/graph/api/resources/conditionalAccessDevices?view=graph-rest-beta&preserve-view=true).

### Sites and lists
Create or get an existing [sharingLink](/graph/api/resources/sharinglink?view=graph-rest-beta&preserve-view=true) for a [listItem](/graph/api/resources/listitem?view=graph-rest-beta&preserve-view=true) by calling [createLink](/graph/api/listitem-createlink?view=graph-rest-beta&preserve-view=true).

### Teamwork
- [Get](/graph/api/chat-get?view=graph-rest-beta&preserve-view=true) an opaque URL to a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) via the **webUrl** property.
- [Subscribe to change notifications](/graph/webhooks?view=graph-rest-beta&preserve-view=true) of a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), [conversationMember](/graph/api/resources/conversationmember?view=graph-rest-beta&preserve-view=true), or [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) resource.
- Use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) permissions with the APIs for [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true), [chatMessage](/graph/api/resources/chatMessage?view=graph-rest-beta&preserve-view=true), [chatMessageHostedContent](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta&preserve-view=true), or [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true).
- Get a list of [resource-specific permissions grants](/graph/api/resources/resourcespecificpermissiongrant?view=graph-rest-beta&preserve-view=true) for a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), that specifies that team's apps and the corresponding resource-specific permissions that they have been granted.
- [Get](/graph/api/teamsasyncoperation-get?view=graph-rest-beta&preserve-view=true) a specific [asynchronous operation](/graph/api/resources/teamsasyncoperation?view=graph-rest-beta&preserve-view=true), or [list](/graph/api/chat-list-operations?view=graph-rest-beta&preserve-view=true) all the asynchronous operations that run on a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).
- Can specify a [Teams app](/graph/api/resources/teamsapp?view=graph-rest-beta&preserve-view=true) when [creating a chat](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true).
- Use a single action [provisionEmail](/graph/api/channel-provisionemail?view=graph-rest-beta&preserve-view=true) to get the email address of a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) if one exists, or create one otherwise. Use the [removeEmail](/graph/api/channel-removeemail?view=graph-rest-beta&preserve-view=true) action to remove the email address.

### Teamwork | Shifts
- Support for the [offerShiftRequest](/graph/api/resources/offershiftrequest?view=graph-rest-beta&preserve-view=true), [timeOff](/graph/api/resources/timeoff?view=graph-rest-beta&preserve-view=true), [timeOffReason](/graph/api/resources/timeoffreason?view=graph-rest-beta&preserve-view=true), and [timeOffRequest](/graph/api/resources/timeoffrequest?view=graph-rest-beta&preserve-view=true) entities for synchronous change notifications.
- Support for managing [time card](/graph/api/resources/timecard?view=graph-rest-beta&preserve-view=true) resources and common functionality such as [clock in](/graph/api/timecard-clockin?view=graph-rest-beta&preserve-view=true), [clock out](/graph/api/timecard-clockout?view=graph-rest-beta&preserve-view=true), [start break](/graph/api/timecard-startbreak?view=graph-rest-beta&preserve-view=true), [end break](/graph/api/timecard-endbreak?view=graph-rest-beta&preserve-view=true), [confirm](/graph/api/timecard-confirm?view=graph-rest-beta&preserve-view=true), and [replace](/graph/api/timecard-replace?view=graph-rest-beta&preserve-view=true).


## May 2021: New and generally available

### Devices and apps | Cloud printing
Find out when a printer last interacted with Universal Print, by using the **lastSeenDateTime** property of [printer](/graph/api/resources/printer).

### Identity and access | Identity and sign-in
Get or update the role of a guest user by using the **guestUserRoleId** property of [authorizationPolicy](/graph/api/resources/authorizationpolicy).

### Mail
- [Create drafts and send Outlook messages in MIME format](outlook-send-mime-message.md), attach S/MIME digital signatures, and encrypt message content in S/MIME.
- Create a [mailFolder](/graph/api/resources/mailfolder) as a [hidden folder](/graph/api/resources/mailfolder#hidden-mail-folders) by [setting the isHidden property](/graph/api/user-post-mailfolders#example).

### Microsoft Graph Toolkit
Try the following new features in the Microsoft Graph Toolkit 2.2:
- [File](/graph/toolkit/components/file) and [file list](/graph/toolkit/components/file-list) components
- [MSAL 2.0 authentication provider](/graph/toolkit/providers/msal2)
- [SharePoint Framework library](/graph/toolkit/get-started/mgt-spfx)

### Reports | Azure AD activity reports
GA of the reporting API to [list](/graph/api/provisioningobjectsummary-list) actions performed by the Azure AD provisioning service and its associated properties. Aligned the prior beta version to the v1.0 version of the API.

## May 2021: New in preview only

### Connecting external content
- Be aware of [implementation and operational limits](connecting-external-content-api-limits.md) when designing connectors.
- Try the [connectors API with Postman](connecting-external-content-connectors-api-postman.md).

### Devices and apps | Cloud PC
Request the least privileged application permissions, `CloudPC.Read.All` or `CloudPC.ReadWrite.All`, to access methods of the following resources:
  - Read and write operations, and [reprovision](/graph/api/cloudpc-reprovision?view=graph-rest-beta&preserve-view=true) method of [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [getSourceImages](/graph/api/cloudpcdeviceimage-getsourceimages?view=graph-rest-beta&preserve-view=true) method of [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [updateAdDomainPassword](/graph/api/cloudpconpremisesconnection-updateaddomainpassword?view=graph-rest-beta&preserve-view=true) method of [cloudPcOnPremisesConnection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true).
  - Read and write operations, and [assign](/graph/api/cloudpcprovisioningpolicy-assign?view=graph-rest-beta&preserve-view=true) method of [cloudPcProvisioningPolicy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Corporate management
Intune monthly updates for the beta version. Set the **Date** filter for June, 2021, and look for a section with this same heading.

### Education
- [Set up a SharePoint resource folder](/graph/api/educationAssignment-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) to upload and store all file-based resources in the same location for an [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true).
- [Set up a SharePoint resource folder](/graph/api/educationsubmission-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) to upload and store all file-based resources, such as a Word or Excel file, in the same location for an [educationSubmission](/graph/api/resources/educationsubmission?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
- Get a collection of [accessPackageAssignment](/graph/api/resources/accessPackageAssignment?view=graph-rest-beta&preserve-view=true) resources by [filtering on the signed-in user](/graph/api/accesspackageassignment-filterbycurrentuser?view=graph-rest-beta&preserve-view=true).
- Get a collection of [accessPackageAssignmentRequest](/graph/api/resources/accessPackageAssignmentRequest?view=graph-rest-beta&preserve-view=true) resources by [filtering on the signed-in user](/graph/api/accesspackageassignmentrequest-filterbycurrentuser?view=graph-rest-beta&preserve-view=true).

### Use SDKs
Try the preview version of [Microsoft Graph .NET SDK v4](https://www.nuget.org/packages/Microsoft.Graph/4.0.0-preview.4), and take advantage of the following improvements:
- Use a single API to authenticate against Microsoft Graph and Azure .NET clients.
- New support for JSON serialization and deserialization.
- Easy access to response information.
- Better experience upgrading dependencies.

## April 2021: New and generally available

### Identity and access | Identity and sign-in
- Manage an [authentication policy](/graph/api/resources/authenticationflowspolicy) at a tenant level, to enable or disable [self-service sign-up](/graph/api/resources/selfservicesignupauthenticationflowconfiguration) of external users.
- Administrators can associate user flows with apps that are shared with external users and enable [self-service sign-up](/azure/active-directory/external-identities/self-service-sign-up-overview) on those apps. They can customize a self-service sign-up user flow and create a personalized sign-up experience. Once an application is associated with the user flow, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.
- Configure [user flow attributes](/graph/api/resources/identityuserflowattribute) in your Azure AD tenant allows you to collect information about a user during sign-up. You can collect a built-in set of attributes, or configure custom user flow attributes to collect information from a user that is not built in to the directory. 
- In an [Azure Active Directory user flow](/graph/api/resources/b2xidentityuserflow), you can manage language defaults and [customize the language and strings displayed to users in the user flow](/graph/api/resources/userflowlanguageconfiguration).
- Use an [API connector](/graph/api/resources/identityapiconnector) in user flows for Azure AD self-service sign-up and Azure AD B2C sign-up, to call an API at a specific step to affect the execution of the user flow.

### Teamwork
- Identify the channel by the **channelIdentity** property, if a [chatMessage](/graph/api/resources/chatmessage) is within a [channel](/graph/api/resources/channel).
- Identify the chat by the **chatId** property, if the **[chatMessage](/graph/api/resources/chatmessage)** is in a [chat](/graph/api/resources/chat).
- Use the **messages** relationship to get all the [chatMessage](/graph/api/resources/chatmessage) resources in a [chat](/graph/api/resources/chat).
- Use application permissions to [get](/graph/api/chat-get) the properties of a specified [chat](/graph/api/resources/chat).
- Use application permissions to [get a specified chat member](/graph/api/chat-get-members) or [get all the chat members](/graph/api/chat-list-members) included in a chat. Because data for users as chat members is sensitive, other than obtaining application permissions, please [request additional access](teams-protected-apis.md) to these operations.

### Use the Toolkit
New to the [Microsoft Graph Toolkit](/graph/toolkit/overview)? Try the new [Toolkit learning path](/training/paths/m365-msgraph-toolkit/?WT.mc_id=m365-19989-cxa), use the Toolkit set of web components and authentication providers to connect a web app to Microsoft Graph, and load data from Microsoft 365.

## April 2021: New in preview only

### Cloud communications | Online meetings
- Get a [report](/graph/api/resources/meetingattendancereport?view=graph-rest-beta&preserve-view=true) of [each attendee's attendance](/graph/api/resources/attendancerecord?view=graph-rest-beta&preserve-view=true) in a scheduled online meeting, through the **meetingAttendanceReport** property of the [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- Enable, disable, or limit duration of chat for an online meeting by using the **allowMeetingChat** property.
- Enable or disable reactions for an online meeting, by using the **allowTeamworkReactions** property.

### Compliance
[Get](/graph/api/ediscovery-casesettings-get), [update](/graph/api/ediscovery-casesettings-update), or [reset to default](/graph/api/ediscovery-casesettings-resettodefault) the following [settings](/graph/api/resources/security-ediscoverycasesettings) for an eDiscovery [case](/graph/api/resources/ediscovery-case?view=graph-rest-beta&preserve-view=true):
- [Detection of duplicates, near-duplicate](/microsoft-365/compliance/near-duplicate-detection-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true), and [email threading](/microsoft-365/compliance/email-threading-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true), through the **redundancyDetection** property.
- [Identifying themes](/microsoft-365/compliance/themes-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true) which are prevalent ideas in documents of a review set, through the **topicModeling** property.
- [Extracting text from image files by optical character recognition (OCR)](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery?view=o365-worldwide&preserve-view=true#optical-character-recognition-ocr), through the **ocr** property.

These settings provide analytics functionality that [culls data intelligently](/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide&preserve-view=true#cull-data-intelligently) in the end-to-end workflow of [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide&preserve-view=true).

### Devices and apps | Device updates
Debut of APIs for the Windows Update for Business deployment service. The service supports deploying Windows 10 feature updates and expediting Windows 10 security updates on devices. To learn more, start with the [Windows updates API overview](windowsupdates-concept-overview.md).

### Education
- Associate a folder with an [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) to  store all the related file resources, through the **resourcesFolderUrl** property.
- Deep link into an [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) through the **webUrl** property.

### Identity and access | Governance
Administrators can [get](/graph/api/accessreviewpolicy-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/accessreviewpolicy-update?view=graph-rest-beta&preserve-view=true) policies at the directory-level to review access, by using the [accessReviewPolicy](/graph/api/resources/accessreviewpolicy?view=graph-rest-beta&preserve-view=true) resource. For example, administrators can use an access review policy to enable or disable group owners reviewing access on groups that they own.

### Search
[Enable spelling suggestions or corrections](search-concept-speller.md) for a user query. This is useful when a user query contains typing errors, or when the errors render no search results.

### Teamwork
- Use [resource-specific permission grant](/graph/api/resources/resourcespecificpermissiongrant?view=graph-rest-beta&preserve-view=true) to list the apps with access to a specified [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) or [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).
- [Get](/graph/api/teamsappicon-get?view=graph-rest-beta&preserve-view=true) the properties of an [icon](/graph/api/resources/teamsAppIcon?view=graph-rest-beta&preserve-view=true) associated with a Teams app. To get the actual image of the icon, use [get hosted content](/graph/api/teamworkhostedcontent-get?view=graph-rest-beta&preserve-view=true).

### Use SDKs
- Try the [preview release of the Microsoft Graph JavaScript client library, version 3.0.0](https://www.npmjs.com/package/@microsoft/microsoft-graph-client/v/3.0.0-Preview.1).This release enables multiple authentication flows, server-side authentication, Node.js Stream large file upload and progress tracking, and more. See the [upgrade guide](https://github.com/microsoftgraph/msgraph-sdk-javascript/blob/dev/changelogs/v3-upgrade-guide.md) for details.
- Try a new learning path to [explore Microsoft Graph scenarios for JavaScript development](/training/paths/m365-msgraph-scenarios/?WT.mc_id=m365-16105-cxa).


## March 2021: New and generally available

### Applications
- GA of the [applicationTemplate](/graph/api/resources/applicationtemplate) resource which supports [listing](/graph/api/applicationtemplate-list) applications in the Azure AD application gallery, and [adding](/graph/api/applicationtemplate-instantiate) an instance of such an application to a directory.
- Use app-only permission `Application.ReadWrite.OwnedBy` when [adding](/graph/api/applicationtemplate-instantiate) such an instance.
- Use the **signInAudience** property of [servicePrincipal](/graph/api/resources/serviceprincipal) to get the user accounts supported by the current application.

### Devices and apps | Cloud printing
- GA of the [cloud printing API](universal-print-concept-overview.md) for Universal Print! See the [announcement](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/universal-print-is-ready-for-business/ba-p/2176778), and check out how to [get started with Universal Print](/universal-print/fundamentals/universal-print-license).
- [Subscribe to change notifications](universal-print-webhook-notifications.md) on a [print task definition](/graph/api/resources/printtaskdefinition) or [printer](/graph/api/resources/printer) resource.

### Identity and access | Governance
- Use Azure Active Directory (Azure AD) [consent requests](/graph/api/resources/consentrequests-root) to manage the request workflow for users attempting to access apps that require admin approval. The API makes use of the following resources:
  - The [adminConsentRequestPolicy](/graph/api/resources/adminconsentrequestpolicy) resource for creating and managing requests for app access for the organization.
  - The [appConsentRequest](/graph/api/resources/appconsentrequest) resource for aggregating and managing user requests to access a specific app.
  - The [userConsentRequest](/graph/api/resources/userConsentRequest) resource for users requesting access to an app which requires admin authorization. 
  - The [accessReviewReviewerScope](/graph/api/resources/accessReviewReviewerScope) resource defines who is specified in the **adminConsentRequestPolicy** to review **appConsentRequest** and **userConsentRequest** objects.
  - The [approval](/graph/api/resources/approval) resource represents an approval decision for a request.
- GA of the Terms of Use API which supports a tenant's customizable [Terms of Use agreement](/graph/api/resources/agreement) in Azure AD.

### Identity and access | Identity and sign-in
- GA of [authentication methods](/graph/api/resources/authenticationmethods-overview) including [FIDO2 security keys](/graph/api/resources/fido2authenticationmethod), [Microsoft Authenticator app](/graph/api/resources/microsoftauthenticatorauthenticationmethod), and [Windows Hello for Business](/graph/api/resources/windowshelloforbusinessauthenticationmethod).
- GA of [authentication method policies](/graph/api/resources/authenticationmethodspolicies-overview) that define authentication methods and the users that are allowed to use them to sign in and perform multi-factor authentication (MFA) in Azure AD. Authentication methods policies that can be managed in Microsoft Graph include [FIDO2 security keys](/graph/api/resources/fido2authenticationmethodconfiguration), Passwordless Phone Sign-in with [Microsoft Authenticator app](/graph/api/resources/microsoftauthenticatorauthenticationmethodconfiguration), and tenant's [email OTP authentication methods policy](/graph/api/resources/emailauthenticationmethodconfiguration).
- GA of [feature rollout policy](/graph/api/resources/featureRolloutPolicy) that helps tenant administrators to pilot features to specific groups before enabling them for the entire organization.
- GA of the [organization branding properties](/graph/api/resources/organizationalbrandingproperties) which enables a custom look and feel of Azure Active Directory sign-in screens. Organizations can customize based on locale for specific users.

### Tasks and plans
- Use the delegated permission of `Tasks.Read` to read operations of all Planner resources.
- Use the delegated permission of `Tasks.ReadWrite` to read and write operations of all Planner resources.

### Teamwork
- GA of [chat](/graph/api/resources/chat) operations, chat [conversationMember](/graph/api/resources/conversationmember), chat [app](/graph/api/resources/teamsappinstallation), chat [tab](/graph/api/resources/teamstab), and their methods.
- GA of a few more properties of [teamsAppDefinition](/graph/api/resources/teamsAppDefinition), which represent details of a version of an app in the Microsoft Teams app catalog, including the following:
  - **createdBy**, **description**, **shortDescription**, **lastModifiedDateTime**
  - **publishingState** which can be one of `submitted` and under review, `published`, or `rejected` by the admin
  - **bot** relationship of the [teamworkBot](/graph/api/resources/teamworkbot) type, representing the details of the bot specified in the teams app manifest.
- Use the activity feed notifications API to better engage users in three contexts:
  - [Send notification to user in a chat](/graph/api/chat-sendactivitynotification)
  - [Send notification to user in a team](/graph/api/team-sendactivitynotification)
  - [Send notification to user](/graph/api/userteamwork-sendactivitynotification)
- Migrate users' message history and data from an external system into a Teams channel, allowing users to continue their communications seamlessly. Use the following methods that support the migration scenario:
  - [Create team](/graph/api/team-post)
  - [Create channel](/graph/api/channel-post)
  - [Create chatMessage in a channel](/graph/api/channel-post-messages)
  - [Reply to a message in a channel](/graph/api/channel-post-messagereply)
  - [Complete message migration in a team](/graph/api/team-completemigration)
  - [Complete message migration in a channel](/graph/api/channel-completemigration)
- [List](/graph/api/chatmessage-list-hostedcontents) or [get](/graph/api/chatmessagehostedcontent-get) rich content hosted in a [chatMessage](/graph/api/resources/chatmessage), such as images or code snippets.
- Delegated permissions support of `ChannelMessage.Read.All` for subscribing change notifications on [chatMessage](/graph/api/resources/chatmessage) resources.

## March 2021: New in preview only

### Applications
[Create and add self-signed certificates](/graph/api/servicePrincipal-addTokenSigningCertificate?view=graph-rest-beta&preserve-view=true) to your SAML applications. Use this to help enable single sign-on for Azure AD gallery apps in your tenant by allowing Azure AD to sign SAML responses.

### Devices and apps | Cloud PC
Added to the [cloudPcDeviceImage](/graph/api/resources/cloudpcdeviceimage?view=graph-rest-beta&preserve-view=true) resource two more reasons for failure to upload a device source image: operating system not supported (`osVersionNotSupported`), or an invalid source image to provision a Windows VM (`sourceImageInvalid`).

### Devices and apps | Cloud printing
Get the most recent date/time (**lastSeenDateTime** property) when a printer interacted with Universal Print.

### Devices and apps | Corporate management
Intune [March](https://developer.microsoft.com/graph/changelog/?from=2021-03-01&to=2021-03-31&filterBy=Corporate%20management) updates for the beta version.

### Identity and access | Governance
Apply the new model of [access reviews](/graph/api/resources/accessreviewsv2-overview?view=graph-rest-beta&preserve-view=true) to group memberships and all other supported resource types. Deprecate the [legacy model of access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta&preserve-view=true).

### Sites and lists
- Support a specific content type or template for documents or document sets in specific site collections, through a set of new properties and methods on the [contentType](/graph/api/resources/contentType?view=graph-rest-beta&preserve-view=true) entity. The methods include the following:
  - [addCopy](/graph/api/contenttype-addcopy?view=graph-rest-beta&preserve-view=true)
  - [associateWithHubSites](/graph/api/contenttype-associatewithhubsites?view=graph-rest-beta&preserve-view=true)
  - [copyToDefaultContentLocation](/graph/api/contenttype-copytodefaultcontentlocation?view=graph-rest-beta&preserve-view=true)
  - [isPublished](/graph/api/contenttype-ispublished?view=graph-rest-beta&preserve-view=true)
  - [publish](/graph/api/contenttype-publish?view=graph-rest-beta&preserve-view=true)
  - [unpublish](/graph/api/contenttype-unpublish?view=graph-rest-beta&preserve-view=true)
- Customize content types by their columns. Columns are represented by the [columnDefinition](/graph/api/resources/columndefinition?view=graph-rest-beta&preserve-view=true) entity, and support the full set of CRUD operations.
- [Get content types of a site that can be applied to a list](/graph/api/site-getApplicableContentTypesForList?view=graph-rest-beta&preserve-view=true).
- Differentiate column types by the following properties in the **columnDefinition** entity: boolean, calculated, choice, currency, dateTime, lookup, number, personOrGroup, text. These properties are mutually exclusive.

### Sites and lists | Taxonomy
- Navigate from a [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true) to a [taxonomy term store](/graph/api/resources/termstore-store?view=graph-rest-beta&preserve-view=true) using the **termStore** relationship.
- In the reverse direction, get the ID of the parent site of a term store using the **parentSiteId** property.

### Users
- [Get](/graph/api/regionalandlanguagesettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/regionalandlanguagesettings-update?view=graph-rest-beta&preserve-view=true) a user's [preferences for translating languages](/graph/api/resources/translationpreferences?view=graph-rest-beta&preserve-view=true). For example, whether or not to translate, translate automatically, or prompt before translating specific languages in messages, chats, and web pages, and any [translation overrides](/graph/api/resources/translationlanguageoverride?view=graph-rest-beta&preserve-view=true).
- [Activate a service plan](/graph/api/user-activateServicePlan?view=graph-rest-beta&preserve-view=true) for a user.


## February 2021: New and generally available

### Cloud communications | Online meeting
Use policy-based application permissions of `OnlineMeetings.Read.All` or `OnlineMeetings.ReadWrite.All` on operations and methods of the [onlineMeeting](/graph/api/resources/onlinemeeting) resource. This means administrators can [configure application access policy](cloud-communication-online-meeting-application-access-policy.md) to allow apps to access online meetings on behalf of a user.

### Sites and lists
Use the [permission](/graph/api/resources/permission) resource and its CRUD operations to manage sharing permission granted for a [driveItem](/graph/api/resources/driveitem). Permissions with a link facet represent sharing links created on the item. Permissions with an invitation facet represent permissions added by inviting specific users or groups to have access to the file.

## February 2021: New in preview only

### Applications
Use application permissions for the [synchronization APIs](/graph/api/resources/synchronization-overview?view=graph-rest-beta&preserve-view=true) that automate provisioning (creation, maintenance) and de-provisioning (removal) of identities in Azure AD.

### Cloud communications | Calls
Support for [policy-based recording for calls](/microsoftteams/teams-recording-policy) where using administrative policy, calls are automatically recorded for subsequent processing and retention as required by relevant corporate or regulatory policy. Before a policy-based participant joins a call, policy stipulates sending a [participantJoiningNotification](/graph/api/resources/participantJoiningNotification?view=graph-rest-beta&preserve-view=true) to the bot associated with the policy that has available capacity to handle the new participant. The bot responds with one of [acceptJoinResponse](/graph/api/resources/acceptjoinresponse?view=graph-rest-beta&preserve-view=true), [rejectJoinResponse](/graph/api/resources/rejectjoinresponse?view=graph-rest-beta&preserve-view=true), or [inviteNewBotResponse](/graph/api/resources/invitenewbotresponse?view=graph-rest-beta&preserve-view=true) in its response payload.

### Compliance | eDiscovery
- Use the [legalHold](/graph/api/resources/ediscovery-legalhold?view=graph-rest-beta&preserve-view=true) resource and its APIs to protect content indefinitely from deletion, for the purpose of litigation, internal investigation, or other legal actions.
- Use the [sourceCollection](/graph/api/resources/ediscovery-sourcecollection?view=graph-rest-beta&preserve-view=true) resource and its APIs to search for and identify relevant documents from custodial and non-custodial locations in Microsoft 365.
- Use the [tag](/graph/api/resources/ediscovery-tag?view=graph-rest-beta&preserve-view=true) resource and APIs to mark documents during review to separate responsive and non-responsive content.
- [Export](/graph/api/ediscovery-reviewset-export?view=graph-rest-beta&preserve-view=true) documents from a [review set](/graph/api/resources/ediscovery-reviewset?view=graph-rest-beta&preserve-view=true).
- Use the [addToReviewSet](/graph/api/ediscovery-reviewset-addtoreviewset?view=graph-rest-beta&preserve-view=true) action to add documents in a **sourceCollection** to a **reviewSet**.
- [Apply tags](/graph/api/ediscovery-reviewsetquery-applytags?view=graph-rest-beta&preserve-view=true) to documents based on a [review set query](/graph/api/resources/ediscovery-reviewsetquery?view=graph-rest-beta&preserve-view=true).
- Defined all eDiscovery API in the `microsoft.graph.ediscovery` namespace.
- Changed delegated permissions model from `User.Read` to `eDiscovery.Read.All` and `eDiscovery.ReadWrite.All`.

### Devices and apps | Corporate management
- Intune [February](https://developer.microsoft.com/graph/changelog/?from=2021-02-01&to=2021-02-28&filterBy=Corporate%20management) updates for the beta version.
- New properties set by Intune on the [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true) resource: **deviceCategory**, **deviceOwnership**, **domainName**, **enrollmentProfileName**, **enrollmentType**, **isRooted**, **managementType**, and **registrationDateTime**.

### Education
Use [educationAssignmentDefaults](/graph/api/resources/educationAssignmentDefaults?view=graph-rest-beta&preserve-view=true) to specify default practices on an assignment for a class, for example, assignment due time, channel URL for notifications on an assignment. You can still customize values when creating an assignment.

### Identity and access | Identity and sign-in
- Use the [smsAuthenticationMethodConfiguration](/graph/api/resources/smsAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) resource to [get](/graph/api/smsauthenticationmethodconfiguration-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/smsauthenticationmethodconfiguration-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/smsauthenticationmethodconfiguration-delete?view=graph-rest-beta&preserve-view=true) the configuration settings of a text message authentication policy in an organization.
- Use the [temporaryAccessPassAuthenticationMethodConfiguration](/graph/api/resources/temporaryaccesspassauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) resource to [get](/graph/api/temporaryaccesspassauthenticationmethodconfiguration-get?view=graph-rest-beta&preserve-view=true), [update](/graph/api/temporaryaccesspassauthenticationmethodconfiguration-update?view=graph-rest-beta&preserve-view=true), and [delete](/graph/api/temporaryaccesspassauthenticationmethodconfiguration-delete?view=graph-rest-beta&preserve-view=true) the configuration settings of a temporary access pass authentication policy in an organization.

### Identity and access | Governance
- Assign geolocation information to an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true) resource in the [access package assignment request](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true).
- Get a list of all [access package resource environments](/graph/api/resources/accesspackageresourceenvironment?view=graph-rest-beta&preserve-view=true) that represent the geolocations that store SharePoint Online resources.
- Use application permissions (`EntitlementManagement.Read.All` or `EntitlementManagement.ReadWrite.All`) for operations of the following resources:
  - [accessPackage](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignment](/graph/api/resources/accesspackageassignment?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignmentPolicy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignmentRequest](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true)
  - [accessPackageAssignmentResourceRole](/graph/api/resources/accesspackageassignmentresourcerole?view=graph-rest-beta&preserve-view=true)
  - [accessPackageCatalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true)
  - [accessPackageResourceRequest](/graph/api/resources/accesspackageresourcerequest?view=graph-rest-beta&preserve-view=true)
  - [connectedOrganization](/graph/api/resources/connectedorganization?view=graph-rest-beta&preserve-view=true)
  - [entitlementManagementSettings](/graph/api/resources/entitlementmanagementsettings?view=graph-rest-beta&preserve-view=true)

### Reports | Microsoft 365 usage reports
Get more properties included in [detail reports for SharePoint site usage](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-beta&preserve-view=true): anonymousLinkCount, companyLinkCount, externalSharing, geolocation, secureLinkForGuestCount, secureLinkForMemberCount, siteSensitivityLabelId, and unmanagedDevicePolicy.

### Tasks and plans
- Define up to 25 categories in a [plan details](/graph/api/resources/plannerplandetails?view=graph-rest-beta&preserve-view=true) object for a plan. For each category, specify a descriptive label and associate tasks in a plan with one or more of these categories. 
- Use a [roster](/graph/api/resources/plannerRoster?view=graph-rest-beta&preserve-view=true) to represent a collection of users collaborating on a [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true). Use the **rosterPlans** relationship to get the rosters of which the user is a [member](/graph/api/resources/plannerrostermember?view=graph-rest-beta&preserve-view=true). 
- For plans that are surfaced in experiences outside of Planner, such as Microsoft Teams, specify in the [plan context details](/graph/api/resources/plannerplancontextdetails?view=graph-rest-beta&preserve-view=true) how to display the link to the [plan context](/graph/api/resources/plannerPlanContext?view=graph-rest-beta&preserve-view=true). 

### Use SDKs
Try the preview release of the [Microsoft Graph Java SDK v3](https://github.com/microsoftgraph/msgraph-sdk-java/blob/dev/docs/upgrade-to-v3.md)! For more information, see the related [blog post](https://developer.microsoft.com/graph/blogs/announcing-the-public-preview-of-microsoft-graph-java-sdk-v3/).

## January 2021: New in preview only

### Cloud communications
- Organize a live event as an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) - see an [example](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true#example-3-create-a-live-event-with-a-user-token). 
- Get the content stream of an [attendee report](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-4-retrieve-the-attendee-report-of-a-live-event), [recording](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-5-retrieve-the-recording-of-a-live-event), or alternative recording of the live event.
- Get the [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true) status of a user who is [out-of-office](/graph/api/resources/outofofficesettings?view=graph-rest-beta&preserve-view=true), and any message set for that status.

### Devices and apps | Cloud PC
- [Update an Active Directory domain password](/graph/api/cloudpconpremisesconnection-updateaddomainpassword?view=graph-rest-beta&preserve-view=true) for a successful [on-premises network connection](/graph/api/resources/cloudPcOnPremisesConnection?view=graph-rest-beta&preserve-view=true).
- [Running health checks on an on-premises network connection](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) can now expose 5 additional error types in the [on-premises connection health check](/graph/api/resources/cloudpconpremisesconnectionhealthcheck?view=graph-rest-beta&preserve-view=true) resource. For more information on the error types, see the [changelog](https://developer.microsoft.com/graph/changelog) for January 2021.

### Devices and apps | Cloud printing
- [Subscribe to change notifications of cloud printing](universal-print-webhook-notifications.md) - when a print job is started, and when the print job is ready to be downloaded by a printer.
- Get a fuller range of [possible values](/graph/api/resources/printerstatus?view=graph-rest-beta&preserve-view=true#printerprocessingstatedetail-values) for the status of a [printer](/graph/api/resources/printer?view=graph-rest-beta&preserve-view=true).
- Use delegated permissions in apps on behalf of the signed-in user:
  - `PrinterShare.ReadBasic.All` to read basic information about printer shares, excluding access control information.
  - `PrintConnector.Read.All` to read print connectors.
  - `PrintConnector.ReadWrite.All` to read or write print connectors.
  - `PrintJob.Create` to create print jobs and upload content to print jobs.
  - `PrintSettings.Read.All` to read tenant-wide print settings.
  - `PrintSettings.ReadWrite.All` to read or write tenant-wide print settings.
  - `Reports.Read.All` to read print usage summary per specified user or per printer.

### Education
Use class-level [assignment settings](/graph/api/resources/educationAssignmentSettings?view=graph-rest-beta&preserve-view=true) to enable or disable animation to celebrate turning in an assignment.

### Groups
Get the processing status of a rule-based dynamic group by using the **membershipRuleProcessingStatus** property. This is useful when an attribute of a user changes, the user's membership in a rule-based [Microsoft 365 group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) is re-evaluated based on the group membership rules set for the organization. 

### Identity and access | Directory management
Get the [usage right](/graph/api/resources/UsageRight?view=graph-rest-beta&preserve-view=true) that a user or device has over third-party software built on Power Apps or, usage right of a device over a subscription. Usage right includes identifiers for the corresponding service or product, and the current state of the usage right such as active, inactive, in warning, or suspended.

### Identity and access | Identity and sign-in
- Apps can use application permissions to let administrators manage [authentication methods](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta&preserve-view=true) for users.
- Support [Microsoft Authenticator](/graph/api/resources/microsoftauthenticatorauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method of a user to sign in or perform multi-factor authentication to Azure AD.
- Use [Microsoft Authenticator policy](/graph/api/resources/microsoftauthenticatorauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) to define configuration settings and users or groups that are enabled to use Microsoft Authenticator as an authentication method. Use Microsoft Authenticator policy in place of [Microsoft Authenticator passwordless phone sign-in policy](/graph/api/resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) which is deprecated. 
- Support [Windows Hello for Business](/graph/api/resources/windowshelloforbusinessauthenticationmethod?view=graph-rest-beta&preserve-view=true) as an authentication method of a user to sign in on Windows devices without using a password.

### Reports | Identity and access reports
- [Get a report of the number of users who are registered, or who are capable of various registration features](/graph/api/authenticationmethodsroot-usersregisteredbyfeature?view=graph-rest-beta&preserve-view=true), including multi-factor authentication, self-service password reset, or passwordless authentication.
- [Get a report of the number of users registered for each authentication method](/graph/api/authenticationmethodsroot-usersregisteredbymethod?view=graph-rest-beta&preserve-view=true), including password, Windows Hello for Business, or passwordless phone sign-in.

## December 2020: New and generally available

### Calendar
- Meeting organizers can use the **hideAttendees** property of an [event](/graph/api/resources/event) to control whether attendees can see one another in the meeting **Tracking** list.
- GA of the **isDraft** property and [cancel](/graph/api/event-cancel) method that are available to organizers, and the [forward](/graph/api/event-forward) method available to organizers and attendees to better manage [event](/graph/api/resources/event) resources in a calendar.
- GA of the **hexColor** and **isDefault** properties of a [calendar](/graph/api/resources/calendar) to better manage calandars.

### Cloud communications
GA of the [presence](/graph/api/resources/presence) resource, allowing getting presence information of one or more users, such as their availability and user activity.

### Identity and access | Identity and sign-in
Try a new [tutorial](tutorial-riskdetection-api.md) to learn how to use the [identity protection API](/graph/api/resources/identityprotectionroot) to identify risk and configure a workflow to confirm compromise or enable remediation.

### Teamwork
- GA of the [API to manage the installation of a Teams app](/graph/api/resources/teamsappinstallation), including getting installed apps, or adding, removing, or upgrading of the app in a team or in the personal scope of a user.
- [Get a chat between a user and a Teams app](/graph/api/userscopeteamsappinstallation-get-chat).

### Use the Toolkit
GA of Microsoft Graph Toolkit 2.0 - this release includes a new [component for Microsoft Graph To-Do tasks](./toolkit/components/todo.md), distinct from the[Planner tasks component](./toolkit/components/tasks.md), and an enhanced [person card component](./toolkit/components/person-card.md). See the [related blog post](https://developer.microsoft.com/graph/blogs/announcing-the-general-availability-of-microsoft-graph-toolkit-2-0/) for more information.


## December 2020: New in preview only

### Compliance | eDiscovery
Continuing to fulfill the pipeline of [Microsoft 365 compliance APIs](/graph/api/resources/ediscovery-ediscoveryapioverview) are the [custodian](/graph/api/resources/ediscovery-custodian) resource and its related operations and methods to [release](/graph/api/ediscovery-custodian-release) or [activate](/graph/api/ediscovery-custodian-activate) a custodian. Use the **custodian** resource to access the custodian's data ([userSource](/graph/api/resources/ediscovery-usersource)) in an Exchange Online mailbox and OneDrive for Business, SharePoint sites ([siteSource](/graph/api/resources/ediscovery-sitesource)), and Microsoft 365 groups ([unifiedGroupSource](/graph/api/resources/ediscovery-unifiedgroupsource)).

### Devices and apps | Cloud PC
Identify the failure status of a cloud-managed virtual desktop collectively as `failed`, in the **status** property of the [cloudPC](/graph/api/resources/cloudpc?view=graph-rest-beta&preserve-view=true) resource.

### Devices and apps | Cloud printing
- [Update](/graph/api/printjob-update) the [configuration](/graph/api/resources/printjobconfiguration?view=graph-rest-beta&preserve-view=true) of a [print job](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true).
- For details on the renaming of a few properties and retyping of relationships, see the December 2020 section of the [API changelog](https://developer.microsoft.com/graph/changelog/) for details.

### Education
- If students are added after publishing the assignment, teachers can control the assignment behavior by using the **addedStudentAction** property of the [educationAssignment](/graph/api/resources/educationAssignment?view=graph-rest-beta&preserve-view=true) resource.
- Teachers can post assignment publish notification through the **notificationChannelUrl** property of the **educationAssignment** resource.

### Identity and access
Get or set the version and creation metadata for an Azure AD [terms of use](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true) [agreement](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true), [agreement file](/graph/api/resources/agreementfile?view=graph-rest-beta&preserve-view=true), and [agreementfilelocalization](/graph/api/resources/agreementfilelocalization?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
As part of Azure Active Directory [entitlement management](/graph/api/resources/entitlementmanagement-overview?view=graph-rest-beta&preserve-view=true), when users wishing to access groups, applications, or SharePoint Online sites request an assignment to an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true), they can now respond to [questions](/graph/api/resources/accesspackagequestion?view=graph-rest-beta&preserve-view=true) represented in [localized content](/graph/api/resources/accesspackagelocalizedcontent?view=graph-rest-beta&preserve-view=true) in the [access package assignment request](/graph/api/resources/accesspackageassignmentrequest?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Administrators can associate user flows with apps that are shared with external users and enable [self-service sign-up](/azure/active-directory/external-identities/self-service-sign-up-overview) on those apps. They can customize a self-service sign-up user flow and create a personalized sign-up experience. Specifically, they create a [listener for a sign-up-start event to invoke a custom user flow](/graph/api/resources/invokeuserflowlistener?view=graph-rest-beta&preserve-view=true). Once an application is associated with the user flow, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.
- In an [Azure Active Directory user flow](/graph/api/resources/b2xidentityuserflow?view=graph-rest-beta&preserve-view=true) or [Azure Active Directory B2C tenant user flow](/graph/api/resources/b2cidentityuserflow?view=graph-rest-beta&preserve-view=true), you can manage language defaults and [customize the language and strings displayed to users in the user flow](/graph/api/resources/userflowlanguageconfiguration?view=graph-rest-beta&preserve-view=true).
- Use an [API connector](/graph/api/resources/identityapiconnector?view=graph-rest-beta&preserve-view=true) in user flows for Azure AD self-service sign-up and Azure AD B2C sign-up, to call an API at a specific step to affect the execution of the user flow.
- Define an [email OTP authentication methods policy](/graph/api/resources/emailauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) for a tenant.

### Teamwork
- For a [member](/graph/api/resources/conversationmember?view=graph-rest-beta&preserve-view=true) resource in a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), or a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) context, you can now:
  - Differentiate a member who is an [Azure AD user](/graph/api/resources/aaduserconversationmember?view=graph-rest-beta&preserve-view=true), noting the user ID, email address, and Azure AD tenant ID. 
  - [Add multiple users as members of a team](/graph/api/conversationmembers-add?view=graph-rest-beta&preserve-view=true).
- For a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true) resource:
  - [Get all the messages in chats that the specified user has participated in](/graph/api/chats-getallmessages?view=graph-rest-beta&preserve-view=true), including one-on-one chats, group chats, and meeting chats.
  - Use the full range of functionality to list, get, add, remove, and update an [app](/graph/api/resources/teamsappinstallation?view=graph-rest-beta&preserve-view=true) or a [tab](/graph/api/resources/teamstab?view=graph-rest-beta&preserve-view=true) in a chat.
  - Use the **chatType** property to distinguish a one-on-one chat from a group chat or from a chat associated with an online meeting.
  - [Create](/graph/api/chat-post?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/chat-patch?view=graph-rest-beta&preserve-view=true) a chat.
  - For a member in a chat context, use the **visibleHistoryStartDateTime** property to set or get a timestamp that represents how far back a conversation's history is shared with that member.
  - [Create](/graph/api/chat-post-members?view=graph-rest-beta&preserve-view=true) to or [delete](/graph/api/chat-delete-members?view=graph-rest-beta&preserve-view=true) a member from a specified chat. 
- For a [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) resource:
  - [Get all the messages across all the channels in a team](/graph/api/channel-getallmessages).
  - Team owners can turn on [moderation for a channel](/graph/api/resources/channelmoderationsettings?view=graph-rest-beta&preserve-view=true) to control who can start new posts or reply to posts in that channel, using the **moderationSettings** property of the channel.
- As part of a [Teams app definition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta&preserve-view=true), use the **bot** relationship to connect to a [teamwork bot](/graph/api/resources/teamworkbot?view=graph-rest-beta&preserve-view=true).

### To-do tasks
Subscribe to [change notifications](webhooks.md) of a [To Do task](/graph/api/resources/todoTask?view=graph-rest-beta&preserve-view=true).


## November 2020: New and generally available

### Cloud communications
- GA of the **role** property of the [meetingParticipantInfo](/graph/api/resources/meetingParticipantInfo) type, that distinguishes the role of a participant in an [online meeting](/graph/api/resources/onlinemeeting) as an attendee or presenter.
- GA of the **lobbyBypassSettings** property and its [values](/graph/api/resources/lobbybypasssettings#lobbybypassscope-values) to admit users to an online meeting.
- GA of the **isEntryExitAnnounced** property to customize settings for announcing callers joining or leaving an online meeting.
- GA of the **allowedPresenters** property to allow specific presenters in the meeting.

### Search
- GA of the Microsoft Search [query API](/graph/api/resources/search-api-overview), supporting scoped searching of the following types of data:
  - [Outlook messages](./search-concept-messages.md)
  - [Outlook calendar events](./search-concept-events.md)
  - [OneDrive and SharePoint resources](./search-concept-files.md).

### Teamwork

- GA of resource-specific consent (RSC) permissions. RSC permissions allow team owners to grant granular consent to a production app to access and/or modify specific data of a team, for example, reading the team's settings, or modifying channel names, descriptions, and other settings.
- GA of APIs that apply to a [channel](/graph/api/resources/channel) or messages within a channel. The APIs include:
  - [Create](/graph/api/conversationmember-add) or [delete](/graph/api/conversationmember-delete) a conversation member from a channel.
  - [Update the role of a member](/graph/api/conversationmember-update) in a channel.
  - Get a specific message or all messages in a channel.
  - Get a specific reply or all replies in a channel.
  - [Track new or updated messages in a channel](/graph/api/chatmessage-delta).


## November 2020: New in preview only

### Devices and apps | Cloud PC
Debut of the [cloud PC API](/graph/api/resources/virtualendpoint?view=graph-rest-beta&preserve-view=true) that lets organizations provision and manage virtual desktops for employees. Use it in conjunction with the Intune API to manage physical and virtual endpoints.

### Devices and apps | Cloud printing
[Subscribe to change notifications](webhooks.md) on a [print task definition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta&preserve-view=true).

### Devices and apps | Corporate management
Intune [November](changelog.md#november-2020) updates for the beta version.

### Identity and access
- Specify URLs for sending sign-in user tokens, and URIs for authorization codes and access tokens, in the **spa** property of [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true).
- Customize the look and feel of Azure Active Directory sign-in screens through the [organization branding properties](/graph/api/resources/organizationalbrandingproperties?view=graph-rest-beta&preserve-view=true). Organizations can customize based on locale for specific users.

### Identity and access | Governance
Debut of [access review API for group membership](/graph/api/resources/accessreviewsv2-overview?view=graph-rest-beta&preserve-view=true) to review user access regularly, make sure only the right people have continued access, and efficiently manage group memberships.

### Search
You can aggregate numeric or string type search results that are imported by [Microsoft Graph connectors](/microsoftsearch/connectors-overview) and that are set to be refinable in the [schema](/graph/api/resources/schema?view=graph-rest-beta&preserve-view=true). See more information about [refining search results using aggregations](search-concept-aggregation.md).

## October 2020: New and generally available

### Application
- Allow [email as an alternate login ID to Azure AD](/azure/active-directory/authentication/howto-authentication-use-email-signin), using a [Home Realm Discovery](/azure/active-directory/manage-apps/configure-authentication-for-federated-users-portal#home-realm-discovery) policy. A Home Realm Discovery policy determines after a user provides a sign-in ID, whether to prompt the user to authenticate. In this case, setting the **AlternateIdLogin** property of a [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy) resource can enable a user to sign in with an email address.
- Get the verified publisher information for an [application](/graph/api/resources/application) or [servicePrincipal](/graph/api/resources/serviceprincipal), and [set](/graph/api/application-setverifiedpublisher) or [remove](/graph/api/application-unsetverifiedpublisher) verified publisher information for an **application**.

### Change notifications
Production apps can now subscribe to lifecycle notifications of Outlook [message](/graph/api/resources/message), [event](/graph/api/resources/event), and [contact](/graph/api/resources/contact), and Teams [chatMessage](/graph/api/resources/chatmessage), in order to [reduce missing subscriptions and change notifications](webhooks-lifecycle.md).

### Identity and access
- GA of advanced OData system query options (`$count`, `$search`, and `$filter`) on directory objects.
- Check out examples that show OData cast on directory objects.
- See the Identity and access section of the [October](changelog.md#october-2020) updates in the changelog for the lists of enhanced APIs.

### Teamwork
- GA of the full set of CRUD operations for [conversationMember](/graph/api/resources/conversationmember) and [aadUserConversationMember](/graph/api/resources/aaduserconversationmember). These resources represent a member in a chat or channel conversation, who may or may not be a user in Azure AD.
- GA of lifecycle notifications for Teams [chatMessage](/graph/api/resources/chatmessage) resources, to [reduce missing subscriptions and change notifications](webhooks-lifecycle.md).

### To-do tasks
GA of the [Microsoft To Do API](/graph/api/resources/todo-overview?view=graph-rest-1.0&preserve-view=true) - use the to-do API in a production app to create and manage tasks that are part of a user's workflow, such as creating a task off an email.  

### Users
Get new properties applicable to a [user](/graph/api/resources/user) who is corporate employee: hire date, organizational association such as division and cost center, and employee type such as consultant, contractor, or vendor. These properties require specifying the `$select` OData query parameter in the GET operation.

## October 2020: New in preview only

### Cloud communications | Online meeting
- Distinguish the role of a participant in an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) as an attendee or presenter, by using the **role** property of the [meetingParticipantInfo](/graph/api/resources/meetingParticipantInfo?view=graph-rest-beta&preserve-view=true) type.
- Get an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) by [filtering on the joinWebUrl property of the meeting](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true#example-3-retrieve-an-online-meeting-by-joinweburl).

### Devices and apps | Cloud printing

- Deprecate the **uploadData** action in favor of [creating an upload session](/graph/api/printdocument-createuploadsession?view=graph-rest-beta&preserve-view=true) to [upload a document](upload-data-to-upload-session.md) to a printer or printer share.
- Deprecate the **configuration** property on [printDocument](/graph/api/resources/printdocument?view=graph-rest-beta&preserve-view=true) in favor of a similar **configuration** property on [printJob](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true).
- Get the source or destination job URL for a **printJob** that is being redirected, by using the **redirectedFrom** or **redirectedTo** property.
- Get the current status of a **printJob** by using the **state** property and new **details** property.
- Get the collection of printer shares associated with a [printer](/graph/api/resources/printer?view=graph-rest-beta&preserve-view=true) by using the **shares** relationship. 
- Deprecate the **processingStateReasons** property of **printer** in favor of the **status** property. The **status** property is of the type [printer status](/graph/api/resources/printerstatus?view=graph-rest-beta&preserve-view=true) and exposes a **details** property. Use the **details** property to identify the reason for a printer to be in the current state.
- Deprecate the **feedDirections** property on [printerCapabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta&preserve-view=true) in favor of the **feedOrientations** property, to get feed orientations supported by a printer.
- See the cloud printing section of the [October](changelog.md#october-2020) updates in the changelog for a few renaming of API and properties, and a few other deprecations.

### Devices and apps | Corporate management
Intune [October](changelog.md#october-2020) updates for the beta version.

### Files
[Revoke](/graph/api/permission-revokegrants?view=graph-rest-beta&preserve-view=true) access to a [listItem](/graph/api/resources/listitem?view=graph-rest-beta&preserve-view=true) or [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) granted via a sharing link.

### Identity and access | Identity and sign-in
- Manage [authentication method policies](/graph/api/resources/authenticationmethodspolicies-overview?view=graph-rest-beta&preserve-view=true) to identify users who can use specific multi-factor authentication methods to sign into Azure Active Directory. Configure policies to define the following:
  - The types of FIDO2 security keys that can be used in the Azure AD tenant.
  - The users or groups of users who are allowed to use FIDO2 Security Keys or Passwordless Phone Sign-in to sign in to Azure AD.
- Configure an [email authentication method](/graph/api/resources/emailauthenticationmethod?view=graph-rest-beta&preserve-view=true) for users to self-serve password resets.
- Use [Azure AD B2C](/azure/active-directory-b2c/overview) and [choose a mechanism to configure and let end users authenticate via local accounts](/graph/api/resources/b2cauthenticationmethodspolicy?view=graph-rest-beta&preserve-view=true).
- Use `Policy.ReadWrite.AuthenticationMethod` to read or write an organization's authentication method policies, as a delegated permission on behalf of a signed-in user, or as an application permission without a signed-in user present.
- Specify in an [authorization policy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) if and who can invite external users to an organization.

### People and workplace intelligence | Insights 
Administrators can see [examples of using PowerShell cmdlets](insights-customize-item-insights-privacy.md#configure-item-insights-settings-via-powershell) to customize item insight settings for an organization.

### Teamwork
- Use the instance attribute **channelCreationMode** to indicate that a [channel](/graph/api/resources/channel?preserve-view=true&view=graph-rest-beta#instance-attributes) is being created to serve migration of data. Use the [completeMigration](/graph/api/channel-completemigration?view=graph-rest-beta&preserve-view=true) to indicate migration is over, such that members can post and read messages.
- Use the instance attribute **teamCreationMode** to indicate that a [team](/graph/api/resources/team?preserve-view=true&view=graph-rest-beta#instance-attributes) is being created to serve migration. Use the [completeMigration](/graph/api/team-completemigration?view=graph-rest-beta&preserve-view=true) to indicate migration is over, such that member operations can happen, and members can post messages.

## September 2020: New and generally available

### Calendar
GA of the **transactionId** property of the [event](/graph/api/resources/event) resource, which is optionally set by a client app to avoid redundant POST operations in case of client retries to create the same event. This is useful when low network connectivity causes the client to time out before receiving a response from the server for the client's prior create-event request.

### Cloud communications
[Delete a participant](/graph/api/participant-delete) from a [call](/graph/api/resources/call). You can use this operation even in situations where it's necessary to delete a participant from an active call.

### Devices and apps | Corporate management
Intune [September](changelog.md#september-2020) updates for the v1.0 version.

### Identity and access | Directory management
GA of the [administrative units API](/graph/api/resources/administrativeunit) that allow organizations to subdivide their Azure Active Directory, manage and delegate administrative duties to these subdivisions. These subdivisions can represent regions, departments, cost centers, and so on.

### Reports
[Get a report that includes the count of unique users](/graph/api/reportroot-getemailappusageversionsusercounts) for Outlook 2019 and for Outlook on Microsoft 365.

### Teamwork
- Get the **lastEditedDateTime** property to find out when a sender last edits a [chat message](/graph/api/resources/chatmessage).
- Get the **lastModifiedDateTime** property to find out when a sender creates a chat message or when anyone modifies it in other ways, including adding or removing a reaction. 
- [Get notifications on changes](webhooks.md) in [chat messages](/graph/api/resources/chatmessage).
- [Update](/graph/api/chatmessage-update?view=graph-rest-beta&preserve-view=true) the **policyViolation** property of a [chatMessage](/graph/api/resources/chatmessage) within a [channel](/graph/api/resources/channel) or [chat](/graph/api/resources/chat), enabling data loss prevention (DLP) apps to monitor [chat message policy violation](/graph/api/resources/chatmessagepolicyviolation) to prevent messages from containing data that users are not supposed to send.

### Use the SDKs
GA of the [Microsoft Graph PowerShell SDK](https://github.com/microsoftgraph/msgraph-sdk-powershell) which enables access to the entire surface of Microsoft Graph in a straightforward and consistent way.

### Use the Toolkit
Try the new step-by-step getting-started tutorials for Microsoft Graph Toolkit and experience the convenience the toolkit brings:
- [Build a web application in JavaScript](./toolkit/get-started/build-a-web-app.md)
- [Build a SharePoint web part](./toolkit/get-started/build-a-sharepoint-web-part.md)
- [Build a Microsoft Teams tab](./toolkit/get-started/build-a-microsoft-teams-tab.md)
- [Use the toolkit with React](./toolkit/get-started/use-toolkit-with-react.md)
- [Use the toolkit with Angular](./toolkit/get-started/use-toolkit-with-angular.md)

### Users
Aside from getting the SMTP address of a [user](/graph/api/resources/user) through the **mail** property, you can now set that property and update the user's email address. 

## September 2020: New in preview only

### Application
Create, list, or delete [classifications of delegated permissions](/graph/api/resources/delegatedpermissionclassification?view=graph-rest-beta&preserve-view=true) that a [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) exposes. Use delegated permission classifications in combination with [user consent settings](/azure/active-directory/manage-apps/configure-user-consent) to set limits on when end-users are allowed to grant consent to apps.

### Cloud communications
- Deprecation of the **autoAdmittedUsers** property of [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true). Instead, use the new **lobbyBypassSettings** property and its [values](/graph/api/resources/lobbybypasssettings?view=graph-rest-beta&preserve-view=true#lobbybypassscope-values).
- Use additional settings about announcing callers joining or leaving an online meeting (**isEntryExitAnnounced** property), and allowing specific presenters in the meeting (**allowedPresenters** property).

### Devices and apps | Cloud printing
- [Get the documents for each of the print jobs associated with a printer](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true), by applying an `$expand` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true#optional-query-parameters). 
- Filter print jobs by the user who created them, by applying a `$filter` [OData system query option](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true#optional-query-parameters).

### Devices and apps | Corporate management
Intune [September](changelog.md#september-2020) updates for the beta version.

### Identity and access | Directory management
- [Get a BitLocker recovery key](/graph/api/bitlockerrecoverykey-get?view=graph-rest-beta&preserve-view=true) on behalf of the signed-in user who's the device owner or in an appropriate role. Getting a recovery key generates an [audit log](/azure/active-directory/reports-monitoring/concept-audit-logs), in parity with the end user experience.
- Get the total and used amount of the [directory quota](/graph/api/resources/directorysizequota?view=graph-rest-beta&preserve-view=true) of an [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true), through the **directorySizeQuota** property.

### Identity and access | Governance
Be able to include a [schedule](/graph/api/resources/requestschedule?view=graph-rest-beta&preserve-view=true) when requesting or removing an [assignment of a user to an access package](/graph/api/resources/accesspackageassignment?view=graph-rest-beta&preserve-view=true), that specifies access to groups, applications, or SharePoint sites.

### Identity and access | Identity and sign-in
Organizations can [get](/graph/api/continuousaccessevaluationpolicy-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/continuousaccessevaluationpolicy-update?view=graph-rest-beta&preserve-view=true) a [continuous access evaluation policy](/graph/api/resources/continuousAccessEvaluationPolicy?view=graph-rest-beta&preserve-view=true) to manage authentication sessions in real time.

### Search

- Use additional capabilities in the [Microsoft Search API](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true) for OneDrive, SharePoint, Microsoft Graph connectors: 

  - Get [additional types](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#scope-search-based-on-entity-types) of content from OneDrive and SharePoint: **drive**, **list**, **listItem**, and **site**. 
  - Scope properties in search results to [selected properties](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#get-selected-properties). 
  - Get custom properties on [listItem](/graph/api/resources/listitem?view=graph-rest-beta&preserve-view=true) resources.
  - [Sort](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#sort-search-results) search results for OneDrive and SharePoint on any sortable property.
  - [Refine results using aggregations](/graph/api/resources/search-api-overview?view=graph-rest-beta&preserve-view=true#refine-results-using-aggregations) for OneDrive and SharePoint.
- Query external data ingested by Microsoft Graph connectors across [more than one connection](./search-concept-custom-types.md).
- Take advantage of enhanced content for Microsoft Graph connectors to learn about:
  - [Managing connections](connecting-external-content-manage-connections.md)
  - [Managing schema](connecting-external-content-manage-schema.md)
  - [Managing items](connecting-external-content-manage-items.md)
- Track the state of a Microsoft Graph [connection](/graph/api/resources/externalconnection?view=graph-rest-beta&preserve-view=true).
- Define an [external group](/graph/api/resources/externalgroup?view=graph-rest-beta&preserve-view=true) to set permissions on [external item](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true) objects added to a Microsoft Graph [connection](/graph/api/resources/externalconnection?view=graph-rest-beta&preserve-view=true). External groups can represent non-Azure Active Directory groups or group-like constructs, such as business units, that determine permissions over the content in the external data source.

### Teamwork
- Get the date/time at which a Teams [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) or [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) is created.


## August 2020: New and generally available

### Change notifications
[Track changes](delta-query-overview.md) of supported resources in the Microsoft Graph for US Government national cloud.

### Cloud communications
- [Cancel](/graph/api/call-cancelmediaprocessing) any Interactive Voice Response (IVR) actions that are in process or in queue, that are either [playing an audio prompt](/graph/api/call-playprompt) or [recording a response](/graph/api/call-record).
- Get [call transcription information](/graph/api/resources/calltranscriptioninfo) through the **transcription** property.

### Teamwork
- Use an alternative way to [create a team](/graph/api/team-post) directly without first creating a group.
- Use the **members** navigation property to add members to a team with increased reliability and lower latency.
- Get the publishing status of a Microsoft Teams [app](/graph/api/resources/teamsapp) through the **publishingState** property of the [app definition](/graph/api/resources/teamsappdefinition). The possible status values are `submitted`, `published`, and `rejected`. See an [example](/graph/api/appcatalogs-list-teamsapps#example-4-list-applications-with-a-given-id-and-return-the-submission-review-state).
- Use the `AppCatalog.Submit` delegated permission to allow a user to [submit an app](/graph/api/teamsapp-publish) and request administrator review. Use the same permission for a user to [cancel](/graph/api/teamsapp-delete) an app submitted in the past that has not been published. 


## August 2020: New in preview only

### Applications
Support password-based single-sign-on in [service principal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true) application resources and specify such [settings](/graph/api/resources/passwordsinglesignonsettings?view=graph-rest-beta&preserve-view=true) in the **passwordSingleSignOnSettings** property. For information about password-based single sign-on in Azure AD, see [configure password-based single-sign-on](/azure/active-directory/manage-apps/configure-password-single-sign-on-non-gallery-applications).

### Calendar
Enhance programmatic support for scenarios involving a recurring [event](/graph/api/resources/event?view=graph-rest-beta&preserve-view=true):
- Reliably identify any occurrence in a recurring series, including a modified or cancelled occurrence, by using the **occurrenceId** property.
- Get any exceptions in a recurring series by using the **exceptionOccurrences** property.
- Get any cancellations in a series using the **cancelledOccurrences** property.

### Change notifications
- Use the **includeResourceData** property of a [subscription](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true), to [set up change notifications that include resource data](webhooks-with-resource-data.md). Do not use the **includeProperties** property.
- Get [change notifications delivered via Event Hub](change-notifications-delivery.md).

### Devices and apps | Cloud printing
- Grant all users and groups access to a [printer share](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true) by using the **allowAllUser** property.
- Use new delegated and application permissions to access or manage a [print document](/graph/api/resources/printDocument?view=graph-rest-beta&preserve-view=true), [print job](/graph/api/resources/printjob?view=graph-rest-beta&preserve-view=true), [printer](/graph/api/resources/printer?view=graph-rest-beta&preserve-view=true), [printer share](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true), or [print task definition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta&preserve-view=true). For details, see cloud printing [August](changelog.md#august-2020) updates.

### Devices and apps | Corporate management
Intune [August](changelog.md#august-2020) updates in beta.

### Identity and access | Governance
- Customize a [terms of use agreement](/graph/api/resources/agreement?view=graph-rest-beta&preserve-view=true) to support an agreement expiration date and cadence, require the user to accept the agreement per device, or to re-accept the agreement on a set frequency. 
- Use the **file** property to navigate to a [custom agreement](/graph/api/resources/agreementfile?view=graph-rest-beta&preserve-view=true) for terms of use. Do not use the **files** property.
- Add, remove, and list internal or external sponsors who can approve requests from a [connected organization](/graph/api/resources/connectedorganization?view=graph-rest-beta&preserve-view=true) to access a group, application, or SharePoint Online site. See [entitlement management](/graph/api/resources/entitlementmanagement-overview?view=graph-rest-beta&preserve-view=true) for more information.

### Identity and access | Identity and sign-in
- Enable further customizing an [authorization policy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) for a tenant, such as allowing the [default user role](/graph/api/resources/defaultuserrolepermissions?view=graph-rest-beta&preserve-view=true) to create applications or security groups or to read other users, allowing users to sign up for email-based subscriptions or to join the tenant by email validation, or letting users self-serve password resets.
- Manage predefined, configurable policies as user flows within an Azure Active Directory B2C tenant. See more information about [B2C user flows](/azure/active-directory-b2c/user-flow-overview).
- Enable self-service sign-up experience as B2X user flows in an Azure Active Directory tenant,see more information about [self-service sign-up](/azure/active-directory/external-identities/self-service-sign-up-overview).

### People and workplace intelligence | Profile
Add and manage the following additional properties in a user's [profile](/graph/api/resources/profile?view=graph-rest-beta&preserve-view=true), and that can be surfaced in shared, people experiences across Microsoft 365 and third-party apps:
- [addresses](/graph/api/resources/itemAddress?view=graph-rest-beta&preserve-view=true)
- [anniversaries](/graph/api/resources/personAnniversary?view=graph-rest-beta&preserve-view=true)
- [awards](/graph/api/resources/personAward?view=graph-rest-beta&preserve-view=true)
- [certifications](/graph/api/resources/personCertification?view=graph-rest-beta&preserve-view=true)
- [notes](/graph/api/resources/personAnnotation?view=graph-rest-beta&preserve-view=true)
- [patents](/graph/api/resources/itemPatent?view=graph-rest-beta&preserve-view=true)
- [publications](/graph/api/resources/itemPublication?view=graph-rest-beta&preserve-view=true)


### Reports | Microsoft 365 usage reports
Get [reports on Microsoft 365 apps usage](/graph/api/resources/microsoft-365-apps-usage-report?view=graph-rest-beta&preserve-view=true), specifically on user detail, user counts, and platform user counts.

### Teamwork
Get [content hosted in a chat message](/graph/api/resources/chatMessageHostedContent?view=graph-rest-beta&preserve-view=true), such as images or code snippets. See an [example](/graph/api/chatmessagehostedcontent-get?view=graph-rest-beta&preserve-view=true#example-2-get-hosted-content-bytes-for-an-image) to get the content bytes of an image.

### To-do tasks
- Debut of a new set of API for [Microsoft To Do](todo-concept-overview.md), allowing app users to organize and track personal tasks across Microsoft 365 client apps. See [Use the Microsoft To Do API](/graph/api/resources/todo-overview?view=graph-rest-beta&preserve-view=true) for more information.
- Deprecation of the [Outlook tasks API](/graph/api/resources/outlooktask?view=graph-rest-beta&preserve-view=true).


## July 2020: New and generally available

### Calendar
GA of the feature that allows organizers to allow alternate meeting time proposals, and invitees to [propose new times for a meeting](outlook-calendar-meeting-proposals.md) when they [tentatively accept](/graph/api/event-tentativelyaccept?view=graph-rest-1.0&preserve-view=true&preserve-view=true) or [decline](/graph/api/event-decline?view=graph-rest-1.0&preserve-view=true&preserve-view=true) an event.

### Change notifications
Removed the erroneously introduced **sequenceNumber** property from the [changeNotification](/graph/api/resources/changenotification) resource.

### Groups
GA of the following properties for the [group](/graph/api/resources/group) entity: **assignedLabels**, **expirationDateTime**, **membershipRule**, **membershipRuleProcessingState**, **preferredLanguage**, and **theme**.

### Identity and access
- Remove a user as a registered owner or user of a [device](/graph/api/resources/device).
- Track changes to newly created, updated, or deleted local representation of applications (represented by [servicePrincipals](/graph/api/resources/serviceprincipal) resources) and delegated permissions grants (represented by [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant) resources) without performing a full read of the entire resource collection.
- GA of the [policy to enforce security defaults](/graph/api/resources/identitysecuritydefaultsenforcementpolicy) that protect organizations against common attacks.

### Identity and access | Identity and sign-in
- GA of [conditional access policies](/graph/api/resources/conditionalAccessPolicy) that are custom rules that define an access scenario.
- GA of [named locations](/graph/api/resources/namedLocation) representing custom rules that define network locations used in a conditional access policy.

### Schema extensions
The [schema extensions](/graph/api/resources/schemaextension) feature is now generally available in [Microsoft Cloud for US Government](./deployments.md).

### Teamwork
Use the delegated permissions of `TeamsAppInstallation.ReadForTeam` or `TeamsAppInstallation.ReadWriteForTeam`, or application permissions of `TeamsAppInstallation.ReadForTeam.All` or `TeamsAppInstallation.ReadWriteForTeam.All` to [list apps that are installed in a team](/graph/api/team-list-installedapps).

## July 2020: New in preview only

### Cloud communications
- Use the [update](/graph/api/onlinemeeting-update?view=graph-rest-beta&preserve-view=true&preserve-view=true) operation to update the **startDateTime**, **endDateTime**, **participants**, or **subject** property of an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true&preserve-view=true).
- Subscribe to notifications on changes to the availability of a user on Microsoft Teams, as represented by the [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true) resource.

### Cloud communications | Call records
- [Get](/graph/api/callrecords-callrecord-getpstncalls?view=graph-rest-beta&preserve-view=true) records of Public Switch Telephone Network (PSTN) calls.
- [Get](/graph/api/callrecords-callrecord-getdirectroutingcalls?view=graph-rest-beta&preserve-view=true) records of direct routing calls.

### Compliance | eDiscovery
Debut of [eDiscovery cases](/graph/api/resources/ediscovery-case) that can contain custodians, holds, collections, review sets, and exports that can be used as evidence in legal cases.
Apps can now [query](/graph/api/resources/ediscovery-reviewsetquery) and cull [review set data](/graph/api/resources/ediscovery-reviewset) collected for use in a litigation, investigation, or regulatory request. This debut is part of Microsoft 365 [Advanced eDiscovery](/microsoft-365/compliance/overview-ediscovery-20?view=o365-worldwide&preserve-view=true).

### Devices and apps | Cloud printing
- Use the application permission `Printer.ReadWrite.All` and [Internet Printing Protocol (IPP) encoding](https://tools.ietf.org/html/rfc8010) to [update a printer](/graph/api/printer-update?view=graph-rest-beta&preserve-view=true).
- Use one of the application permissions, `PrintJob.ReadBasic.All`, `PrintJob.Read.All`, `PrintJob.ReadWriteBasic.All`, or `PrintJob.ReadWrite.All`, to [get a print job](/graph/api/printjob-get?view=graph-rest-beta&preserve-view=true) or [list print jobs for a printer](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true).
- When [getting a print job](/graph/api/printjob-get?view=graph-rest-beta&preserve-view=true), use `$expand` to get [print tasks](/graph/api/resources/printtask?view=graph-rest-beta&preserve-view=true) that are executing or have executed against the job. Print tasks, [task definitions](/graph/api/resources/printtaskdefinition?view=graph-rest-beta&preserve-view=true), and [task triggers](/graph/api/resources/printtasktrigger?view=graph-rest-beta&preserve-view=true) are used in [pull printing](universal-print-concept-overview.md#enable-pull-printing).
- [Redirect a print job](/graph/api/printjob-redirect?view=graph-rest-beta&preserve-view=true) to a different printer, as part of pull printing.

### Devices and apps | Corporate management
Intune [July](changelog.md#july-2020) updates in beta.

### Groups
Use the **isAssignableToRole** property of a Microsoft 365 [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) and set it during group creation to indicate whether the group can be assigned to an Azure AD role. This [helps manage role assignments in Azure AD](/azure/active-directory/users-groups-roles/roles-groups-concept), such that instead of assigning individual users an Azure AD role, a privileged role admin or global admin can create a Microsoft 365 group and assign the group that role, so that when users join the _group_, they are assigned the intended role indirectly.

### Identity and access
- [Acquire an access token](/graph/api/synchronization-synchronization-acquireAccessToken?view=graph-rest-beta&preserve-view=true) to authorize the Azure AD provisioning service to provision users into an application.
- [Get](/graph/api/entitlementmanagementsettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/entitlementmanagementsettings-update?view=graph-rest-beta&preserve-view=true) entitlement management settings that control access to groups, applications, and SharePoint Online sites for users internal and external to your organization. 

### Identity and access | Identity and sign-in
- Include user risk levels (`low`, `medium`, `high`, `none`) as a consideration for applying a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- [Use password change as a grant control](/graph/api/resources/conditionalaccessgrantcontrols?view=graph-rest-beta&preserve-view=true#special-considerations-when-using-passwordchange-as-a-control) in order to pass a conditional access policy.
- Use an [Open ID Connect provider](/graph/api/resources/openidconnectprovider?view=graph-rest-beta&preserve-view=true) (ODIC) as an identity provider in an Azure AD tenant and an Azure AD B2C tenant. Its **claimsMapping** property allows Azure AD to [map the claims](/graph/api/resources/claimsmapping?view=graph-rest-beta&preserve-view=true) from an OIDC provider to the claims that Azure AD recognizes and uses.

### People and workplace intelligence | Insights
Use more [granular privacy control](insights-customize-item-insights-privacy.md) over the availability and display of [item insights](/graph/api/resources/iteminsights?view=graph-rest-beta&preserve-view=true) in Microsoft 365. These insights represent the relationships between a user and documents in OneDrive for Business, calculated using advanced analytics and machine learning techniques. 

### People and workplace intelligence | Profile card customization
Administrators can [customize the properties exposed on the profile card for their organizations](add-properties-profilecard.md) by using the API for [profile card property](/graph/api/resources/profilecardproperty?view=graph-rest-beta&preserve-view=true).

### Sites and lists
Access the SharePoint [term store](/graph/api/resources/termstore-store?view=graph-rest-beta&preserve-view=true) taxonomy, the hierarchy that consists of [group](/graph/api/resources/termstore-group?view=graph-rest-beta&preserve-view=true), [set](/graph/api/resources/termstore-set?view=graph-rest-beta&preserve-view=true), and [term](/graph/api/resources/termstore-term?view=graph-rest-beta&preserve-view=true) resources, and [relation](/graph/api/resources/termstore-relation?view=graph-rest-beta&preserve-view=true) resources between terms.

### Workbooks and charts
[Get the status and any result](/graph/api/workbookoperation-get?view=graph-rest-beta&preserve-view=true) of a long running [operation](/graph/api/resources/workbookoperation?view=graph-rest-beta&preserve-view=true) in a [workbook](/graph/api/resources/workbook?view=graph-rest-beta&preserve-view=true).



## June 2020: New and generally available

### Cloud communications | Online meeting
- Use the `Accept-Language` HTTP header when [creating an online meeting](/graph/api/application-post-onlinemeetings?view=graph-rest-1.0&preserve-view=true&preserve-view=true) to provide locale-based join information.
- Use [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-1.0&preserve-view=true&preserve-view=true) to return an online meeting that has a specified **externalId** value, or create one if none already exists, to streamline embedding the resultant meeting in a third-party calendar.

### Files
- Enhanced synchronization support:
  - Use the **pendingOperations** property to identify any [operations](/graph/api/resources/pendingoperations) that might update the binary content of a [driveItem](/graph/api/resources/driveitem) file, that are pending completion.
  - [Restore](/graph/api/driveitem-restore) a **driveItem** that has been deleted and is in the recycle bin on OneDrive Personal.
- Get or set the orientation of a [photo](/graph/api/resources/photo). Setting is supported on OneDrive Personal.
- Use Secure Hash Algorithm (SHA-256) to enhance [file](/graph/api/resources/file) data security and integrity.
- Use the `deferCommit` parameter to defer final creation when [uploading typically a large file](/graph/api/driveitem-createuploadsession) to OneDrive for Business, until an app makes a request to complete the upload.
- Use the **fileSize** property to provide as part of the **item** parameter an estimate, so to do a quota check prior to [uploading a file](/graph/api/driveitem-createuploadsession) on OneDrive Personal.
- Find [storagePlanInformation](/graph/api/resources/storageplaninformation) through the **quota** property of a [drive](/graph/api/resources/drive) resource to see if there are higher storage quota plans available.

### Groups
Use application permissions `Group.Read.All` and `Group.ReadWrite.All` to get group [conversation](/graph/api/resources/conversation) and [conversation thread](/graph/api/resources/conversationthread) resources.

### Identity and access 
- GA of two sets of API for [identity protection](/graph/api/resources/identityprotectionroot): [risk detection](/graph/api/resources/riskdetection) and [risky user](/graph/api/resources/riskyuser) APIs.

### Security
- Track the following as properties of an [alert](/graph/api/resources/alert?view=graph-rest-1.0&preserve-view=true&preserve-view=true):
  - IDs of incidents related to the alert.
  - Identify a [resource](/graph/api/resources/securityResource?view=graph-rest-1.0&preserve-view=true#securityresourcetype-values) as attacked or as a related resource in the alert.
  - Specify the source and destination locations of a [network connection](/graph/api/resources/networkconnection?view=graph-rest-1.0&preserve-view=true) related to the alert.

### Sites and lists
Specify geolocation data in a [column definition](/graph/api/resources/columndefinition) for a SharePoint [list](/graph/api/resources/list) resource.

### Teamwork
- Use the delegated permission [AppCatalog.Read.All](./permissions-reference.md#appcatalog-resource-permissions) to list [apps](/graph/api/resources/teamsapp?view=graph-rest-1.0&preserve-view=true) from the Microsoft Teams app catalog.
- [Get information about the folder](/graph/api/channel-get-filesfolder) that maps to the **Files** tab of a Teams [channel](/graph/api/resources/channel).
- [Get the default channel](/graph/api/team-get-primarychannel), labelled as **General**, of a [team](/graph/api/resources/team).


## June 2020: New in preview only

### Calendar
In addition to tracking incremental changes on events in a **calendarView** (collection or events delimited by start _and_ end dates), use the [delta](/graph/api/event-delta?view=graph-rest-beta&preserve-view=true) function on events in a user mailbox, or events in a specific user calendar.

### Cloud communications | Presence
[Get the presence status](/graph/api/presence-get?view=graph-rest-beta&preserve-view=true) of all the users in an organization, or a specific user in the organization.

### Devices and apps | Cloud printing
- Specify [print margins](/graph/api/resources/printmargin?view=graph-rest-beta&preserve-view=true) when configuring a [document for printing](/graph/api/resources/printdocument?view=graph-rest-beta&preserve-view=true).
- Support for the following [printer capabilities](/graph/api/resources/printercapabilities?view=graph-rest-beta&preserve-view=true):
  - feed directions
  - printing page ranges
  - print resolution in DPI
  - maximum print job queue size in bytes
  - input bins
  - margins
  - collation
  - document scaling
- Support for print resolution (DPI) and document scaling as part of [default printer settings](/graph/api/resources/printerdefaults?view=graph-rest-beta&preserve-view=true).
- Support for the following document configuration settings:
  - input bins
  - output bins
  - media sizes
  - margins
  - media types
  - finishings such as stapling or binding
  - pages per sheet
  - multi-page layout specifying the direction to lay out pages per sheet
  - collation
  - scaling
- Expand documents when [listing pring jobs](/graph/api/printer-list-jobs?view=graph-rest-beta&preserve-view=true).
- [Register a printer]() and use the [printerCreateOperation](/graph/api/resources/printercreateoperation?view=graph-rest-beta&preserve-view=true) resource to track and verify the registration of the printer.
- [Get long-running printer registration operation](/graph/api/printoperation-get?view=graph-rest-beta&preserve-view=true) within current user or app's tenant.
- A few renaming of properties and enum types - see details in the [June](changelog.md#june-2020) changelog updates for cloud printing.

### Devices and apps | Corporate management
Intune [June](changelog.md#june-2020) updates in beta.

### Education
- Can use delegated permissions `EduRoster.ReadBasic` to [get](/graph/api/educationuser-get?view=graph-rest-beta&preserve-view=true) the ID of a [teacher](/graph/api/resources/educationteacher?view=graph-rest-beta&preserve-view=true) or [student](/graph/api/resources/educationstudent?view=graph-rest-beta&preserve-view=true) in an external source program, as the **externalId** property.
- Use the **externalSource** property to track the value `lms` if an education [organization](/graph/api/resources/educationorganization?view=graph-rest-beta&preserve-view=true) or [class](/graph/api/resources/educationclass?view=graph-rest-beta&preserve-view=true) is created from a learning management system (LMS).

### Identity and access
- IT professionals can use [connector](/graph/api/resources/connector?view=graph-rest-beta&preserve-view=true) resources that are lightweight agents to connect to [Azure AD Application Proxy](/azure/active-directory/manage-apps/what-is-application-proxy), and [publish on-premises web applications apps externally](/graph/api/resources/onpremisespublishing?view=graph-rest-beta&preserve-view=true), so that remote users of their organizations can access these apps in a secure manner.
- Manage an [authentication policy](/graph/api/resources/authenticationflowspolicy?view=graph-rest-beta&preserve-view=true) at a tenant level, to enable or disable [self-service sign-up](/graph/api/resources/selfservicesignupauthenticationflowconfiguration?view=graph-rest-beta&preserve-view=true) of external users.
- [Provision a user account on demand](/graph/api/synchronization-synchronizationjob-provision-on-demand?view=graph-rest-beta&preserve-view=true), and be able to specify the objects to provision and synchronization rules to execute.

### Search
- Make use of enhancements on a [property](/graph/api/resources/property?view=graph-rest-beta&preserve-view=true) in a [schema](/graph/api/resources/schema?view=graph-rest-beta&preserve-view=true): **isRefinable** to enable filtering of search results and for a more refined control of the search experience, and **aliases** and **labels** for better relevance.
- Be able to specify up to 128 **property** resources in a **schema**.
- Use [get externalItem](/graph/api/externalitem-get?view=graph-rest-beta&preserve-view=true) for diagnostic purposes.

### Users
- Use the **userPurpose** property of [mailboxSettings](/graph/api/resources/mailboxsettings?view=graph-rest-beta&preserve-view=true) to identify and differentiate a mailbox for a single user from a shared mailbox and equipment mailbox in Exchange Online. 
- Use [user settings](/graph/api/resources/usersettings?view=graph-rest-beta&preserve-view=true) to [get](/graph/api/regionalandlanguagesettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/regionalandlanguagesettings-update?view=graph-rest-beta&preserve-view=true) [preferred languaes and regional settings](/graph/api/resources/regionalandlanguagesettings?view=graph-rest-beta&preserve-view=true).
- User settings is a relationship accessible through [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) that enables a consistent user experience across apps, by tapping into the Azure AD user profile to reflect the same user preferences. See [how user settings differentiate from mailbox settings](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true#user-preferences-for-languages-and-regional-formats).


## May 2020: New and generally available

### Calendar | Place
GA of the [places API](/graph/api/resources/place) in v1.0 - use this API in production apps to get, update, or delete a [room](/graph/api/resources/room) or [room list](/graph/api/resources/roomlist) in a tenant. [Find out more](outlook-calendar-concept-overview.md#build-apps-with-location-awareness-and-provide-intelligent-context) about the places API.

### Change notifications
- Subscribe to change notifications in Microsoft Cloud for US Government.

### Cloud communications | Call records
- GA of the [call records API](/graph/api/resources/callrecords-api-overview?view=graph-rest-1.0&preserve-view=true) - use the [callRecord](/graph/api/resources/callrecords-callrecord) resource to get the metadata of calls and online meetings on Microsoft Teams and Skype.
- Subscribe to [change notifications](./webhooks.md) for changes to all **callRecord** resources in an organization.
- [List sessions](/graph/api/callrecords-session-list?view=graph-rest-1.0&preserve-view=true) in a **callRecord**, and optionally [expand each session to list segments](/graph/api/callrecords-session-list?view=graph-rest-1.0&preserve-view=true#example-2-get-session-list-with-segments) in the call record.
- Support for 60-GHz (`frequency60GHz`) and `unknownFutureValue` WiFi band values of a media endpoint in a segment.
- Support for voice mail as a possible type of service-side end point in a communication [segment](/graph/api/resources/callrecords-segment).

### Devices and apps | Corporate management
Intune [May](changelog.md#may-2020) updates in v1.0.

### Graph Explorer
Use the many new features of [Graph Explorer](https://developer.microsoft.com/en-us/graph/graph-explorer) that enhance learning and prototyping in the sandbox. For example:
- View code snippets that correspond to the REST API query you entered, in C#, Java, JavaScript, and Objective C.
- Signed in with a tenant, view and copy an access token to your favorite REST client application.

See [New Graph Explorer is now GA](https://developer.microsoft.com/graph/blogs/new-graph-explorer-is-now-ga/) for more details.

### Groups
- Synchronizing on-premises directory to Azure Active Directory via Azure AD Connect now returns the **onPremisesDomainName**, **onPremisesNetBiosName** and **onPremisesSamAccountName** properties as part of the [group](/graph/api/resources/group?view=graph-rest-1.0&preserve-view=true) resource.
- Subscribe to change notifications for [group](/graph/api/resources/group) resources in Microsoft Cloud China operated by 21Vianet.

### Identity and access
- GA of the service principals API in v1.0 - use the [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0&preserve-view=true) resource in production apps to programmatically manage instances of applications and control what an application can do within your tenant. You can control who can use an application, what resources the application has access to, such as adding password credentials, rolling expiring certificates, and managing delegated permission grants and application role assignments.
- GA of the [appRoleAssignment](/graph/api/resources/appRoleAssignment?view=graph-rest-1.0&preserve-view=true) API, which records the assignment of an [appRole](/graph/api/resources/approle?view=graph-rest-1.0&preserve-view=true) (representing the `roles` claim in ID tokens and access tokens) to a [user](/graph/api/resources/user?view=graph-rest-1.0&preserve-view=true), [group](/graph/api/resources/group?view=graph-rest-1.0&preserve-view=true), or [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-1.0&preserve-view=true).
- Use Facebook as an identity provider on Azure Active Directory.
- Use the delegated or application permission of `AppRoleAssignment.ReadWrite.All` to allow an app to manage grants for application permissions to any API (including Microsoft Graph) and application assignments for any app, respectively with or without the signed-in user.


### Microsoft Graph SDKs
See new SDK guidance on the following:
- [Paging](./sdks/paging.md)
- [Batching](./sdks/batch-requests.md)
- [Uploading large files on OneDrive](./sdks/large-file-upload.md)
- [Customizing SDK service client through HTTP middleware components](./sdks/customize-client.md).

### Teamwork
- If your scenario involves online meetings on Teams, see new guidance on [how to choose](choose-online-meeting-api.md) between the [calendar API](outlook-calendar-online-meetings.md) and [cloud communications API](cloud-communications-online-meetings.md) to create and join online meetings.
- [Send](/graph/api/channel-post-messages?view=graph-rest-1.0&preserve-view=true) and [reply](/graph/api/channel-post-messagereply?view=graph-rest-1.0&preserve-view=true) to messages in a [channel](/graph/api/resources/channel?view=graph-rest-1.0&preserve-view=true).
- Get the OneDrive for Business location of the files for a [channel](/graph/api/resources/channel?view=graph-rest-1.0&preserve-view=true), by using the **fileFolder** navigation property.

### Teamwork | Shifts
GA of the [shifts API](/graph/api/resources/shift?view=graph-rest-1.0&preserve-view=true) in v1.0 - use this API in production apps to create, update, and manage schedules of firstline workers, to let them stay in touch and collaborate effectively.

### Users
- Subscribe to change notifications for [user](/graph/api/resources/user) resources in Microsoft Cloud China operated by 21Vianet.
- Track the status and date/time of the last status change of an external user, who has been [invited](/graph/api/invitation-post?view=graph-rest-1.0&preserve-view=true) to join the organization, by using the **externalUserState** and **externalUserStateChangeDateTime** properties of the **user** resource.

## May 2020: New in preview only

### Change notifications
- Use formally schematized types [changeNotification](/graph/api/resources/changenotification?view=graph-rest-beta&preserve-view=true) and [changeNotificationCollection](/graph/api/resources/changenotificationcollection?view=graph-rest-beta&preserve-view=true) to process resource change notifications. 
- Track if notifications are in sequence or if a notification is missing by using the **sequenceNumber** property on the **changeNotification** resource.

### Devices and apps | Cloud printing
- The [printer](/graph/api/resources/printer?view=graph-rest-beta&preserve-view=true) and [printerShare](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true) resources are now in parity and have the same properties as each other.
- Some property and type name clean-up around printer shares:
  - Use the **shared** navigation property of [print](/graph/api/resources/print?view=graph-rest-beta&preserve-view=true) to get the list of printer shares registered in the tenant. 
  - See details in the [May](changelog.md#may-2020) changelog.

### Devices and apps | Corporate management
Intune [May](changelog.md#may-2020) updates in beta.

### Groups
- [Evaluate](/graph/api/group-evaluatedynamicmembership?view=graph-rest-beta&preserve-view=true) whether a user or device is or would be a member of a dynamic group, using the existing rule for the [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) or a specified rule. [Rule-based dynamic membership](/azure/active-directory/users-groups-roles/groups-dynamic-membership) reduces administrative overhead of adding and removing members.
- When creating a Microsoft 365 [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true), configure the behaviors of the group by specifying them in the **resourceBehaviorOptions** property. For example, allow members to post, subscribe new members to conversation, disable welcome email, and hide the group in Outlook experiences.
- Specify the resources to provision in the **resourceProvisioningOptions** property that are normally not part of the default [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) creation. Currently supported is provisioning a group as a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) with Microsoft Teams capabilities.

### Identity and access
- Apply OData system query options (`$count`, `$filter`, `$search`) when getting collections of entities that are derived from [directoryObject](/graph/api/resources/directoryObject). 
You can [search for specific tokens](/graph/search-query-parameter#using-search-on-directory-object-collections) in the **displayName** and **description** properties 
of these entities, and use OData cast to trim **directoryObject** results to certain derived types. See more details in 
[Build advanced queries in Microsoft Graph with $count, $filter, $search, and $orderby](https://developer.microsoft.com/en-us/graph/blogs/build-advanced-queries-with-count-filter-search-and-orderby/).
- As part of the [identity protection API](/graph/api/resources/identityprotection-root?view=graph-rest-beta&preserve-view=true), use the **riskEventType** property to [get the type of risk detected](/graph/api/riskdetection-get?view=graph-rest-beta&preserve-view=true), or [get the type of risk in a user's history](/graph/api/riskyuser-list-history?view=graph-rest-beta&preserve-view=true). Do not use the **riskType** property as it has been deprecated.
- Specify client application types in the **clientAppTypes** property of the [condition set](/graph/api/resources/conditionalaccessconditionset?view=graph-rest-beta&preserve-view=true) for a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- Use the delegated permission of `EntitlementManagement.Read.All` to allow an app to read access packages and related entitlement management resources on behalf of the signed-in user.
- Use the delegated or application permissions of `Application.Read.All` and `Application.ReadWrite.All` to [list applications](/graph/api/application-list?view=graph-rest-beta&preserve-view=true) in an organization.
- Control authorization settings in Azure AD using the [authorizationPolicy](/graph/api/resources/authorizationpolicy?view=graph-rest-beta&preserve-view=true) resource type.

### Teamwork
- Teams apps that [support single sign-on (SSO)](/microsoftteams/platform/tabs/how-to/authentication/tab-sso-overview) can specify the `WebApplicationInfo.id` from the Teams app manifest, in the **azureADAppId** property of the [teamsAppDefinition](/graph/api/resources/teamsappdefinition?view=graph-rest-beta&preserve-view=true).
- Use [finer grained permissions](./permissions-reference.md#team-resource-specific-consent-permissions) to access [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) and [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) resources.


## April 2020: New and generally available

### Calendar
- [Share or delegate calendars](outlook-share-or-delegate-calendar.md) programmatically, in closer parity with the Outlook user experience. In addition to tracking the current user's permissions and sharing status for a calendar:
  - For each [calendar](/graph/api/resources/calendar?view=graph-rest-1.0&preserve-view=true), you can now manage the [permissions](/graph/api/resources/calendarpermission?view=graph-rest-1.0&preserve-view=true) of each user with whom the calendar is shared. 
  - For each [mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-1.0&preserve-view=true), you can now specify whether a delegate, mailbox owner, or both receive meeting messages and meeting responses. 
- [Create or update an event as an online meeting](outlook-calendar-online-meetings.md):
  - For each **calendar**, specify the allowed and the default online meeting providers.
  - Create or update an [event](/graph/api/resources/event?view=graph-rest-1.0&preserve-view=true) to be available online, and provide details for attendees to join the meeting online. 
  - In particular, use the new **onlineMeetingProvider** and **onlineMeeting** properties of **event** to set or identify Microsoft Teams as an online meeting provider, a workaround for a [known issue](known-issues.md#onlinemeetingurl-property-is-not-supported-for-microsoft-teams) with the **onlineMeetingUrl** property.
- Add [file attachments up to 150MB](outlook-large-attachments.md) to an [event](/graph/api/resources/event?view=graph-rest-1.0&preserve-view=true).

### Files
- [Check out](/graph/api/driveitem-checkout?view=graph-rest-1.0&preserve-view=true) or [check in](/graph/api/driveitem-checkin?view=graph-rest-1.0&preserve-view=true) a file to OneDrive to manage updating the file and making updates available to others when the updates are ready.
- Apply optional password and expiration date/time as parameters of the [invite](/graph/api/driveitem-invite?view=graph-rest-1.0&preserve-view=true) and [create sharing link](/graph/api/driveitem-createlink?view=graph-rest-1.0&preserve-view=true) actions to share a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0&preserve-view=true).
- Get or set password and expiration date/time of a [permission](/graph/api/resources/permission?view=graph-rest-1.0&preserve-view=true), and track the [identitySet](/graph/api/resources/identityset?view=graph-rest-1.0&preserve-view=true) of users granted the permission to share a **driveItem**.
- Get the [permission](/graph/api/resources/permission?view=graph-rest-1.0&preserve-view=true) of a [shared drive item](/graph/api/resources/shareddriveitem?view=graph-rest-1.0&preserve-view=true) by using the **permission** navigation property.
- Limit users with a [sharing link](/graph/api/resources/sharinglink?view=graph-rest-1.0&preserve-view=true) to only view and may not download the contents of a shared**driveItem** on OneDrive for Business or SharePoint.

### Identity and access
- To manage roles and assign access to resources in role-based access control (RBAC) providers such as Microsoft Intune, use [unifiedRoleAssignmentMultiple](/graph/api/resources/unifiedroleassignmentmultiple?view=graph-rest-1.0&preserve-view=true). The **unifiedRoleAssignmentMultiple** resource supports defining a single role over an array of scopes, and assigning the role to multiple principals (such as users).
- Access specific types of [policies for an organization](/graph/api/resources/policy-overview?view=graph-rest-1.0&preserve-view=true) using the `/policies` URL segment and specifying the policy type. For example, an organization can enforce a policy to automatically sign a user out from a web session after a period of inactivity; see CRUD operations for instances of [activityBasedTimeoutPolicy](/graph/api/resources/activitybasedtimeoutpolicy?view=graph-rest-1.0&preserve-view=true). This is a [breaking change](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-1.0/) to make it easier to discover all policies, by grouping all typed policies under the `/policies` segment. Access other typed policies in a similar approach: [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-1.0&preserve-view=true), [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-1.0&preserve-view=true), [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-1.0&preserve-view=true), and [tokenIssuancePolicy](/graph/api/resources/tokenissuancepolicy). 

### Mail
Add [file attachments up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-1.0&preserve-view=true).

### Sites and lists
- [List sites](/graph/api/sites-list-followed?view=graph-rest-1.0&preserve-view=true) that the signed-in user has followed.
- Identify the geographic region of a [site collection](/graph/api/resources/sitecollection?view=graph-rest-1.0&preserve-view=true) by using the **dataLocationCode** property.
- Identify the tenant of a file, folder, or other item on SharePoint by accessing the **tenantId** property that is part of the **sharepointIds** of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0&preserve-view=true).

## April 2020: New in preview only

### Devices and apps | Cloud printing

Designate allowed users and groups to use specific [printer shares](/graph/api/resources/printershare?view=graph-rest-beta&preserve-view=true) on Universal Print, the Microsoft 365 cloud-based print infrastructure. To experience robust and centralized print management capabilities, and offer a simple yet rich and secure print experience for print users, see the [Universal Print announcement](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/announcing-universal-print-a-cloud-based-print-solution/ba-p/1204775) and join their preview program.

### Devices and apps | Corporate management
Intune [April](changelog.md#april-2020) updates.

### Groups
Identify the app that created a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) by its app ID.

### Identity and access
- [Track changes](/graph/api/administrativeunit-delta?view=graph-rest-beta&preserve-view=true) for [administrative units](/graph/api/resources/administrativeunit?view=graph-rest-beta&preserve-view=true).
- [Track changes](/graph/api/oauth2permissiongrant-delta?view=graph-rest-beta&preserve-view=true) for [oAuth2PermissionGrant](/graph/api/resources/oauth2permissiongrant?view=graph-rest-beta&preserve-view=true).
- [Manage](/graph/api/resources/authenticationmethods-overview?view=graph-rest-beta&preserve-view=true) a user's [authentication methods](/graph/api/resources/authenticationmethod?view=graph-rest-beta&preserve-view=true) which include [password](/graph/api/resources/passwordauthenticationmethod?view=graph-rest-beta&preserve-view=true) or [phone](/graph/api/resources/phoneauthenticationmethod?view=graph-rest-beta&preserve-view=true). For example, [reset a user password](/graph/api/passwordauthenticationmethod-resetpassword?view=graph-rest-beta&preserve-view=true) and [get the reset status](/graph/api/authenticationoperation-get?view=graph-rest-beta&preserve-view=true), or [add a phone number](/graph/api/authentication-post-phonemethods?view=graph-rest-beta&preserve-view=true) for a user for SMS or voice call authentication, if the policy is enabled for the user.

### Reports | Identity and access reports
[List](/graph/api/relyingpartydetailedsummary-list?view=graph-rest-beta&preserve-view=true) [relying parties](/windows-server/identity/ad-fs/technical-reference/understanding-key-ad-fs-concepts) configured in Active Directory Federation Services.

### Reports | Microsoft 365 usage reports
View **Meeting Created** and **Meeting Interacted** data in CSV reports for [email activity counts](/graph/api/reportroot-getemailactivitycounts?view=graph-rest-beta&preserve-view=true), [email activity user counts](/graph/api/reportroot-getemailactivityusercounts?view=graph-rest-beta&preserve-view=true), and [email activity user detail](/graph/api/reportroot-getemailactivityuserdetail?view=graph-rest-beta&preserve-view=true).


## March 2020: New and generally available

### Cloud communications
- Get the call routing and incoming context of a [call](/graph/api/resources/call?view=graph-rest-1.0&preserve-view=true).
- [Update the recording status](/graph/api/call-updaterecordingstatus?view=graph-rest-1.0&preserve-view=true) of a call.
- Specify recording information for a [participant](/graph/api/resources/participant?view=graph-rest-1.0&preserve-view=true), including the initiator and status of the recording.
- Uniquely identify participants in a conference or participant-to-participant [call](/graph/api/resources/call?view=graph-rest-1.0&preserve-view=true) using the **callChainId** property.
- Identify as part of [participantInfo](/graph/api/resources/participantinfo?view=graph-rest-1.0&preserve-view=true) the country code and endpoint type (such as Skype for Business, or Skype for Business VOIP) of the participant.
- Third-party video teleconferencing (VTC) device partners can log and provide media quality data for their video teleconferencing devices through a Cloud Video Interop (CVI) bot and using the [logTeleconferenceDeviceQuality](/graph/api/call-logteleconferencedevicequality?view=graph-rest-1.0&preserve-view=true) function. Media quality includes open-type data for [audio](/graph/api/resources/teleconferencedeviceaudioquality?view=graph-rest-1.0&preserve-view=true), [video](/graph/api/resources/teleconferencedevicevideoquality?view=graph-rest-1.0&preserve-view=true), and [screen-sharing](/graph/api/resources/teleconferencedevicescreensharingquality?view=graph-rest-1.0&preserve-view=true).

### Files
- [Remote items](/graph/api/resources/remoteitem?view=graph-rest-1.0&preserve-view=true) that are shared with a user, added to the user's OneDrive, or returned as a search result can contain metadata for an image or video.
- [Follow](/graph/api/driveitem-follow?view=graph-rest-1.0&preserve-view=true) a [driveItem](/graph/api/resources/driveitem?view=graph-rest-1.0&preserve-view=true) for convenient access, or for faciliating actions such as move, copy, and save-as. Use [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-1.0&preserve-view=true) to stop following the drive item.
- [Grant](/graph/api/permission-grant?view=graph-rest-1.0&preserve-view=true) permissions to users to access a sharing link, in order to share the corresponding drive item.

### Identity and access
- [Track changes](/graph/api/orgcontact-delta?view=graph-rest-1.0&preserve-view=true) for [organizational contacts](/graph/api/resources/orgcontact?view=graph-rest-1.0&preserve-view=true).
- Use the **riskEventTypes_v2** property to get the risk event types associated with a [sign-in](/graph/api/resources/signin?view=graph-rest-1.0&preserve-view=true).
- Use the `User.ManageIdentities.All` delegated permission to allow an app to read, update, or delete identities that are associated with a user's account, that the signed-in user has access to. Use that permission at the application-level without a signed-in user present. This allows the app to [manage](/graph/api/user-update?view=graph-rest-1.0&preserve-view=true) which identities a user can sign-in with.

### Reports
Use Teams Service Administrator and Teams Communications Administrator as accepted user roles to allow apps to read Microsoft 365 service usage reports on behalf of a user, as [forms of user-delegated authorization](reportroot-authorization.md). 

### Sites
- Let users [follow](/graph/api/site-follow?view=graph-rest-1.0&preserve-view=true) or [unfollow](/graph/api/site-unfollow?view=graph-rest-1.0&preserve-view=true) SharePoint sites.
- [Subscribe to change notifications](/graph/api/resources/subscription?view=graph-rest-1.0&preserve-view=true) for a SharePoint [list](/graph/api/resources/list?view=graph-rest-1.0&preserve-view=true).

## March 2020: New in preview only

### Calendar
- Use the **calendarGroupId** property to get the [calendar group](/graph/api/resources/calendargroup?view=graph-rest-beta&preserve-view=true) in which a [calendar](/graph/api/resources/calendar?view=graph-rest-beta&preserve-view=true) has been created.
- Use the **isDraft** property to identify an [event](/graph/api/resources/event?view=graph-rest-beta&preserve-view=true) as a meeting that the user has updated in Outlook but has not sent to update attendees.

### Cloud communications
- Use [createOrGet](/graph/api/onlinemeeting-createorget?view=graph-rest-beta&preserve-view=true) to get an [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) instance by a custom external ID, and create one when none already exists.
- Have the option to use the **externalId** property to identify an online meeting with the custom external ID.
- Use the optional `Accept-Language` HTTP request header to [create](/graph/api/application-post-onlinemeetings?view=graph-rest-beta&preserve-view=true) or [get](/graph/api/onlinemeeting-get?view=graph-rest-beta&preserve-view=true) an instance of online meeting, so that the successful operation displays the content of the **joinInformation** property in the specified language and locale variant.

### Devices and apps
Intune [March](changelog.md#march-2020) updates.

### Identity and access
- Use the `AuditLog.Read.All` permission to list the [sign-in activity](/graph/api/resources/signinactivity?view=graph-rest-beta&preserve-view=true) of a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true).
- Use the `PrivilegedAccess.Read.AzureResources` application-level permission for [Privileged Identity Management (PIM) of Azure resources](/graph/api/resources/privilegedidentitymanagement-resources?view=graph-rest-beta&preserve-view=true), to set up just-in-time access workflow for Azure infrastructure roles at a management group, subscription, resource group, or resource level.
- Use the [identitySecurityDefaultsEnforcementPolicy](/graph/api/resources/identitysecuritydefaultsenforcementpolicy?view=graph-rest-beta&preserve-view=true) entity to [get](/graph/api/identitysecuritydefaultsenforcementpolicy-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/identitysecuritydefaultsenforcementpolicy-update?view=graph-rest-beta&preserve-view=true) pre-configured default security settings that protect organizations against common attacks.
- Use an `identity` segment when calling the conditional access APIs. For example, to [get](/graph/api/conditionalaccesspolicy-get?view=graph-rest-beta&preserve-view=true) a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true): `GET https://graph.microsoft.com/beta/identity/conditionalAccess/policies/{id}`.
- Use the **authenticationRequirement** property to get the highest level of authentication that is needed through all the sign-in steps in order for [sign-in](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) to succeed.
- Use pagination when [listing provisioning events](/graph/api/provisioningobjectsummary-list?view=graph-rest-beta&preserve-view=true) that occurred in your tenant.

### Search
- To add data in a file to search results, index the data simply as an [externalItem](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true). The **externalFile** type has been deprecated.
- [Update](/graph/api/externalitem-update?view=graph-rest-beta&preserve-view=true) an [item in the index](/graph/api/resources/externalitem?view=graph-rest-beta&preserve-view=true), by specifically updating the plain-text representation of the item (represented by the **content** property), or the properties bag of the item (represented by the **properties** property). Updating any property in the properties bag overwrites the entire properties bag, so make sure to explicitly include all the properties of the item in the update.
- Check for `HTTP 429` and the `Retry-After` response header after calling the [create](/graph/api/externalconnection-put-items?view=graph-rest-beta&preserve-view=true), [update](/graph/api/externalitem-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/externalitem-delete?view=graph-rest-beta&preserve-view=true) operation of **externalItem**. Backing off requests using the `Retry-After` delay is the fastest way to recover from [throttling](throttling.md#best-practices-to-handle-throttling).

### Teamwork
Use the `ChannelMessage.Read.All` application-level permission to read [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) instances in channels without a signed-in user.

### Universal Print
Debut of the [Universal Print API](universal-print-concept-overview.md) which allows users to print on the web or from an app. The API lets IT administrators manage user and group access to printers in the Microsoft 365 cloud, remote printer sharing to maintain availability, monitor printer status, and report on archived print jobs and usage. 

Note that as of March 2020, the Universal Print _service_ is in private preview. See [Announcing Universal Print: a cloud-based print solution](https://aka.ms/announcinguniversalprint) for information regarding participation.


## February 2020: New and generally available

### Calendar
Walk through an example of [creating an event in a shared or delegated calendar](outlook-create-event-in-shared-delegated-calendar.md), and the actions and properties available to the delegate, invitees, and calendar owner during this process.

### Identity and access
- To improve security when subscribing to [change notifications of user data](webhooks.md), [enforce Transport Layer Security (TLS) 1.2](/configmgr/core/plan-design/security/enable-tls-1-2) or higher on clients and site servers used in the notification process. The new requirement is rolled out in stages starting February 15 2020. By May 15, 2020, all notification endpoints must meet the new TLS requirement. [Find out the stages of the rollout](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) and if necessary, use the new **latestSupportedTlsVersion** property as a temporary workaround to avoid subscription failures, before completing the TLS upgrade.
- Use respective types of [threat assessment request](/graph/api/resources/threatAssessmentRequest?view=graph-rest-1.0&preserve-view=true) to track threats from [mail](/graph/api/resources/mailassessmentrequest?view=graph-rest-1.0&preserve-view=true), an [email message file](/graph/api/resources/emailfileassessmentrequest?view=graph-rest-1.0&preserve-view=true) (.EML file), [email attachment file](/graph/api/resources/fileassessmentrequest?view=graph-rest-1.0&preserve-view=true) (text, Word, or binary file), or [URL](/graph/api/resources/urlassessmentrequest?view=graph-rest-1.0&preserve-view=true).

### Users
[Reprocess](/graph/api/user-reprocesslicenseassignment?view=graph-rest-1.0&preserve-view=true) all group-based license assignments for a [user](/graph/api/resources/user?view=graph-rest-1.0&preserve-view=true).


## February 2020: New in preview only

### Calendar
See [tasks supported by preview APIs that manage calendar sharing and delegation](outlook-share-or-delegate-calendar.md).

### Cloud communications

- Use the new [call records](/graph/api/resources/callrecords-callrecord) resource to get metadata of calls and online meetings on Microsoft Teams and Skype for Business for an organization.
- For a participant in a meeting, use the **initiator** property to get the identity information of the initiator of a [recording](/graph/api/resources/recordinginfo?view=graph-rest-beta&preserve-view=true), if there is one.

### Devices and apps
Intune [February](changelog.md#february-2020) updates.

### Groups
Use the [assignLicense](/graph/api/group-assignlicense?view=graph-rest-beta&preserve-view=true) method to assign licences for products, such as Microsoft 365 or Enterprise Mobility + Security, to a group. Since Azure AD ensures licences are assigned to members of the group, members joining or leaving a group no longer requires licence management at the individual level.

### Identity and access
- Set requestor, approval, and review settings when creating an [access package assignment policy](/graph/api/resources/accesspackageassignmentpolicy?view=graph-rest-beta&preserve-view=true).
- Access specific types of [policies for an organization](/graph/api/resources/policy-overview?view=graph-rest-beta&preserve-view=true) using the `/policies` URL segment and specifying the policy type. For example, an organization can enforce a policy to automatically sign a user out from a web session after a period of inactivity; see CRUD operations for instances of [activityBasedTimeoutPolicy](/graph/api/resources/activitybasedtimeoutpolicy?view=graph-rest-beta&preserve-view=true). This is a [breaking change](https://developer.microsoft.com/identity/blogs/breaking-changes-policy-api-microsoft-graph-beta/) to make it easier to discover all policies, by grouping all typed policies under the `/policies` segment. Access other typed policies in a similar approach: [claimsMappingPolicy](/graph/api/resources/claimsmappingpolicy?view=graph-rest-beta&preserve-view=true), [homeRealmDiscoveryPolicy](/graph/api/resources/homerealmdiscoverypolicy?view=graph-rest-beta&preserve-view=true), [tokenLifetimePolicy](/graph/api/resources/tokenlifetimepolicy?view=graph-rest-beta&preserve-view=true), and [tokenIssuancePolicy](/graph/api/resources/tokenissuancepolicy). 
- Use application-level and delegated `Policy.ReadWrite.ApplicationConfiguration` permission for read and write operations on application configuration [policies](/graph/api/resources/policy-overview?view=graph-rest-beta&preserve-view=true) mentioned in the preceding item.

### Teamwork
- Use [change notifications](/graph/api/resources/webhooks?view=graph-rest-beta&preserve-view=true) on all channel messages or all chat messages in an organization.
- [Decline](/graph/api/swapshiftschangerequest-decline?view=graph-rest-beta&preserve-view=true) a [request to swap shifts](/graph/api/resources/swapshiftschangerequest?view=graph-rest-beta&preserve-view=true) with another user in a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true).

## January 2020: New and generally available

### Security
As part of customer alert management, use the [update alert](/graph/api/alert-update?view=graph-rest-1.0&preserve-view=true) method and update the **comments** field as either `Closed in IPC` or `Closed in MCAS`.

### Teamwork
Use the **primaryChannel** navigation property of a [team](/graph/api/resources/team?view=graph-rest-1.0&preserve-view=true) to access its default channel, **General**.

### Users
Use the **identities** property to access one or more identities that a [user](/graph/api/resources/user?view=graph-rest-1.0&preserve-view=true) can use to sign in to an Azure AD user account. The identities can be provided by Microsoft, organizations, or social identity providers such as Facebook, Google, or Microsoft. This property allows the user to sign in to the user account with any of these identities.

## January 2020: New in preview

### Devices and apps
Intune [January](changelog.md#january-2020) updates.


## December 2019: New and generally available

### Cloud communications
The cloud communications API has GA'd and APIs for [call](/graph/api/resources/call?view=graph-rest-1.0&preserve-view=true) and [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-1.0&preserve-view=true) are [available in v1.0](/graph/api/resources/communications-api-overview?view=graph-rest-1.0&preserve-view=true).

### Education
Use the **classSettings** property to manage class-specific settings, such as enabling the sending of weekly assignment digests. This property is available on the [team](/graph/api/resources/team?view=graph-rest-1.0&preserve-view=true) resource when the team represents an [education class](/graph/api/resources/educationclass?view=graph-rest-1.0&preserve-view=true).

### Identity and access 
[Attempting to get container objects with limited permissions returns partial data](permissions-overview.md#limited-information-returned-for-inaccessible-member-objects). An example is a [group](/graph/api/resources/group?view=graph-rest-1.0&preserve-view=true) instance that's associated with a [user](/graph/api/resources/user?view=graph-rest-1.0&preserve-view=true), another **group**, and a [device](/graph/api/resources/device?view=graph-rest-1.0&preserve-view=true). An app having only the permissions User.Read.All and Group.Read.All and attempting to access this **group** instance would get the **user** and **group** objects, but limited data for the **device** object (only data type and object ID and not property values).

### People and workplace intelligence
The insights API has GA'd. Use the API in production apps to identify the most relevant documents that are:

- [Trending around](/graph/api/insights-list-trending?view=graph-rest-1.0&preserve-view=true) a user
- [Used by](/graph/api/insights-list-used?view=graph-rest-1.0&preserve-view=true) a user
- [Shared with or shared by](/graph/api/insights-list-shared?view=graph-rest-1.0&preserve-view=true) a user

### Reports
To get Microsoft 365 usage reports using permissions delegated by a user, administrators must have assigned the user an Azure AD limited administrator role. This can be one of the following roles: company administrator, Exchange administrator, SharePoint administrator, Lync administrator, global reader, or reports reader. See [Authorization for APIs to read Microsoft 365 usage reports](reportroot-authorization.md) for details.

### Toolkit
Microsoft Graph Toolkit v1.1 has released. For a list of enhancements and bug fixes, see the [December 2019 section](changelog.md#december-2019) of the changelog.

## December 2019: New in preview

### Cloud communications
- Use the new [presence](/graph/api/resources/presence?view=graph-rest-beta&preserve-view=true) resource to get information about the availability and current activity of one or more users.
- [Delete](/graph/api/onlinemeeting-delete?view=graph-rest-beta&preserve-view=true) an instance of an [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true).
- See the [December 2019 section](changelog.md#december-2019) of the changelog for the renaming and removal of a few members of the [call](/graph/api/resources/call?view=graph-rest-beta&preserve-view=true) and [onlineMeeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true) resources, to be in parity with the v1 version of these resources.

### Devices and apps
Intune [December](changelog.md#december-2019) updates

### Identity and access 
- Behavior fix to the **appRoleAssignments** and **appRoleAssignedTo** relationships on [servicePrincipal](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true).
- Use [accessPackageResourceRequest](/graph/api/resources/accesspackageresourcerequest?view=graph-rest-beta&preserve-view=true) in [Azure AD entitlement management](/graph/api/resources/entitlementmanagement-overview?view=graph-rest-beta&preserve-view=true) to request adding a resource to a [catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true), so that the roles of that resource can be used in an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true).
- Use the [threat assessment API](/graph/api/resources/threatassessment-api-overview?view=graph-rest-beta&preserve-view=true) to empower administrators to report suspicious emails, phishing URLs, email attachments, or other files. The thread scanning verdict can then inform them to adjust organizational policy appropriately.

### Teamwork
- [Set up change notifications that include resource data](webhooks-with-resource-data.md) for [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true) resources in Microsoft Teams channels and chats.
- [Subscribe to notifications](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) for new or modified [channel messages or chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta&preserve-view=true).
- Use the [shiftPreferences](/graph/api/resources/shiftpreferences?view=graph-rest-beta&preserve-view=true) resource to enable specifying a user's availability to be assigned shifts in a [schedule](/graph/api/resources/schedule?view=graph-rest-beta&preserve-view=true). Get or set this as part of the user's [settings](/graph/api/resources/usersettings?view=graph-rest-beta&preserve-view=true).


## November 2019: New and generally available

### Groups
- Use delegated or application permissions, GroupMember.Read.All and GroupMember.ReadWrite.All, to list groups, read basic group properties, read (and update if read/write permission) the membership of the groups the app has access to.
- Use the application permission, Group.Create, to create groups without a signed-in user.
- For a specified [group](/graph/api/resources/group?view=graph-rest-1.0&preserve-view=true), [check for membership](/graph/api/group-checkmemberobjects?view=graph-rest-1.0&preserve-view=true) in other groups or directory roles.

### Identity and access
- Register [applications](/graph/api/resources/application?view=graph-rest-1.0&preserve-view=true) that authenticate with Azure Active Directory (Azure AD). Use delegated [permissions](./permissions-reference.md#application-resource-permissions), Application.Read.All and Application.ReadWrite.All, or application permission, Application.Read.All, as appropriate.
- For a specified [device](/graph/api/resources/device?view=graph-rest-1.0&preserve-view=true), [check for membership](/graph/api/device-checkmemberobjects?view=graph-rest-1.0&preserve-view=true) in other groups or directory roles.

### Mail
- Use the **conversationIndex** property to get the position of a message in an Outlook email conversation.
- Use the delegated permission, Mail.ReadBasic, and application permission, Mail.ReadBasic.All, to get [message](/graph/api/resources/message?view=graph-rest-1.0&preserve-view=true) or [mail folder](/graph/api/resources/mailfolder?view=graph-rest-1.0&preserve-view=true) resources, track their changes, and manage [subscriptions](/graph/api/resources/subscription?view=graph-rest-1.0&preserve-view=true) for change notifications on messages.

### Users
- [Check for group memberships](/graph/api/user-checkmemberobjects?view=graph-rest-1.0&preserve-view=true) for a specified [user](/graph/api/resources/user?view=graph-rest-1.0&preserve-view=true).
- Use the **creationType** property to find how a user account was created, for example, whether the account was created as a regular school or work account or as an external account, etc.

## November 2019: New in preview

### Calendar
- [Use Outlook to organize or attend meetings online](outlook-calendar-online-meetings.md).
- [Set properties](/graph/api/place-update?view=graph-rest-beta&preserve-view=true) for the rich location types of [room](/graph/api/resources/room?view=graph-rest-beta&preserve-view=true) and [room list](/graph/api/resources/roomlist?view=graph-rest-beta&preserve-view=true).

### Cloud communication
The [call](/graph/api/resources/call?view=graph-rest-beta&preserve-view=true) resource type supports the following additional features:

- The [context of an incoming call](/graph/api/resources/incomingcontext?view=graph-rest-beta&preserve-view=true)
- The type of endpoint for a participant, such as voice mail or Skype for Business
- The ability to [update](/graph/api/call-updaterecordingstatus?view=graph-rest-beta&preserve-view=true) the [recording information](/graph/api/resources/recordinginfo?view=graph-rest-beta&preserve-view=true) for a [participant](/graph/api/resources/participant?view=graph-rest-beta&preserve-view=true)

### Devices and apps
Intune [November](changelog.md#november-2019) updates

### Education
Administrators can enable class-wide settings through the **classSettings** property of the [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) associated with the [class](/graph/api/resources/educationclass?view=graph-rest-beta&preserve-view=true). Currently, there is a setting to notify guardians about weekly assignments.

### Identity and access
- Use the application permission, Policy.Read.All, to read all your organization's conditional access policies and named locations, without a signed-in user present.
- Allow a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true) to be in a report-only state, `enabledForReportingButNotEnforced`.
- Use the delegated permission, ThreatAssessment.ReadWrite.All, or application permission, ThreatAssessment.Read.All, to read (or create, if read/write permission) requests to assess threats in an organization.

### Mail
Use the delegated permission, Mail.ReadBasic, and application permission, Mail.ReadBasic.All, to manage [subscriptions](/graph/api/resources/subscription?view=graph-rest-beta&preserve-view=true) for change notifications on the [message](/graph/api/resources/message?view=graph-rest-beta&preserve-view=true) resource.

### Notifications
Use the new light-weight notifications [web SDK](https://aka.ms/GNSDK) in place of the [Project Rome SDK](https://github.com/Microsoft/project-rome), to take advantage of an improved authentication model and support for web apps using web push. 

### People and workplace intelligence
Debut of the [profile](/graph/api/resources/profile?view=graph-rest-beta&preserve-view=true) resource which is a rich representation of the next generation of people entities in Microsoft services. This resource relates to common and practical people attributes, including information for any meaningful dates such as [anniversaries](/graph/api/resources/personanniversary?view=graph-rest-beta&preserve-view=true), [education](/graph/api/resources/educationalactivity?view=graph-rest-beta&preserve-view=true), [employment positions](/graph/api/resources/workposition?view=graph-rest-beta&preserve-view=true), [interests](/graph/api/resources/personinterest?view=graph-rest-beta&preserve-view=true), [language](/graph/api/resources/languageproficiency?view=graph-rest-beta&preserve-view=true) and [skill](/graph/api/resources/skillproficiency?view=graph-rest-beta&preserve-view=true) proficiencies, [project participation](/graph/api/resources/projectparticipation?view=graph-rest-beta&preserve-view=true), [web site association](/graph/api/resources/personwebsite?view=graph-rest-beta&preserve-view=true), and other [account](/graph/api/resources/useraccountinformation?view=graph-rest-beta&preserve-view=true) and contact information.

### Search
Debut of the [Microsoft Search API](search-concept-overview.md) which allows app users to get more up-to-date, personalized, and relevant search results powered by Microsoft Graph. Use the [query](/graph/api/search-query?view=graph-rest-beta&preserve-view=true) capability that by default, searches Outlook messages and events, and OneDrive and SharePoint files in the Microsoft cloud. Use [connectors](/microsoftsearch/connectors-overview), available in the [Microsoft Graph connectors gallery](/microsoftsearch/connectors-gallery), to include search data outside of the Microsoft cloud. Alternatively, [build your own connectors](/graph/api/resources/indexing-api-overview?view=graph-rest-beta&preserve-view=true#common-use-cases), index external custom items and files, and query specific external data sources.

### Teamwork
Get the [file](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) resources associated with a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true) and [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true) by using the following HTTP request syntax:

```http
GET /teams/{teamId}/channels/{channelId}/filesFolder
```

### Users
Use the **creationType** property to find how a user account was created, for example, whether the account was created as a regular school or work account or as an external account, etc.


## October 2019: New and generally available

### Identity and access
- Use [organization contacts](/graph/api/resources/orgcontact?view=graph-rest-1.0&preserve-view=true) in production apps. Organization contacts are managed by organization administrators, synchronized either from an on-premises Active Directory or from Exchange Online.
- Configure [certificate-based authentication](/azure/active-directory/authentication/active-directory-certificate-based-authentication-get-started) in an [organization](/graph/api/resources/organization?view=graph-rest-1.0&preserve-view=true).
- Add and remove [password credentials](/graph/api/resources/passwordcredential?view=graph-rest-1.0&preserve-view=true) for [applications](/graph/api/resources/application?view=graph-rest-1.0&preserve-view=true).

### Mail
Use the new **message** parameter to update any writeable [message](/graph/api/resources/message?view=graph-rest-1.0&preserve-view=true) properties when [replying](/graph/api/message-reply?view=graph-rest-1.0&preserve-view=true) to a message, for example, [adding a recipient to the reply](/graph/api/message-reply#example?view=graph-rest-1.0&preserve-view=true).

### Microsoft Graph data connect
Developers and data scientists can now use [tools to translate Office 365 data into Common Data Model format](https://github.com/OfficeDev/MS-Graph-Data-Connect/blob/master/Common-Data-Model/README.md), making it schematically consistent with other Open Data Initiative (ODI)-ready datasets. 


### Microsoft Graph SDKs
- Use chaos handlers in the JavaScript SDK to verify if an app is resilient to server failures that are tricky to initiate.
- Read about [making API calls using the SDKs](./sdks/create-requests.md).

### Users
- [Get](/graph/api/user-get-mailboxsettings?view=graph-rest-1.0&preserve-view=true) or [set](/graph/api/user-update-mailboxsettings?view=graph-rest-1.0&preserve-view=true) a user's preferred date and time format [settings for the user's mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-1.0&preserve-view=true). 
- Track the date/time of the last password change on a [user](/graph/api/resources/user?view=graph-rest-1.0&preserve-view=true).

## October 2019: New in preview

### Calendar
- Meeting organizers can [allow invitees to propose alternate meeting times](outlook-calendar-meeting-proposals.md). When receiving a meeting response that includes a proposed alternate time, the organizer can decide to accept the proposal and [update](/graph/api/event-update?view=graph-rest-beta&preserve-view=true) the meeting time.
- Programmatic calendar sharing is in closer parity with the Outlook user experience. In addition to tracking the current user's permissions and sharing status for a calendar:
  - For each [calendar](/graph/api/resources/calendar?view=graph-rest-beta&preserve-view=true), you can now manage the [permissions](/graph/api/resources/calendarpermission?view=graph-rest-beta&preserve-view=true) of each user with whom the calendar is shared. 
  - For each [mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta&preserve-view=true), you can now specify whether a delegate, mailbox owner, or both receive meeting messages and meeting responses. 
- Additional online meeting support:
  - For each **calendar**, specify the allowed and the default online meeting providers.
  - Create or update an [event](/graph/api/resources/event?view=graph-rest-beta&preserve-view=true) to be available online, and provide details for attendees to join the meeting online. 
  - In particular, use the new **onlineMeetingProvider** and **onlineMeeting** properties of **event** to set or identify Microsoft Teams as an online meeting provider, a workaround for a [known issue](known-issues.md#onlinemeetingurl-property-is-not-supported-for-microsoft-teams) with the **onlineMeetingUrl** property.

### Devices and apps
Intune [October](changelog.md#october-2019) updates

### Graph Explorer
Try the [next version of Graph Explorer](https://developer.microsoft.com/graph/graph-explorer/preview) and see handy contextual information such as permissions, access tokens, and SDK code snippets in the new **Permissions**, **Auth**, and **Snippets** tabs. Use the **Preview** slider to switch between the [production](https://developer.microsoft.com/graph/graph-explorer) and new preview version of Graph Explorer.

### Groups
- Use the **hideFromAddressLists** and **hideFromOutlookClients** properties to control the visibility of a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) in certain parts of the Outlook user interface or in an Outlook client.
- [Assign](/graph/api/group-assignlicense?view=graph-rest-beta&preserve-view=true) or remove licenses on users in a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true).

### Identity and access
- Use [conditional access policies](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true) to customize access rules for an organization. These rules consider signals about a user or a device identity, such as user or group membership, IP location, and behaviors such as attempts to access specific applications, and risky sign-in behaviors.
- Use [entitlement management](/graph/api/resources/entitlementmanagement-overview?view=graph-rest-beta&preserve-view=true) to manage access to groups, applications, and SharePoint Online sites for users in and outside of an organization.
- Add and remove [password credentials](/graph/api/resources/passwordcredential?view=graph-rest-beta&preserve-view=true) for [applications](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) and [service principals](/graph/api/resources/serviceprincipal?view=graph-rest-beta&preserve-view=true).
- Manage Azure AD B2C [trust framework policy keys](/graph/api/resources/trustframeworkkeyset?view=graph-rest-beta&preserve-view=true).
- Define Azure AD B2C [user flow](/graph/api/resources/identityuserflow?view=graph-rest-beta&preserve-view=true) policies for sign in, sign up, combined sign up and sign in, password reset, and profile update.
- Configure [information protection labels](/graph/api/resources/informationprotectionlabel?view=graph-rest-beta&preserve-view=true) to classify sensitivity for a user or tenant.
- Existing apps using APIs for identity risk events should transition to those for [risk detection](/graph/api/resources/riskdetection?view=graph-rest-beta&preserve-view=true) in Azure AD Identity Protection. See the related [blog post](https://developer.microsoft.com/graph/blogs/deprecatation-of-the-identityriskevents-api/) for more details and deprecation timeline.


### Mail
[Attach large files up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-beta&preserve-view=true) instance, by creating an [upload session](/graph/api/resources/uploadsession?view=graph-rest-beta&preserve-view=true), and iteratively uploading ranges of the file until all the bytes of the file have been uploaded. 

### Microsoft Graph Security API
- Preview integration with RSA NetWitness, ServiceNow, and Splunk, to correlate and synchronize [alerts](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#alerts), and improve threat protection and response.
- New triggers added to the [Microsoft Graph security connector](/connectors/microsoftgraphsecurity/) and [playbooks](/azure/security-center/security-center-playbooks) for Logic Apps and Flow. See [playbook examples](https://github.com/microsoftgraph/security-api-solutions/tree/master/Playbooks).
- Support for sending [threat indicators](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#threat-indicators-preview) to Microsoft Defender for Endpoint to block or alert on threats using their own intelligence sources. Integrations with partners like ThreatConnect enable customers to send indicators directly from threat intelligence and automation solutions. 

### Notifications
- [Create and send notifications](/graph/api/user-post-notifications?view=graph-rest-beta&preserve-view=true) to all app clients on all device endpoints that a user is signed in to, without having to manage user-delegated permissions.
- Use [target policy endpoints](/graph/api/resources/targetpolicyendpoints?view=graph-rest-beta&preserve-view=true) on user [notifications](/graph/api/resources/projectrome-notification) to specifically target notifications for the Windows, iOS, Android, or WebPush platform.
- Specify a [fall back policy](/graph/api/resources/fallbackpolicy?view=graph-rest-beta&preserve-view=true) on notifications for iOS endpoints, to send high-priority raw notifications that might not be delivered to devices otherwise due to platform specific restrictions, such as battery saver mode.

 
### PowerShell SDK 
Developers and IT professionals can note the coming of the [Microsoft Graph Powershell SDK](https://github.com/microsoftgraph/msgraph-sdk-powershell), which will generate modules that contain cmdlets to make Microsoft Graph REST API requests.

## September 2019: New and generally available

### Calendar, mail, and group
[Get the raw content of a file, or the MIME content of an item](/graph/api/attachment-get?view=graph-rest-1.0&preserve-view=true#get-the-raw-contents-of-a-file-or-item-attachment) that has been added as an [attachment](/graph/api/resources/attachment?view=graph-rest-1.0&preserve-view=true) to an [event](/graph/api/resources/event?view=graph-rest-1.0&preserve-view=true), [message](/graph/api/resources/message?view=graph-rest-1.0&preserve-view=true), or group [post](/graph/api/resources/post?view=graph-rest-1.0&preserve-view=true).

### Calendar, mail, Outlook task, personal contact
Use the [translateExchangeId](/graph/api/user-translateexchangeids?view=graph-rest-1.0&preserve-view=true) function to convert an Outlook item ID between supported [formats](/graph/api/user-translateexchangeids?view=graph-rest-1.0&preserve-view=true#exchangeidformat-values), including the Microsoft Graph default ID format and immutable ID format. 

The following resources support ID format conversion:

- [attachment](/graph/api/resources/attachment?view=graph-rest-1.0&preserve-view=true)
- [contact](/graph/api/resources/contact?view=graph-rest-1.0&preserve-view=true)
- [event](/graph/api/resources/event?view=graph-rest-1.0&preserve-view=true)
- [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-1.0&preserve-view=true)
- [message](/graph/api/resources/message?view=graph-rest-1.0&preserve-view=true)
- [outlookTask](/graph/api/resources/outlooktask?view=graph-rest-1.0&preserve-view=true)

### Mail
[Get the MIME content of a message](outlook-get-mime-message.md).

### Microsoft Graph Toolkit
Use the [Microsoft Graph Toolkit](toolkit/overview.md) to develop production apps that offer a consistent Microsoft 365 look-and-feel, and save time in authenticating and accessing data from Microsoft Graph.

## September 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
Intune [September](changelog.md#september-2019) updates

### Files
- Enhanced synchronization support:

  - Use the new **pendingOperations** property to identify operations that may affect the binary content of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true).
  - [Restore](/graph/api/driveitem-restore?view=graph-rest-beta&preserve-view=true) a deleted **driveItem**. 
- Use Secure Hash Algorithm (SHA-256) to enhance [file](/graph/api/resources/file?view=graph-rest-beta&preserve-view=true) data security and integrity.
- Get or set the orientation of a [photo](/graph/api/resources/photo?view=graph-rest-beta&preserve-view=true). Setting is supported on OneDrive Personal.

### Identity and access
- Use the new **identities** property and get the identities that a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) can use to sign in to an account. Identities can be provided by organizations, or social identity providers such as Facebook, Google, and Microsoft.
- Incremental enhancements for [synchronizing identities](/graph/api/resources/synchronization-overview?view=graph-rest-beta&preserve-view=true) in a cloud application for a tenant:

  - Store settings for a [synchronization job](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta&preserve-view=true)
  - Specify a reason to impose [quarantine](/graph/api/resources/synchronization-quarantine?view=graph-rest-beta&preserve-view=true) on a synchronization job

### Teamwork
Use the **General** channel of a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), or customize [member settings](/graph/api/resources/teammembersettings?view=graph-rest-beta&preserve-view=true) to let team members create private channels in the **team**.

### Users
- Get or update the identities with which a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) can sign in to an account. These identities can be provided by business organizations, or by social identity providers such as Facebook, Google, and Microsoft.
- Get or update a user's preferred date and time format [settings for the mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta&preserve-view=true).


## August 2019: New and generally available 

### Reports
- Get additional [mailbox usage data](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-1.0&preserve-view=true) about deleted item count and size.
- Track Microsoft 365 group IDs when [getting group activity details](/graph/api/reportroot-getoffice365groupsactivitydetail?view=graph-rest-1.0&preserve-view=true).
- Track the owner principal name when getting [OneDrive usage account detail](/graph/api/reportroot-getonedriveusageaccountdetail?view=graph-rest-1.0&preserve-view=true) and [SharePoint site usaged detail](/graph/api/reportroot-getsharepointsiteusagedetail?view=graph-rest-1.0&preserve-view=true).
- Get the number of active and inactive users on Microsoft 365, when [getting a report on user counts per Microsoft 365 service](/graph/api/reportroot-getoffice365servicesusercounts?view=graph-rest-1.0&preserve-view=true).

### Security
- Use the new [Microsoft Graph security API add-on for Splunk](https://aka.ms/graphsecuritysplunkaddon) to stream security alerts and insights from many partner products into Splunk, enabling easier real-time correlation of their security data. See the [announcement](https://techcommunity.microsoft.com/t5/Security-Privacy-and-Compliance/Introducing-the-new-Microsoft-Graph-Security-API-add-on-for/ba-p/815972) for more information. 
- [See a list of other solutions and connectors](security-integration.md) built by Microsoft or by Microsoft partners that connect with the security API and let you work with data in a unified format.


## August 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
Intune [August](changelog.md#august-2019) updates

### Education
- Associate a [teacher](/graph/api/resources/educationuser?view=graph-rest-beta&preserve-view=true) or [assignment](/graph/api/resources/educationassignment?view=graph-rest-beta&preserve-view=true) with a [grading rubric](/graph/api/resources/educationrubric?view=graph-rest-beta&preserve-view=true) to account for specific qualities and levels in assignments. An example of a quality is spelling and grammar, and examples of levels are "good" and "poor". You can further associate points and weights to the rubric. For more information, see [education rubric overview](education-rubric-overview.md).
- Evaluate an assignment and present the results in terms of [feedback](/graph/api/resources/educationfeedbackoutcome?view=graph-rest-beta&preserve-view=true), a [numeric grade](/graph/api/resources/educationpointsoutcome?view=graph-rest-beta&preserve-view=true), or [rubric](/graph/api/resources/educationrubricoutcome?view=graph-rest-beta&preserve-view=true).

### Files
Up till this point, you have been able to [follow](/graph/api/driveitem-follow?view=graph-rest-beta&preserve-view=true) a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true) for convenient access, or for faciliating actions such as move, copy, and save-as. You can now use the [unfollow](/graph/api/driveitem-unfollow?view=graph-rest-beta&preserve-view=true) action to stop following such drive items.

### Identity and access
- Providers of role-based access control (RBAC) can [manage roles](/graph/api/resources/rolemanagement?view=graph-rest-beta&preserve-view=true) in Azure Active Directory, by [defining role actions](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) that can be performed on specific resources, and [assigning roles](/graph/api/resources/unifiedroleassignment?view=graph-rest-beta&preserve-view=true) to users based on such role definitions, giving them the corresponding access to those resources.
- Administrators can [list access reviews](/graph/api/accessreview-list?view=graph-rest-beta&preserve-view=true) to efficiently facilitate reviewing group memberships, access to enterprise applications, and role assignments. Regular access reviews make sure only the appropriate people have continued access to resources in specific ways.

### Social and workplace intelligence
End users have been able to use the Microsoft 365 [MyAnalytics](social-intel-concept-overview.md#why-integrate-with-document-based-insights) app to get insights on managing time, collaboration at work, and work-life balance. Now, you can use the [analytics API](/graph/api/resources/social-overview?view=graph-rest-beta&preserve-view=true#help-users-gain-insights-into-their-work-patterns) to integrate data on time spent on work activities such as calls, chats, and email, to help improve a user's productivity and wellbeing. 


## July 2019: New and generally available 

### Example code snippets
There are now Objective-C code snippets in all API topics in the v1.0 and beta references. See the Objective-C example for [getting an event](/graph/api/event-get?view=graph-rest-1.0&preserve-view=true&tabs=objective-c#example).

### Group
- Use the [validateProperties](/graph/api/group-validateproperties?view=graph-rest-1.0&preserve-view=true) function to make sure the display name or mail nickname of an existing Microsoft 365 group complies with naming policies.
- Alternatively, before creating the group, you can use the [validateProperties](/graph/api/directoryobject-validateproperties?view=graph-rest-1.0&preserve-view=true) function for a [directoryObject](/graph/api/resources/directoryobject?view=graph-rest-1.0&preserve-view=true) to validate the names first.

### Identity and access
- Use [new delegated and application permissions](permissions-reference.md#organization-permissions), _Organization.Read.All_ and _Organization.ReadWrite.All_, to access an [organization](/graph/api/resources/organization?view=graph-rest-1.0&preserve-view=true) and related resources such as [subscribed SKUs](/graph/api/resources/subscribedsku?view=graph-rest-1.0&preserve-view=true).
- Use [new delegated and application permissions](permissions-reference.md#role-management-permissions), _RoleManagement.Read.Directory_ and _RoleManagement.ReadWrite.Directory_, for role-based access control (RBAC) for your company's directory:

  - Use the read/write permission to first [activate](/graph/api/directoryrole-post-directoryroles?view=graph-rest-1.0&preserve-view=true) a directory role. 
  - With the role activated, you can use the read permission to [read directory roles](/graph/api/directoryrole-list?view=graph-rest-1.0&preserve-view=true), [list role members](/graph/api/directoryrole-list-members?view=graph-rest-1.0&preserve-view=true), and [list directory role templates](/graph/api/directoryroletemplate-list?view=graph-rest-1.0&preserve-view=true). 
  - You can also use the read/write permission to [add](/graph/api/directoryrole-post-members?view=graph-rest-1.0&preserve-view=true) and [remove](/graph/api/directoryrole-delete-member?view=graph-rest-1.0&preserve-view=true) role members.


## July 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Calendar 
Use the new [places API](/graph/api/resources/place?view=graph-rest-beta&preserve-view=true) to make use of rich location types such as [room](/graph/api/resources/room?view=graph-rest-beta&preserve-view=true) and [room list](/graph/api/resources/roomlist?view=graph-rest-beta&preserve-view=true), as set up by Exchange Online administrators.

### Devices and apps
Intune [July](changelog.md#july-2019) updates

### Files 
Apply expiration date/time or password when [creating a sharing link](/graph/api/driveitem-createlink?view=graph-rest-beta&preserve-view=true) to a file, folder, or some other [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta&preserve-view=true).

### Identity and access
- Use [new application permission](./permissions-reference.md#access-reviews-permissions) _AccessReview.ReadWrite.Membership_ for CRUD operations on [access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta&preserve-view=true). 
- Use [new delegated and application permissions](permissions-reference.md#administrative-units-permissions), _AdministrativeUnit.Read.All_ and _AdministrativeUnit.ReadWrite.All_, to respectively read or write (including create, update, delete, or manage membership) [administrative unit](/graph/api/resources/administrativeunit?view=graph-rest-beta&preserve-view=true) resources.
- Use [new delegated and application permissions](permissions-reference.md#organization-permissions), _Organization.Read.All_ and _Organization.ReadWrite.All_, to access an [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true) and related resources such as a [subscribed SKU](/graph/api/resources/subscribedsku?view=graph-rest-beta&preserve-view=true).
- Use the new [discover](/graph/api/directorydefinition-discover?view=graph-rest-beta&preserve-view=true) function to find the latest directory [synchronization schema](/graph/api/resources/synchronization-synchronizationschema?view=graph-rest-beta&preserve-view=true), so as to sync directory objects, attributes, and their types to an app.
- Use [feature rollout policy](/graph/api/resources/featureRolloutPolicy?view=graph-rest-beta&preserve-view=true) to help tenant administrators to pilot features to specific groups before enabling them for entire organization.

### Mail
Use more granular application permission, _Mail.ReadBasic.All_, to read a user's mailbox except for any message body, preview body, attachments, and extended properties, and except for searching the mailbox. Now applicable to [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta&preserve-view=true) and [change tracking](delta-query-overview.md) for [message](/graph/api/resources/message?view=graph-rest-beta&preserve-view=true) and **mailFolder**.

### Reports
- Get additional [mailbox usage data](/graph/api/reportroot-getmailboxusagedetail?view=graph-rest-beta&preserve-view=true) about deleted item count and size.

### Teamwork
- [Install](/graph/api/resources/teamsappinstallation), [uninstall](/graph/api/userteamwork-delete-installedapps), [upgrade](/graph/api/userteamwork-teamsappinstallation-upgrade), and [list installed Microsoft Teams apps](/graph/api/userteamwork-list-installedapps) for a user.
- Use app-only access to read channel messages, replies to channel messages, and messages in a chat. [Request and get approval](teams-protected-apis.md) for such access.

## May - June, 2019: New and generally available

### Calendar, mail, and personal contacts
Exchange administrators can grant application permissions to an app and [limit the app to access only a subset of mailboxes](auth-limit-mailbox-access.md), instead of the default which is access to all mailboxes in the organization. Such restricted access would apply to any application permissions granted to the app for [calendars](permissions-reference.md#calendars-permissions), [contacts](permissions-reference.md#contacts-permissions), and [mail and mailbox settings](permissions-reference.md#mail-permissions). See related [blog announcement](https://developer.microsoft.com/graph/blogs/scoping-microsoft-graph-application-permissions-to-specific-exchange-online-mailboxes/).

### Mail
Use [mail search folders](/graph/api/resources/mailsearchfolder?view=graph-rest-1.0&preserve-view=true) API to search messages and access Outlook email search results. See related [blog announcement](https://developer.microsoft.com/graph/blogs/mail-search-folder-support-for-microsoft-graph-apis/).

### Postman
As an alternative to Graph Explorer, try the Microsoft Graph API on the [Microsoft Graph Postman collection](use-postman.md) to learn the API behavior and speed up app development.

### Tutorials
Try the new [tutorial to build a Java console app](/graph/tutorials/java) to get information about a user calendar.

### User
Administrators or users can [revoke](/graph/api/user-revokesigninsessions?view=graph-rest-1.0&preserve-view=true) all issued refresh tokens for a user. This is usually used to prevent apps on a lost or stolen device from accessing an organization's data.


## May - June, 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
- Intune [May](changelog.md#may-2019) updates 
- Intune [June](changelog.md#june-2019) updates

### Education
- Delta query for [educationSchool](/graph/api/resources/educationschool?view=graph-rest-beta&preserve-view=true).
- Delta query and property additions for [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta&preserve-view=true) and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta&preserve-view=true).

### Group
Get [sensitivity labels](/graph/api/resources/assignedlabel?view=graph-rest-beta&preserve-view=true) to help protect sensitive data of a Microsoft 365 group and meet compliance policies. These labels are [assignedLabel](/graph/api/resources/assignedlabel?view=graph-rest-beta&preserve-view=true) objects, published by administrators in Microsoft 365 Security & Compliance Center, as part of Microsoft Purview Information Protection capabilities. 

### Identity and access
- Get an instance of an [application](/graph/api/resources/applicationtemplate?view=graph-rest-beta&preserve-view=true), or add an instance from the Azure AD application gallery into your directory as a template.
- Get a log of all directory [provisioning events](/graph/api/resources/provisioningobjectsummary?view=graph-rest-beta&preserve-view=true) in a tenant.
- Get information about [detected user or sign-in risks](/graph/api/resources/riskdetection?view=graph-rest-beta&preserve-view=true) in an Azure AD environment. This risk detection functionality is part of Azure AD Identity Protection.

### Mail
Use more granular delegated permission, _Mail.ReadBasic_, to read a user's mailbox except for any message body, preview body, attachments, and extended properties, and except for searching the mailbox. Available to read methods of [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta&preserve-view=true), and [change tracking](delta-query-overview.md) for [message](/graph/api/resources/message?view=graph-rest-beta&preserve-view=true) and **mailFolder**.

### Microsoft Graph toolkit
The [Microsoft Graph toolkit](./toolkit/overview.md) is a set of framework-agnostic web components and helpers that provides convenience to authenticate and access data in Microsoft Graph. Because the Microsoft Graph toolkit is in preview status, use toolkit providers and components in only non-production apps.

### Reports
- Get [reports on the authentication methods](/graph/api/resources/authenticationmethods-usage-insights-overview?view=graph-rest-beta&preserve-view=true) adopted by users in an organization, such as self-service password rest and multi-factor authentication (MFA).

### Sites
Let users [follow](/graph/api/site-follow?view=graph-rest-beta&preserve-view=true) or [unfollow](/graph/api/site-unfollow?view=graph-rest-beta&preserve-view=true) SharePoint sites.

### Teamwork
- Host [images](/graph/api/resources/chatmessagehostedcontent) in Microsoft Teams [chat messages](/graph/api/resources/chatmessage).
- Support [configuring](/graph/api/resources/teamdiscoverysettings) how a private team can be discovered.


## January - April, 2019: New and generally available

[Microsoft Graph data connect](data-connect-concept-overview.md)

### Calendar
[Get free-busy schedule](outlook-get-free-busy-schedule.md)

### Identity and access
[Identity providers](/graph/api/resources/identityprovider?view=graph-rest-1.0&preserve-view=true)
[Improved auth guides](./auth/index.yml)
[Migrating apps from Azure AD Graph to Microsoft Graph](migrate-azure-ad-graph-planning-checklist.md)

### SDKs

[SDK guides](/graph/sdks/sdks-overview)

API snippets ([example](/graph/api/user-get?view=graph-rest-1.0&preserve-view=true&tabs=cs#sdk-sample-code))

### Security
[Tenant secure score](/graph/api/resources/securescore?view=graph-rest-1.0&preserve-view=true)

## January - April, 2019: New in preview

### Calendar, group, mail, to-do tasks
[Get raw/MIME content of file or item attachments](/graph/api/attachment-get?view=graph-rest-beta&preserve-view=true#get-the-raw-contents-of-a-file-or-item-attachment) in an event, message, Outlook task, or group post

### Change notifications
[Reduce missing change notifications](webhooks-lifecycle.md)

### Devices and apps
- Intune [January](changelog.md#january-2019) updates 
- Intune [February](changelog.md#february-2019) updates
- Intune [March](changelog.md#march-2019) updates
- Intune [April](changelog.md#april-2019) updates

### Files
[Sharing invitation](/graph/api/driveitem-invite?view=graph-rest-beta&preserve-view=true) includes expiration and password

### Financials
[Dynamics 365 Business Central](dynamics-business-central-concept-overview.md)

### Identity and access
[Access reviews](/graph/api/resources/accessreviews-root?view=graph-rest-beta&preserve-view=true) support application permissions
[Audit and sign-in logs](/graph/api/resources/azure-ad-auditlog-overview?view=graph-rest-beta&preserve-view=true)
[Custom sign-in and sign-up in Azure AD B2C](/graph/api/resources/trustframeworkpolicy?view=graph-rest-beta&preserve-view=true)
[Risky user](/graph/api/resources/riskyuser?view=graph-rest-beta&preserve-view=true) and [history](/graph/api/resources/riskyuserhistoryitem?view=graph-rest-beta&preserve-view=true)

### Mail
[Get MIME content of messages](outlook-get-mime-message.md)

### Reports
[Application sign-in reports](/graph/api/resources/applicationsigninsummary?view=graph-rest-beta&preserve-view=true)

### Security
[Security actions](/graph/api/resources/securityaction?view=graph-rest-beta&preserve-view=true)
[Threat indicators](/graph/api/resources/tiindicator?view=graph-rest-beta&preserve-view=true)

### Teamwork
[1:1 chats](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true)
[Shifts management](/graph/api/resources/shift?view=graph-rest-beta&preserve-view=true)

## See also
- See [what's currently new](whats-new-overview.md) in Microsoft Graph.
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
