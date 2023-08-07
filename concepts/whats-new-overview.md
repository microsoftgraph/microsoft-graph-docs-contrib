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

## July 2023: New and generally available

### Reports | Identity and access reports
- Get a report of the details of the [registered authentication methods](/graph/api/resources/userRegistrationDetails) for a specified user or users in an organization, such as multi-factor authentication, self-service password reset, and passwordless authentication.
- [Get](/graph/api/authenticationmethodsroot-usersregisteredbyfeature) a report of the number of users in an organization capable of each of multi-factor authentication, self-service password reset, and passwordless authentication in an organization.
- [Get](/graph/api/authenticationmethodsroot-usersregisteredbymethod) a report of the number of users in an organization registered for each authentication method.

### Security | Alerts and incidents
[Get](/graph/api/security-alert-get) the Azure AD user display name for a [user account](/graph/api/resources/security-useraccount) which is involved in [mailbox evidence](/graph/api/resources/security-mailboxevidence), [process evidence](/graph/api/resources/security-processevidence), or [user evidence](/graph/api/resources/security-userevidence) related to an [alert](/graph/api/resources/security-alert).

### Teamwork and communication | Apps
Support for granting scoped access (also known as [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)) to an [app installed](/graph/api/resources/teamsappinstallation) within a chat, team, or the personal scope of a user.

## July 2023: New in preview only

### Applications | Synchronization
[Perform](/graph/api/synchronization-synchronizationjob-post-bulkupload?view=graph-rest-beta&preserve-view=true) a [bulk upload](/graph/api/resources/synchronization-bulkupload?view=graph-rest-beta&preserve-view=true) as a [synchronization job](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta&preserve-view=true) to ingest data into the Azure AD synchronization service. 

### Identity and access | Directory management
- [Get](/graph/api/companysubscription-get?view=graph-rest-beta&preserve-view=true) or [list](/graph/api/directory-list-subscriptions?view=graph-rest-beta&preserve-view=true) one or more of the [commercial subscription](/graph/api/resources/companysubscription?view=graph-rest-beta&preserve-view=true) resources that an organization has acquired. A subscription resource contains the ID and part number of the [SKU](/graph/api/resources/subscribedsku?view=graph-rest-beta&preserve-view=true) that it is associated with.

### Identity and access | Network access
Use the APIs for Microsoft Entra Internet Access and Microsoft Entra Private Access to enable organizations to consolidate controls and configure unified identity and network access policies. Microsoft Entra Internet Access manages access to Microsoft 365, SaaS, and public internet apps while protecting users, devices, and data against internet threats. Microsoft Entra Private Access manages access to private apps hosted on-premises or in the cloud. The two products comprise Microsoft's Security Service Edge solution. For more information on the APIs, see [Secure access to cloud, public, and private apps using Microsoft Graph network access APIs](/graph/api/resources/networkaccess-global-secure-access-api-overview?view=graph-rest-beta&preserve-view=true).

### Mail
- [Mark an email as junk](/graph/api/message-markasjunk?view=graph-rest-beta&preserve-view=true), adds the sender to the list of blocked senders, and optionally, moves the message to the Junk Email folder.
- [Mark an email as not-junk](/graph/api/message-markasnotjunk?view=graph-rest-beta&preserve-view=true), removes the sender from the list of blocked senders, and optionally, moves the message to the Inbox.

### Reports | Identity and access reports
- [Get](/graph/api/azureadauthentication-get?view=graph-rest-beta&preserve-view=true) the monthly perentage of authentication availability on Azure Active Directory for a tenant. This data is the tenant's actual attainment as compared with the [Azure AD service-level agreement (SLA)](https://www.microsoft.com/licensing/docs/view/Service-Level-Agreements-SLA-for-Online-Services?lang=1) which commits to at least 99.99% authentication availability, as described in [Azure Active Directory SLA performance](/azure/active-directory/reports-monitoring/reference-azure-ad-sla-performance).
- Get a log of events for [traffic routed through the Global Secure Access services](/graph/api/resources/networkaccess-networkaccesstraffic?view=graph-rest-beta&preserve-view=true).
- Get all the report components in the Global Secure Access services, including [entities summaries](/graph/api/networkaccess-reports-entitiessummaries?view=graph-rest-beta&preserve-view=true), [cross-tenant summary](/graph/api/networkaccess-reports-getcrosstenantsummary?view=graph-rest-beta&preserve-view=true), [destination summaries](/graph/api/networkaccess-reports-getdestinationsummaries?view=graph-rest-beta&preserve-view=true), [device usage summary](/graph/api/networkaccess-reports-getdeviceusagesummary?view=graph-rest-beta&preserve-view=true), and [transaction summaries](/graph/api/networkaccess-reports-transactionsummaries?view=graph-rest-beta&preserve-view=true).

### Security | Alerts and incidents
- When [getting alerts](/graph/api/security-list-alerts_v2?view=graph-rest-beta&preserve-view=true), in addition to the previously supported types of detection technology and services, you can now identify Microsoft Defender for Cloud as the technology that detected a specific [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true), or service that created the alert. 
- When getting alerts, in addition to previously supported types of [evidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true), you can now differentiate evidence resources of the following types: [Amazon resource evidence](/graph/api/resources/security-amazonResourceEvidence?view=graph-rest-beta&preserve-view=true), [Azure resource evidence](/graph/api/resources/security-azureresourceevidence?view=graph-rest-beta&preserve-view=true), or [Google resource evidence](/graph/api/resources/security-googlecloudresourceevidence?view=graph-rest-beta&preserve-view=true).

### Sites and lists
- For a [standard web part](/graph/api/resources/standardwebpart?view=graph-rest-beta&preserve-view=true) contained in a rich text web part, get the ID of the container [text web part](/graph/api/resources/textwebpart?view=graph-rest-beta&preserve-view=true).
- [Create](/graph/api/sitepage-post-horizontalsection?view=graph-rest-beta&preserve-view=true), [update](/graph/api/horizontalsection-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/horizontalsection-delete?view=graph-rest-beta&preserve-view=true) a [horizontal section](/graph/api/resources/horizontalSection?view=graph-rest-beta&preserve-view=true) on a SharePoint [page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true).
- [Create](/graph/api/sitepage-post-verticalsection?view=graph-rest-beta&preserve-view=true), [update](/graph/api/verticalsection-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/verticalsection-delete?view=graph-rest-beta&preserve-view=true) a [vertical section](/graph/api/resources/verticalsection?view=graph-rest-beta&preserve-view=true) on a SharePoint [page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true).
- In addition to [getting](/graph/api/webpart-get?view=graph-rest-beta&preserve-view=true) or [listing](/graph/api/webpart-list?view=graph-rest-beta&preserve-view=true) one or more [web part](/graph/api/resources/webpart?view=graph-rest-beta&preserve-view=true) resources on a [page](/graph/api/resources/sitepage?view=graph-rest-beta&preserve-view=true), you can now [create](/graph/api/sitepage-create-webpart?view=graph-rest-beta&preserve-view=true), [update](/graph/api/webpart-update?view=graph-rest-beta&preserve-view=true), or [delete](/graph/api/webpart-delete?view=graph-rest-beta&preserve-view=true) a web part.

### Teamwork and communications | Devices
[Listing](/graph/api/teamworkdevice-list?view=graph-rest-beta&preserve-view=true) teamwork devices now includes SIP analog devices provisioned for the tenant. These SIP analog devices are legacy endpoints such as elevator phones, parking lot phones, or factory floor devices, registered with Microsoft Teams through the SIP Gateway.

### Users
Associate users or groups as sponsors for a guest user's privileges in the tenant and keep the guest user's information and access updated. You can [assisn a sponsor](/graph/api/user-post-sponsors?view=graph-rest-beta&preserve-view=true), [list sponsors](/graph/api/user-list-sponsors?view=graph-rest-beta&preserve-view=true), and [remove a sponsor](/graph/api/user-delete-sponsors?view=graph-rest-beta&preserve-view=true).

## June 2023: New and generally available

### Application
Address an [application](/graph/api/resources/application) by a new alternate key, **appId**. The Azure portal refers to **appId** as the application (client) ID.

### Device and app management | Cloud printing
- [Get](/graph/api/print-list-recentshares) a list of [printer share](/graph/api/resources/printershare) resources recently used by the signed-in user.
- Get or update additional [printer share viewpoint](/graph/api/resources/printerShareViewpoint), which is [printer share](/graph/api/resources/printershare) data specific to the signed-in user.

### Device and app management | Corporate management
Intune [June updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-06-01&to=2023-06-30) for the v1.0 version.

### Files
- [Assign a sensitivity label](/graph/api/driveitem-assignsensitivitylabel) to a file in OneDrive or SharePoint. 
- [Extract one or more sensitivity labels](/graph/api/driveitem-extractsensitivitylabels) assigned to a file or folder and update the metadata of that [drive item](/graph/api/resources/driveitem) with the latest details of the assigned label.

### Identity and access | Governance
- Manage [settings for emails](/graph/api/resources/emailSettings) sent out from an email-specific [task](/graph/api/resources/identitygovernance-task) within a lifecycle [workflow](/graph/api/resources/identitygovernance-workflow). For more information on how lifecycle workflows enable organizations to automate basic lifecycle processes for their users, see [Overview of lifecycle workflows APIs](/graph/api/resources/identitygovernance-lifecycleworkflows-overview).
- Configure [group peer outlier insights](/graph/api/resources/groupPeerOutlierRecommendationInsightSettings) that help reviewers make decisions for an [access review schedule definition](/graph/api/resources/accessreviewscheduledefinition) based on the access that the user's peers have.

### Search | Query
- Optionally specify the sortable or refinable properties to collapse in the results of a [search request](/graph/api/resources/searchrequest).
- To include multiple search requests in a single request body in the request body, [use the Microsoft Graph Search API to pass multiple search requests](/graph/search-concept-multiplerequest). 
- Guest users can search for items within SharePoint or OneDrive that have been shared with them.

### Security | eDiscovery
Initiate an [export](/graph/api/security-ediscoveryreviewset-export) from a [ediscoveryReviewSet](/graph/api/resources/security-ediscoveryreviewset), or an [export](/graph/api/security-ediscoveryreviewsetquery-export) from a [ediscoveryReviewSetQuery](/graph/api/resources/security-ediscoveryreviewsetquery).

### Security | Threat intelligence
GA release of the [threat intelligence API](/graph/api/resources/security-threatintelligence-overview) for Microsoft Defender Threat Intelligence. The API identifies adversaries and their operations, accelerates detection and remediation, and enhances your security investments and workflows. For more information about the earlier public preview release, see [What's new: APIs in Microsoft Graph](https://techcommunity.microsoft.com/t5/microsoft-defender-threat/what-s-new-apis-in-microsoft-graph/ba-p/3780350).

### Teamwork and communications | Calls and online meetings
- Track the freeze duration data of a video stream in a [media stream](/graph/api/resources/callRecords-mediaStream).
- Check whether the forward error correction (FEC) was used at some point during a [session](/graph/api/resources/callrecords-session).
- Represent CPU capabilities and name of the device used by a caller or callee [participant endpoint](/graph/api/resources/callrecords-participantendpoint) in a [call](/graph/api/resources/call) or [online meeting](/graph/api/resources/onlinemeeting).
- [Listing](/graph/api/callrecords-session-list) sessions in a [call record](/graph/api/resources/callrecords-callrecord) can now identify those sessions that took place for testing purpose.

### Teamwork and communications | Employee learning
Get or specify whether a [learning provider](/graph/api/resources/learningProvider) can ingest learning course activity records, including [learning activity assigned to a user](/graph/api/resources/learningassignment) and [learning course activity initiated by a user](/graph/api/resources/learningselfinitiatedcourse).

### Teamwork and communications | Messaging
[List](/graph/api/teams-list) all the teams in an organization.

## June 2023: New in preview only

### Applications
[Get](/graph/api/application-get?view=graph-rest-beta&preserve-view=true) or [set](/graph/api/application-update?view=graph-rest-beta&preserve-view=true) the [authentication behavior](/graph/api/resources/authenticationBehaviors?view=graph-rest-beta&preserve-view=true) of an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true), for whether to remove the `email` claim from tokens sent to the application when the domain of the email address cannot be verified.

### Device and app management | Cloud PC
- [Running health checks for on premises network connection](/graph/api/cloudpconpremisesconnection-runhealthcheck?view=graph-rest-beta&preserve-view=true) can now identify the following error conditions:
  - Your current network configuration does not allow the use of UDP direct connect Session Traversal Utilities for NAT (TURN). 
  - Your current network configuration does not allow the use of UDP direct connect Session Traversal Utilities for NAT (STUN and TURN). 
  
  In either case, the condition does not prevent the use of Cloud PCs but can prevent optimal performance. Consider your own network configuration policies before you apply changes.
- Use a new correlation ID to uniquely identify [health check item-related activities](/graph/api/resources/cloudPcOnPremisesConnectionHealthCheck?view=graph-rest-beta&preserve-view=true), which is part of the [health check status details](/graph/api/resources/cloudpconpremisesconnectionstatusdetails?view=graph-rest-beta&preserve-view=true) returned from getting the [Azure resource information used to establish Azure network connectivity for Cloud PCs](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true). 
- [Create](/graph/api/cloudpcreports-post-exportjobs?view=graph-rest-beta&preserve-view=true) or [get](/graph/api/cloudpcexportjob-get?view=graph-rest-beta&preserve-view=true) a report of Cloud PCs that failed to connect because licenses were unavailable.
- [Get the provisioned Cloud PCs](/graph/api/cloudpc-getprovisionedcloudpcs?view=graph-rest-beta&preserve-view=true) of a specific service plan for users in a certain Azure AD user gorup.
- [Validate multiple Cloud PCs in bulk](/graph/api/cloudPC-validateBulkResize?view=graph-rest-beta&preserve-view=true), and [resize](/graph/api/cloudPC-bulkResize?view=graph-rest-beta&preserve-view=true) them based on the individual [validation result](/graph/api/resources/cloudPcResizeValidationResult?view=graph-rest-beta&preserve-view=true). For related administrator's information about resizing Cloud PCs using the Mirosoft Intune admin center, see [resize a Cloud PC](/windows-365/enterprise/resize-cloud-pc).
- Get the power state of a Cloud PC for shift workers, differentiating the Cloud PC as `running` or `poweredOff`. For more general information on Cloud PCs for shift and part-time workers, see the blog post for [Windows 365 Frontline](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/windows-365-frontline-is-now-generally-available/ba-p/3859292).

### Device and app management | Cloud printing
Get a report of [printer usage](/graph/api/resources/printUsageByPrinter?view=graph-rest-beta&preserve-view=true) or [archived print job](/graph/api/resources/archivedPrintJob?view=graph-rest-beta&preserve-view=true) that includes the printer name. Previously the printer is identified by only its printer ID in the report.

### Device and app management | Corporate management
Intune [June updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-06-01&to=2023-06-30) for the beta version.

### Identity and access | Directory management
- Manage an [administrative unit](/graph/api/resources/administrativeunit?view=graph-rest-beta&preserve-view=true), [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true), [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true), or [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) that is a member of a restricted management administrative unit by requiring a role scoped to the restricted administrative unit. The calling app must be assigned the Directory.Write.Restricted permission. For delegated scenarios, the administrators must also be explicitly assigned supported roles at the restricted administrative unit scope.
- [Get](/graph/api/organization-get?view=graph-rest-beta&preserve-view=true) the last time a password sync request was received for an [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
- Use the application permission `RoleManagementPolicy.Read.AzureADGroup` or `RoleManagementPolicy.ReadWrite.AzureADGroup` to read or update policies in [Privileged Identity Management for groups](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview?view=graph-rest-beta&preserve-view=true), without a signed-in user.
- Use Privileged Identity Management (PIM) to govern privileged access and limit excessive access to Azure AD roles. See more information on the [governance capabilities of PIM for Azure AD roles APIs in Microsoft Graph](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta&preserve-view=true).
- Use security [alerts](/graph/api/resources/unifiedrolemanagementalert?view=graph-rest-beta&preserve-view=true) built into [Privileged Identity Management (PIM) for Azure AD roles](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta&preserve-view=true) to detect suspicious or unsafe settings for Azure AD roles in your tenant. For more information on the types of security alerts, see [Get security alerts for Azure AD roles](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta&preserve-view=true#get-security-alerts-for-azure-ad-roles).
- [Get](/graph/api/accesspackagesubject-get?view=graph-rest-beta&preserve-view=true) information about a [subject](/graph/api/resources/accesspackagesubject?view=graph-rest-beta&preserve-view=true) who requests or is assigned an [access package](/graph/api/resources/accesspackage?view=graph-rest-beta&preserve-view=true); the subject can be a user or some entity from a connected organization who is not yet in the tenant. 
- [Update](/graph/api/accesspackagesubject-update?view=graph-rest-beta&preserve-view=true) the lifecycle status of a user for an access package, if the user is a guest. 

### Identity and access | Identity and sign-in
- Get or update [sign-in preferences](/graph/api/resources/signInPreferences?view=graph-rest-beta&preserve-view=true) for [authentication](/graph/api/resources/authentication?view=graph-rest-beta&preserve-view=true), for the default second-factor method used by the user when signing in.
- [Get](/graph/api/organizationalbranding-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/organizationalbranding-update?view=graph-rest-beta&preserve-view=true) [content options to be customized](/graph/api/resources/contentCustomization?view=graph-rest-beta&preserve-view=true) throughout the authentication flow for a tenant.

### Reports | Identity and access reports
Get the date/time for the last update of a user's [registration record for authentication methods](/graph/api/resources/userRegistrationDetails?view=graph-rest-beta&preserve-view=true), including which methods are registered and which features the user is registered and capable of (such as multi-factor authentication, self-service password reset, and passwordless authentication).

### Security | Alerts and incidents
Depending on the type of [alert evidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true), such as [mailbox evidence](/graph/api/resources/security-mailboxevidence?view=graph-rest-beta&preserve-view=true), [process evidence](/graph/api/resources/security-processevidence?view=graph-rest-beta&preserve-view=true), or [user evidence](/graph/api/resources/security-userevidence?view=graph-rest-beta&preserve-view=true), get the display name of the related [user account](/graph/api/resources/security-useraccount?view=graph-rest-beta&preserve-view=true) as part of the rich data about each artifact involved in an [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true).

### Security | Threat intelligence
[List subdomains](/graph/api/security-host-list-subdomains?view=graph-rest-beta&preserve-view=true) for a [host](/graph/api/resources/security-host?view=graph-rest-beta&preserve-view=true).

### Tasks and plans
Specify or get [checklist items](/graph/api/resources/plannerchecklistitems?view=graph-rest-beta&preserve-view=true) as a [completion requirement](/graph/api/resources/plannerchecklistrequirement?view=graph-rest-beta&preserve-view=true) for a [Planner task](/graph/api/resources/plannertask?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings
Get information about a [webinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) virtual event on Microsoft Teams, including the following:
- [Presenter](/graph/api/resources/virtualeventpresenter?view=graph-rest-beta&preserve-view=true) information and [details](/graph/api/resources/virtualeventpresenterdetails?view=graph-rest-beta&preserve-view=true).
- [Registration information](/graph/api/resources/virtualeventregistration?view=graph-rest-beta&preserve-view=true), [registration questions](/graph/api/resources/virtualeventregistrationquestion?view=graph-rest-beta&preserve-view=true), and [registrant information and status](/graph/api/resources/virtualeventregistrant?view=graph-rest-beta&preserve-view=true).
- [Attendance report](/graph/api/resources/meetingattendancereport?view=graph-rest-beta&preserve-view=true) for a [session](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) in the webinar.
- Create an [online meeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta&preserve-view=true) with the option to anonymize attendees' identity in the meeting.
- From a PSTN call log, [get](/graph/api/callrecords-callrecord-getpstncalls?view=graph-rest-beta&preserve-view=true) the IPv4 or IPv6 of a client's local address, and public IP address that can be used to determine the client's location.

### Teamwork and communications | Messaging
- [Get](/graph/api/channel-get?view=graph-rest-beta&preserve-view=true) summary information about a channel, including the number of guests, members, owners, and an indicator for members from other tenants.



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
