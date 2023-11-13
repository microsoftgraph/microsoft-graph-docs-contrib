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
### Use SDKs
- The [Microsoft Graph Python SDK](https://github.com/microsoftgraph/msgraph-sdk-python) is now generally available. You can now access the beta and v1.0 endpoints of Microsoft Graph, with a fluent experience, designed to facilitate discoverability with the best features of the Python language. With simplified initialization and authentication, you can start making requests to Microsoft Graph with just 5 lines of code. The SDK also offers a built-in Retry-Handler that understands `429`, `503`, and `504` status codes. To learn more about the new Python SDK, see [Introducing the Microsoft Graph Python SDK](https://devblogs.microsoft.com/microsoft365dev/introducing-the-microsoft-graph-python-sdk/).

- The [Microsoft Graph PHP SDK v2.0](https://github.com/microsoftgraph/msgraph-sdk-php) is now generally available. The Microsoft Graph PHP SDK 2.0.0 offers best-in-class features to improve developer efficiency and code quality. By solving cross-cutting concerns like authentication, retry, and batching, the SDK gives you time back to focus on the design and value of your application. To learn more about the new PHP SDK, see [Write high quality code with the new Microsoft Graph PHP SDK v2](https://devblogs.microsoft.com/microsoft365dev/write-high-quality-code-with-the-microsoft-graph-php-sdk-v2/).

## October 2023: New and generally available

### Applications
Get or set a [remote desktop security configuration](/graph/api/resources/remoteDesktopSecurityConfiguration) to enable the Microsoft Entra ID [Remote Desktop Services (RDS) authentication protocol](/openspecs/windows_protocols/ms-rdpbcgr/dc43f040-d75d-49a9-90c6-0c9999281136), for Microsoft Entra ID to authenticate users to joined or hybrid joined devices. The configuration also enables single sign-on (SSO) when RDP clients connect to a Microsoft Entra joined or Microsoft Entra hybrid joined device. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=672c60ca-5ad4-4a2a-a158-37a999e02d27)_.

### Compliance | Subjects rights request
Specify or get the locations that should be searched by a specified KQL-based content query in a [subject rights request](/graph/api/resources/subjectRightsRequest), such as [mailboxes](/graph/api/resources/subjectRightsRequestAllMailboxLocation), [SharePoint, OneDrive, or Teams channels](/graph/api/resources/subjectRightsRequestAllSiteLocation). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=b0fdba93-efca-407d-b7fc-12e792ece3f6)_.

### Device and app management | Cloud printing
Include additional usage data in reports for [user-based print activity](/graph/api/resources/printUsageByUser) and for [printer-based print activity](/graph/api/resources/printusagebyprinter), such as the number of black-and-white print jobs and color print jobs completed, completed job count, and estimated number of single-sided or double-sided media sheets estimated. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=a7fdcd96-5c33-4208-9031-f8e62c27c1bf)_.

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
Administrators can customize the profile card for users in an organization by including or excluding built-in or custom attributes stored in Microsoft Entra ID, using the [profile card property](/graph/api/resources/profilecardproperty) API. _For more information, see [Add or remove custom attributes on a profile card using the profile card API](/graph/add-properties-profilecard), and the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=9b4cd317-0b73-42e2-991a-9654e292f8a0)_.

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


## September 2023: New and generally available

### Education
- Support app scenarios to [update](/graph/api/educationassignment-update) or [delete](/graph/api/educationassignment-delete) a [class assignment](/graph/api/resources/educationassignment) with grades for all users, or [delete](/graph/api/educationassignmentresource-delete) an [assignment resource](/graph/api/resources/educationassignmentresource) without a signed-in user. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6c7e1673-5f35-4df3-a099-7b29652546b1)_.
- Support app scenarios to [create](/graph/api/educationassignment-post-resource) or [set up a folder](/graph/api/educationassignment-setupresourcesfolder) for [assignment resources](/graph/api/resources/educationassignmentresource) without a signed-in user. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6c7e1673-5f35-4df3-a099-7b29652546b1)_.

### External data connections
As an option, include a label to indicate a [property](/graph/api/resources/externalconnectors-property) in the [schema](/graph/api/resources/externalconnectors-schema) for an [external connection](/graph/api/resources/externalconnectors-externalconnection) is an icon URL. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=429c062a-4b3f-4ea1-ab45-d399ff6818cc)_.

### Identity and access | Partner customer administration
A Microsoft indirect reseller partner administrator can approve or reject a [reseller delegated admin relationship](/graph/api/resources/resellerDelegatedAdminRelationship) between a partner and a customer, created for them by a Microsoft indirect provider partner. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=d68a33be-ca1b-461a-b215-69ba3144a394)_.

### Security | Threat intelligence
- Discover referential [host pairs](/graph/api/resources/security-hostpair) observed about a [host](/graph/api/resources/security-host). Host pairs include details such as information about HTTP redirections, consumption of CSS or images from a host, and more.
- Read [SSL certificate](/graph/api/resources/security-sslcertificate) data, and [SSL certificate data observered on a host](/graph/api/resources/security-hostsslcertificate). This data includes information about the SSL certificate and the relationship between the host and the SSL certificate.
- Read [subdomain](/graph/api/resources/security-subdomain) details for a host. For every subdomain, there can be a new set of IP addresses to which the domain resolves. This can be a great data source for finding related infrastructure.
- Read [WHOIS details](/graph/api/resources/security-whoisrecord) for a host. A common function of WHOIS in threat infrastructure is to identify or connect disparate entities based on unique data shared within the records.
- _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=541c1216-7521-4a72-ac7e-7c9ab9c46e69) for the preceding updates for threat intelligence_.

### Teamwork and communications | Apps
[Get](/graph/api/teamsappsettings-get) or [update](/graph/api/teamsappsettings-update) tenant-wide [settings](/graph/api/resources/teamsappsettings) to allow or disallow installing Teams apps that require resource-specific permissions in a chat or meeting. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=e0bcac9c-8d0e-4b23-8bbf-e50150848d35)_.

### Teamwork and communications | Calls and online meetings
[Set a status message](/graph/api/presence-setstatusmessage) about a user's [presence](/graph/api/resources/presence), such as their availability or user activity. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=bb202bf3-3029-4b9a-b1be-8df926dbb45e)_.

## September 2023: New in preview only

### Device and app management | Cloud PC
- [Get the overall connection quality reports](/graph/api/cloudpcreports-getconnectionqualityreports?view=graph-rest-beta&preserve-view=true) for all devices within a current tenant during a given time period, including metrics like the average round trip time, and real-time metrics such as last connection round trip time. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=be5ebbef-56ec-465d-afbe-aef899ab7e40)_.
- [Get a usage report on Frontline Cloud PC licenses](/graph/api/cloudpcreports-getFrontlineReport?view=graph-rest-beta&preserve-view=true), for data such as service plan ID, license count, and claimed license count, for real-time, 7-day, or 28-day trend. This is a Windows 365 Frontline-branded report which replaced the report to [get shared licenses of a service plan](/graph/api/cloudpcreports-getshareduselicenseusagereport?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=4d35dcf2-2f6c-413d-a4c4-c7770152a77b)_.

### Device and app management | Corporate management
Intune September updates for the beta version. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=bad338c7-9745-4ad7-a22f-f153a2dac4fc)_.

### Education
Support app scenarios to read or write an [education module](/graph/api/resources/educationModule?view=graph-rest-beta&preserve-view=true) or [learning resource](/graph/api/resources/educationModuleResource?view=graph-rest-beta&preserve-view=true) without a signed-in user. Scenarios can include [publishing](/graph/api/educationmodule-publish?view=graph-rest-beta&preserve-view=true), [pinning](/graph/api/educationmodule-pin?view=graph-rest-beta&preserve-view=true), or [unpinning](/graph/api/educationmodule-unpin?view=graph-rest-beta&preserve-view=true) a module, or [setting up a SharePoint folder](/graph/api/educationmodule-setupresourcesfolder?view=graph-rest-beta&preserve-view=true) for resources in a module. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=3e9f0779-4339-4ce3-afea-420ed8d03f50)_.

### Identity and access | Directory management
- [Update](/graph/api/organization-update?view=graph-rest-beta&preserve-view=true) for an [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true) whether it is synchronized with an on-premises directory. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=6e41743f-c9a0-4ee7-bcb8-a09ab773585b)_.
- Improve the security posture of the applications in your tenant by [configuring and limiting the certificate authority issuers](/graph/api/resources/certificatebasedapplicationconfiguration?view=graph-rest-beta&preserve-view=true) whose certificates can be assigned to your apps and service principals.

### Identity and access | Governance
- Get the date and time when an [access package subject](/graph/api/resources/accessPackageSubject?view=graph-rest-beta&preserve-view=true), which can be a user, service principal, or other entity, is to be blocked from access. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=cfb9bd20-e02b-4b0f-8f2a-7bf1aeec12e3)_.
- Check out the new documentation about [managing security alerts for Microsoft Entra roles](/graph/how-to-pim-alerts) using Privileged Identity Management APIs in Microsoft Graph.

### Identity and access | Identity and sign-in
You can now configure the Microsoft Entra ID [certificate-based authentication (CBA)](/graph/api/resources/x509CertificateAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true) policy to [send hints back to the client application](/graph/api/resources/x509certificateissuerhintsconfiguration?view=graph-rest-beta&preserve-view=true) that filters the certificates shown in the certificate picker when the user initiates sign-in using a certificate.

### Identity and access | Partner customer administration
When [creating](/graph/api/tenantrelationship-post-delegatedadminrelationships?view=graph-rest-beta&preserve-view=true) a [delegated admin relationship](/graph/api/resources/delegatedAdminRelationship?view=graph-rest-beta&preserve-view=true) between a partner and customer, set the duration by which the validity of the relationship is automatically extended. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=dc7a0ac7-c74b-4473-84d8-47e35c796ce3)_.

### Reports
The audit trail of all HTTP requests that Microsoft Graph received and processed for your tenant are now available through **Microsoft Graph activity logs**. Use Azure Monitor Logs to collect the logs and configure downstream destinations such as Azure Storage or stream with Azure Event Hubs to external security information and event management (SIEM) tools. For more information about Microsoft Graph activity logs, see [Access Microsoft Graph activity logs (preview)](/graph/microsoft-graph-activity-logs-overview).

### Security | Attack simulation and training
Create an [attack simulation](/graph/api/resources/simulation?view=graph-rest-beta&preserve-view=true) campaign with [landing page](/graph/api/resources/landingpage?view=graph-rest-beta&preserve-view=true), [login page](/graph/api/resources/loginpage?view=graph-rest-beta&preserve-view=true), [training](/graph/api/resources/training?view=graph-rest-beta&preserve-view=true), and [endUserNotifications](/graph/api/resources/endusernotification?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=3984db43-19bc-4257-bfc2-38c30d8462f3)_.

### Security | Records management
Support app scenarios to read any [retention event](/graph/api/resources/security-retentionevent?view=graph-rest-beta&preserve-view=true), [retention event type](/graph/api/resources/security-retentioneventtype?view=graph-rest-beta&preserve-view=true), and [retention label](/graph/api/resources/security-retentionlabel?view=graph-rest-beta&preserve-view=true) without a signed-in user. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=a8aa5b98-5fb3-4aba-acec-5e85209a4026)_.

### Teamwork and communications | Calls and online meetings 
- Get a [call recording](/graph/api/resources/callRecording?view=graph-rest-beta&preserve-view=true) or [call transcript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) that includes more identity information for the organizer, in addition to the existing meeting organizer ID for the [online meeting](/graph/api/resources/onlinemeeting?view=graph-rest-beta&preserve-view=true). Additional identity information may include data such as user display name, identity type, or tenant ID. _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=8a566519-e115-4081-8f15-bc92112e8d64)_.
- Get the preferred display name of a [participant](/graph/api/resources/participant?view=graph-rest-beta&preserve-view=true) in a [call](/graph/api/resources/call?view=graph-rest-beta&preserve-view=true). _See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=840dd994-b26b-48a2-8d7c-1b52ea86a45c)_.

### Workbooks and charts
Get tasks that a user has identified in association with a [comment](/graph/api/resources/workbookcomment?view=graph-rest-beta&preserve-view=true) or [reply for a comment](/graph/api/resources/workbookcommentreply?view=graph-rest-beta&preserve-view=true) in a [worksheet](/graph/api/resources/workbookWorksheet?view=graph-rest-beta&preserve-view=true):
- [List](/graph/api/workbookworksheet-list-tasks?view=graph-rest-beta&preserve-view=true) [document tasks](/graph/api/resources/workbookDocumentTask?view=graph-rest-beta&preserve-view=true) on a worksheet. 
- [List](/graph/api/workbookdocumenttask-list-changes?view=graph-rest-beta&preserve-view=true) the [changes of a document task](/graph/api/resources/workbookdocumenttaskchange?view=graph-rest-beta&preserve-view=true).

_See the [related changelog section](https://developer.microsoft.com/en-us/graph/changelog/?search=5472d980-5acf-4663-b1af-c7d22e28d1b3)_.


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
