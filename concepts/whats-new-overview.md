---
title: "What's new in Microsoft Graph"
description: "View highlights of what's new in Microsoft Graph in the past two months, what was added in earlier releases, and how you can share your ideas."
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

In addition, find out about new documentation and learning resources for released features and APIs.

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.

## December 2023: New and generally available

### Teamwork and communications | Calls and online meetings
- Communications servers can publish [deltaParticipants](/graph/api/resources/deltaParticipants) notifications for the creation, update, or deletion of a [participant](/graph/api/resources/participant) in a [call](/graph/api/resources/call). For more information, see [JSON payload examples](/graph/api/application-post-calls#notification---roster) of notifications with delta roster disabled or enabled.

## December 2023: New in preview only

### Employee experience | Employee engagement
Create and get a Viva Engage community that is a central place for conversations, files, events, and updates for people sharing a common interest or goal. Use the Viva Engage API for the following scenarios:

- [Create a community](/graph/api/employeeexperience-post-communities?view=graph-rest-beta&preserve-view=true)
- [Poll for community creation status](/graph/api/engagementasyncoperation-get?view=graph-rest-beta&preserve-view=true)
- [Get a community](/graph/api/community-get?view=graph-rest-beta&preserve-view=true)

## November 2023: New and generally available

### Files
[Manage the lifecycle](/purview/auto-apply-retention-labels-scenario) of a [drive item](/graph/api/resources/driveitem) (file or folder) by using retention labels:
- [Get](/graph/api/driveitem-getretentionlabel) or [set](/graph/api/driveitem-setretentionlabel) a [retention label](/graph/api/resources/itemRetentionLabel).
- [Lock or unlock](/graph/api/driveitem-lockorunlockrecord) a file for [record versioning](/purview/record-versioning).
- [Remove](/graph/api/driveitem-removeretentionlabel) a retention label.

_See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=7a1f574d-c348-4ce9-890b-d55b58b2d3c2)_.

### Groups
Delete a group's [profile photo](/graph/api/resources/profilephoto). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=14a780c1-d222-4476-acc0-3c5b6425f040)_.

### Identity and access | Directory management
Optionally define a [directory extension](/graph/api/resources/extensionProperty) as a multi-valued custom property that contains a collection of objects, instead of a single-valued property. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=3c89fe6e-3b38-4168-952d-d4291e651e5a)_.

### Security | Alerts and incidents
Get an [alert](/graph/api/resources/security-alert) that can indicate a more specific workload protection plan of Microsoft Defender for Cloud as the source that detected notable component or activity. Examples of more specific workload protection plans include Microsoft Defender for IoT, Microsoft Defender for Servers, Microsoft Defender for Storage. _For a list of the additional possible sources, see the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=2ffb1cd0-70b3-4e55-b5f2-b7e6c7d62dc2)_.

### Use SDKs
- The [Microsoft Graph Python SDK](https://github.com/microsoftgraph/msgraph-sdk-python) is now generally available. You can now access the beta and v1.0 endpoints of Microsoft Graph, with a fluent experience, designed to facilitate discoverability with the best features of the Python language. With simplified initialization and authentication, you can start making requests to Microsoft Graph with just 5 lines of code. The SDK also offers a built-in Retry-Handler that understands `429`, `503`, and `504` status codes. To learn more about the new Python SDK, see [Introducing the Microsoft Graph Python SDK](https://devblogs.microsoft.com/microsoft365dev/introducing-the-microsoft-graph-python-sdk/).
- The [Microsoft Graph PHP SDK v2.0](https://github.com/microsoftgraph/msgraph-sdk-php) is now generally available. The Microsoft Graph PHP SDK 2.0.0 offers best-in-class features to improve developer efficiency and code quality. By solving cross-cutting concerns like authentication, retry, and batching, the SDK gives you time back to focus on the design and value of your application. To learn more about the new PHP SDK, see [Write high quality code with the new Microsoft Graph PHP SDK v2](https://devblogs.microsoft.com/microsoft365dev/write-high-quality-code-with-the-microsoft-graph-php-sdk-v2/).

### Users
Delete the [profile photo](/graph/api/resources/profilephoto) of a signed-in user. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=14a780c1-d222-4476-acc0-3c5b6425f040)_.

## November 2023: New in preview only

### Device and app management | Cloud PC
[Get the access state of a Frontline Cloud PC](/graph/api/cloudPC-getFrontlineCloudPcAccessState?view=graph-rest-beta&preserve-view=true) to determine whether the Frontline Cloud PC is accessible to a user. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=cc0c0a79-a691-485d-b47c-8b0ee543ae6c)_.

### Reports | Identity and access reports
As a [best practice recommended for a Microsoft Entra tenant](/graph/api/resources/recommendation?view=graph-rest-beta&preserve-view=true), [get](/graph/api/recommendation-tenantsecurescores?view=graph-rest-beta&preserve-view=true) historical [Secure Score data for the tenant](/graph/api/resources/tenantsecurescore?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=514fea21-1d51-46d0-847e-9c2cce1d6c58)_.

### Identity and access | Identity and sign-in
- When configuring [strong authentication for an X.509 certificate](/graph/api/resources/x509CertificateAuthenticationModeConfiguration?view=graph-rest-beta&preserve-view=true), set up an [X509 certificate rule](/graph/api/resources/x509CertificateRule?view=graph-rest-beta&preserve-view=true) that binds a specific issuer subject, policy OID, or both to an authentication mode and affinity level. For example, bind the policy OID "1.32.132.343" to multifactor authentication mode and high affinity level. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=a12d7c65-273a-4409-8c5a-a8be6bcfd005)_.
- Support the [Platform Credential authentication method](/graph/api/resources/platformCredentialAuthenticationMethod?view=graph-rest-beta&preserve-view=true) for users on Mac OS devices to authenticate in Microsoft Entra ID. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=bbb70cce-5252-40be-a7ca-7c29f99cb089)_.
- Get or update [default identity provider configuration for invitation redemption](/graph/api/resources/defaultInvitationRedemptionIdentityProviderConfiguration?view=graph-rest-beta&preserve-view=true) to set redemption flow settings for Microsoft Entra ID B2B collaboration. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=8b9db607-81fd-4013-af2e-d6cb709aa313)_.

### Identity and access | Network access
Get [connectivity configuration details](/graph/api/resources/networkaccess-branchConnectivityConfiguration?view=graph-rest-beta&preserve-view=true) for customers' [device link](/graph/api/resources/networkaccess-devicelink?view=graph-rest-beta&preserve-view=true) equipment at a [branch site](/graph/api/resources/networkaccess-branchSite?view=graph-rest-beta&preserve-view=true) connected to Global Secure Access services. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=2204d5d0-d3cf-4850-88b7-d430ab574476)_.

### Identity and access | Multicloud permissions management
Use the [permissions management APIs](/graph/api/resources/permissions-management-api-overview?view=graph-rest-beta&preserve-view=true) to programmatically discover, remediate, and monitor permissions in your multicloud infrastructure. For each supported cloud infrastructure, you can:

- Discover identities, resources, and permissions that identities have to resources, and what actions the identities can perform.
- Request permissions for identities to resources; Grant or reject permissions requests.
- Generate reports relating to permissions and resources.

Permissions Management currently supports only Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP) cloud infrastructures. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=&filterBy=Multicloud%20permissions%20management&from=2023-10-31&to=2023-11-29)_.

### Reports  | Identity and access reports

- Trace the [history of activities related to managing custom security attributes](/graph/api/resources/customsecurityattributeaudit?view=graph-rest-beta&preserve-view=tru), such as attribute definitions and assigning attribute values to principals. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=12c7039e-92e7-44a4-87ad-63e1fc8c76a2)_.
- When using Microsoft Entra ID for customers, you can now get [daily](/graph/api/resources/dailyuserinsightmetricsroot) and [monthly](/graph/api/resources/monthlyuserinsightmetricsroot) insights into user activities on apps registered in your tenant. The reports include data about sign ups, active users, and multifactor authentication completions. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=921c584a-25cb-4561-936f-966ba933cccd)_.

### Tasks and plans
Create a [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) in a user [container](/graph/api/resources/plannerplancontainer?view=graph-rest-beta&preserve-view=true) to let individual users track their own tasks. This provides the flexibility for users to share or collaborate on their personal plans, or subsequently upgrade their personal plans into group-based plans by [moving](/graph/api/plannerplan-movetocontainer?view=graph-rest-beta&preserve-view=true) the plan from the user container to a group container. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6adca1d6-2cd3-4b37-8ffa-7985afbbbade)_.

### Teamwork and communications | Messaging
[Remove](/graph/api/chat-removeallaccessforuser?view=graph-rest-beta&preserve-view=true) a user's access to a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=97796aeb-ce8a-4650-ad43-6872cee08c4d)_.

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
