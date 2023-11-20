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

### Identity and access | Directory management
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

The Permissions Management currently supports only Microsoft Azure, Amazon Web Services (AWS), and Google Cloud Platform (GCP) cloud infrastructures. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=&filterBy=Multicloud%20permissions%20management&from=2023-10-31&to=2023-11-29)_.

### Reports  | Identity and access reports

Trace the [history of activities related to managing custom security attributes](/graph/api/resources/customsecurityattributeaudit?view=graph-rest-beta&preserve-view=tru), such as attribute definitions and assigning attribute values to principals. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=12c7039e-92e7-44a4-87ad-63e1fc8c76a2)_.

### Tasks and plans
Create a [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) in a user [container](/graph/api/resources/plannerplancontainer?view=graph-rest-beta&preserve-view=true) to let individual users track their own tasks. This provides the flexibility for users to share or collaborate on their personal plans, or subsequently upgrade their personal plans into group-based plans by [moving](/graph/api/plannerplan-movetocontainer?view=graph-rest-beta&preserve-view=true) the plan from the user container to a group container. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6adca1d6-2cd3-4b37-8ffa-7985afbbbade)_.

### Teamwork and communications | Messaging
[Remove](/graph/api/chat-removeallaccessforuser?view=graph-rest-beta&preserve-view=true) a user's access to a [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=97796aeb-ce8a-4650-ad43-6872cee08c4d)_.

## October 2023: New and generally available

### Applications
Get or set a [remote desktop security configuration](/graph/api/resources/remoteDesktopSecurityConfiguration) to enable the Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136), for Microsoft Entra ID to authenticate users to joined or hybrid joined devices. The configuration also enables single sign-on (SSO) when RDP clients connect to a Microsoft Entra joined or Microsoft Entra hybrid joined device. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=672c60ca-5ad4-4a2a-a158-37a999e02d27)_.

### Compliance | Subjects rights request
Specify or get the search locations for a KQL-based content query in a [subject rights request](/graph/api/resources/subjectRightsRequest), such as [mailboxes](/graph/api/resources/subjectRightsRequestAllMailboxLocation), [SharePoint, OneDrive, or Teams channels](/graph/api/resources/subjectRightsRequestAllSiteLocation). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=b0fdba93-efca-407d-b7fc-12e792ece3f6)_.

### Device and app management | Cloud printing
Include additional usage data in reports for [user-based print activity](/graph/api/resources/printUsageByUser) and for [printer-based print activity](/graph/api/resources/printusagebyprinter). Examples of usage data include the number of completed black-and-white print jobs and estimated number of single-sided media sheets. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=a7fdcd96-5c33-4208-9031-f8e62c27c1bf)_.

### External data connections
Optionally, specify the ID of a Teams app in an [external connection](/graph/api/resources/externalconnectors-externalconnection) in the **connectorId** property. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=c2ff9eba-b803-4557-94dd-282769f9016e)_.

### Identity and access | Directory management
List the [credentials of local administrator accounts of devices](/graph/api/resources/devicelocalcredentialinfo) that are associated with a [deleted item](/graph/api/resources/directory), such as being a member of a deleted [group](/graph/api/resources/group) or owned ore registered by a deleted [user](/graph/api/resources/user).  _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=260527bf-7d67-490c-a732-521065078560)_.

### Identity and access | Governance
Use [Privileged Identity Management (PIM) for groups](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview) to govern how principals are assigned membership or ownership of security and Microsoft 365 groups, such as the following capabilities:
  - Providing principals just-in-time membership or ownership of groups.
  - Assigning principals temporary membership or ownership of groups.

_See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=8c297080-41ec-436e-9907-f0f8a3ee036d)_.

### Identity and access | Partner customer administration
Specify automatic extension of a [delegated admin relationship between a partner and customer](/graph/api/resources/delegatedAdminRelationship) or [between a Microsoft indirect reseller partner and a customer](/graph/api/resources/resellerDelegatedAdminRelationship) when the relationship expires. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=80aec7bf-811c-46b9-bb97-9db36b618153)_.

### People and workplace intelligence | People admin settings
Administrators can customize the profile card for users in an organization by using the [profile card property](/graph/api/resources/profilecardproperty) API on built-in or custom attributes stored in Microsoft Entra ID. _For more information, see [Add or remove custom attributes on a profile card using the profile card API](/graph/add-properties-profilecard), and the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=9b4cd317-0b73-42e2-991a-9654e292f8a0)_.

### Security | Attack simulation and training
- [Create](/graph/api/attacksimulationroot-post-simulation), [update](/graph/api/simulation-update), or [delete](/graph/api/simulation-delete) an [attack similation training campagin](/graph/api/resources/simulation) for a tenant.
- Get [end user notifications](/graph/api/resources/endusernotification), [landing page](/graph/api/resources/landingpage), [login page](/graph/api/resources/loginpage), [payload detail](/graph/api/resources/payload) (such as message content, links, or attachment in a phishing email), [training](/graph/api/resources/training), and [training language detail](/graph/api/resources/traininglanguagedetail) for the attack simulation.
- _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=f790cf16-283a-4044-bd17-a6a7c72bdf38) for the preceding updates for attack simulation and training_.

### Security | Threat intelligence
Discover information about each [host port](/graph/api/resources/security-hostPort) that Microsoft Defender Threat Intelligence has observed on a [host](/graph/api/resources/security-host), including each [host port component](/graph/api/resources/security-hostportcomponent) that has been seen on a port, the number of times that a port has been observed in all the scans, and what each [host port banner](/graph/api/resources/security-hostportbanner) response contains. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6f211280-ef11-487b-b98a-fe6eec64ea7b)_.

### Teamwork and communications | Calls and online meetings
- [Get](/graph/api/calltranscript-get) a specific [transcript](/graph/api/resources/calltranscript) or all the transcripts of an [online meeting](/graph/api/resources/onlinemeeting). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=09e85d0c-2551-40e7-a037-1f36fade0b0b)_.
- When [getting](/graph/api/channel-get) information about a [channel](/graph/api/resources/channel), [optionally include](/graph/api/channel-get#use-select-for-better-performance) [summary](/graph/api/resources/channelSummary) information about the channel. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=be053170-38ef-40c5-a2bd-4e1e2db5a1e7)_.


## October 2023: New in preview only

### Device and app management | Cloud PC
- [Running health checks for on premises network connection](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) can now identify the active domain join check failed because the server is not operational. This could be due to network connectivity issues, DNS resolution issues, or problems with the domain controller itself. Make sure that the domain controller is running, and that ports that are required to be open between the client computer and the domain controller are enabled and not blocked. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=80297d8c-5457-4fa1-be2b-769490b818bb)_.
- Support app scenarios to [create](/graph/api/virtualendpoint-post-onpremisesconnections?view=graph-rest-beta&preserve-view=true), [update](/graph/api/cloudpconpremisesconnection-update?view=graph-rest-beta&preserve-view=true), [delete](/graph/api/cloudpconpremisesconnection-delete?view=graph-rest-beta&preserve-view=true), or [run health checks](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) on a [Cloud PC on-premises connection](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true) without a signed-in user. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=cd506d8f-eddb-4d12-859d-a7894452989e)_.
- Get a [raw real-time remote connection report](/graph/api/cloudpcreports-getrawremoteconnectionreports?view=graph-rest-beta&preserve-view=true) for a Cloud PC without any calculation or aggregation. As an alternative, you can download the report by an [export job](/graph/api/resources/cloudpcexportjob?view=graph-rest-beta&preserve-view=true).  _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=12f93700-b666-4c5c-b569-7db20691c5b3)_.
- Get a specified [Cloud PC FrontLine service plan](/graph/api/resources/cloudPcFrontLineServicePlan?view=graph-rest-beta&preserve-view=true), or all such service plans that a customer has purchased. This type of Windows 365 Frontline-branded service plan provides an allotment of three Cloud PCs for an administrator to provision, for three active users at a time without assigning a Cloud PC to only one specific user. The service plan allows provisioned users to time-share, and let customers deploy a larger number of users. Customers using the pre-existing [Cloud PC shared-use service plan](/graph/api/resources/cloudPcSharedUseServicePlan?view=graph-rest-beta&preserve-view=true) should have switched to the Cloud PC Frontline service plan by October 8, 2023, as that plan has been deprecated and has stopped returning data since October 8, 2023.  _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=79a3808d-826e-431f-9288-58144fe2776a)_.

### Device and app management | Corporate management
Intune [October updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-10-01&to=2023-10-31) for the beta version. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=79a3808d-826e-431f-9288-58144fe2776a)_.

### Identity and access | Directory management
Create and manage a [certificate-based application configuration](/graph/api/resources/certificateBasedApplicationConfiguration?view=graph-rest-beta&preserve-view=true) which represents a chain of trust that specifies allowed root and intermediate certificate authorities. This configuration is part of an [app management policy](/graph/api/resources/appmanagementpolicy?view=graph-rest-beta&preserve-view=true) used for [application authentication](/graph/api/resources/applicationauthenticationmethodpolicy?view=graph-rest-beta&preserve-view=true) and can restrict app developers to use only those certificates issued by authorities defined in the configuration. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=c022f245-26dd-4fd7-81f2-4297d5a37c6d)_.

### Identity and access | Identity and sign-in
- Get or specify in a Microsoft Entra native [X-509 certificate-based authentication configuration](/graph/api/resources/x509CertificateAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true), whether Certificate Authority issuer hints are sent back to the client side to filter the certificates shown in certificate picker. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=26b75f44-c3c8-4300-a98b-2ee6c75e6146)_.
- Get or update a setting that requires a user to perform registration after snoozing 3 times, as part of an [authentication methods registration campaign](/graph/api/resources/authenticationMethodsRegistrationCampaign?view=graph-rest-beta&preserve-view=true) to [enforce registration at sign-in time](/graph/api/resources/registrationenforcement?view=graph-rest-beta&preserve-view=true) in an [authentication policy](/graph/api/resources/authenticationmethodspolicy?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=bfd0c33a-af94-4b3a-867d-a904d3986b0f)_.

### Reports and audit | Identity and access reports
Get Microsoft Entra [service activity](/graph/api/resources/serviceActivity?view=graph-rest-beta&preserve-view=true) reports for sign-in [metrics](/graph/api/resources/serviceActivityValueMetric?view=graph-rest-beta&preserve-view=true) at minute-level granularity on four scenarios: 
- [Get metrics for MFA sign-in success](/graph/api/serviceactivity-getmetricsformfasigninsuccess?view=graph-rest-beta&preserve-view=true) and [get metrics for MFA sign-in failure](/graph/api/serviceactivity-getmetricsformfasigninfailure?view=graph-rest-beta&preserve-view=true)
- [Get metrics for conditional access managed devices sign-in success](/graph/api/serviceactivity-getmetricsforconditionalaccessmanageddevicessigninsuccess?view=graph-rest-beta&preserve-view=true)
- [Get metrics for conditional access compliant devices sign-in success](/graph/api/serviceactivity-getmetricsforconditionalaccesscompliantdevicessigninsuccess?view=graph-rest-beta&preserve-view=true)
- [Get metrics for SAML sign-in success](/graph/api/serviceactivity-getmetricsforsamlsigninsuccess?view=graph-rest-beta&preserve-view=true)

Tenant administrators can monitor the sign-in activities within their tenant across those four sign-in scenarios, and feed these metrics to their own monitoring or alerting system as appropriate. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=dbe9e6bd-57ef-430e-b9a6-3669472052da)_.


### Sites and lists
[List items](/graph/api/recyclebin-list-items?view=graph-rest-beta&preserve-view=true) in the [recycle bin](/graph/api/resources/recycleBin?view=graph-rest-beta&preserve-view=true) of a SharePoint [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=3fdf4a8e-0ba7-405a-91d1-f7b4b6ac6983)_.

### Teamwork and communications | Calls and online meetings
Use the following new functions for virtual events that are of the [webinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) type:
 - [Get](/graph/api/virtualeventwebinar-getbyuseridandrole?view=graph-rest-beta&preserve-view=true) the virtual event webinars where a specified user is an organizer or coorganizer.
 - [Get](/graph/api/virtualeventwebinar-getbyuserrole?view=graph-rest-beta&preserve-view=true) the virtual event webinars where the signed-in user is an organizer or coorganizer.
 - _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=2b4cd7a5-2095-4ca3-80b0-da96df6c7e90)_.


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
