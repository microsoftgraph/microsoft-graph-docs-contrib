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

## December 2022: New and generally available

### Applications
Address a [service principal](/graph/api/resources/serviceprincipal) by a new alternate key, **appId**.

### Identity and access | Directory management
- Address an [device](/graph/api/resources/device) by a new alternate key, **deviceId**. 
- Address an [directoryRole](/graph/api/resources/directoryrole) by a new alternate key, **roleTemplateId**.

### Identity and access | Identity and sign-in
Identify [at-risk service principals](/graph/api/resources/riskyserviceprincipal) in an organization with Azure AD, which continually [detects and evaluates risks](/graph/api/resources/serviceprincipalriskdetection) based on various signals and machine learning. You can [confirm](/graph/api/riskyserviceprincipal-confirmcompromised) if an at-risk service principal is indeed compromised, upon which Microsoft would disable that service principal object. You can [dismiss](/graph/api/riskyserviceprincipal-dismiss) the risk of an at-risk service principal. And, you can [list the risk history](/graph/api/riskyserviceprincipal-list-history) of a service principal.


## December 2022: New in preview only

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
