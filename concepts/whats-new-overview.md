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
