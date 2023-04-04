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

## March 2023: New and generally available

### Applications
Specify if an [application](/graph/api/resources/application) requires [Azure AD to verify signed authentication requests](/graph/api/resources/requestSignatureVerification).

### Compliance | Records management
Use the [Microsoft Purview records management API](/graph/api/resources/security-recordsmanagement-overview) to help organizations manage the retention and deletion of data to meet legal obligations and compliance regulations.

### Identity and access | Directory management
[Get](/graph/api/directoryobject-delta) newly created, updated, or deleted directory objects without performing a full read of the entire set of [Active Directory objects](/graph/api/resources/directoryobject) in an organization. 

### Identity and access | Identity and sign-in
- Enable or disable the following authentication methods for specific users and groups in a tenant:
  - [SMS authentication method configuration](/graph/api/resources/smsauthenticationmethodconfiguration)
  - [Software OAuth authentication method configuration](/graph/api/resources/softwareoathauthenticationmethodconfiguration)
  - [Voice authentication method configuration](/graph/api/resources/voiceauthenticationmethodconfiguration)
- Organizations can use [policies to enforce best practices for apps using application authentication methods](/graph/api/resources/applicationauthenticationmethodpolicy). Such policies can apply to [specific applications and service principals](/graph/api/resources/appmanagementpolicy), or to [all applications and service principals in a tenant](/graph/api/resources/tenantappmanagementpolicy).

### Teamwork and communications | Calls and online meetings
When [getting a call record](/graph/api/callrecords-callrecord-get), you can get up to 60 sessions for that call record on the same page.

### Teamwork and communications | Messaging
To export Teams content, you can [list](/graph/api/teamwork-list-deletedteams) teams that have been deleted, and [get](/graph/api/deletedteam-getallmessages) 1:1 chats, group chats, meeting chats, and channel messages of a [deleted team](/graph/api/resources/deletedTeam). For more information, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

### Users
Use the last interactive and non-interactive sign-in date/time values of users' [signInActivity](/graph/api/resources/signInActivity) to [manage inactive accounts](/azure/active-directory/reports-monitoring/howto-manage-inactive-user-accounts).


## March 2023: New in preview only

### Device and app management | Cloud PC
- [Getting](/graph/api/cloudpc-getcloudpclaunchinfo?view=graph-rest-beta&preserve-view=true) [launch information](/graph/api/resources/cloudpclaunchinfo?view=graph-rest-beta&preserve-view=true) about a signed-in user's connecting to a Cloud PC now includes whether the Cloud PC supports switch functionality, and reason if it doesn't, such as not meeting requirements for the version of the operating system, CPU, or RAM.
- Include [provisioning type](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true#cloudpcprovisioningtype-values) (dedicated or shared) and [management service type](/graph/api/resources/cloudpconpremisesconnection?view=graph-rest-beta&preserve-view=true#cloudpcmanagementservice-values) (for example, Windows 365, Power Automate) as criteria for a Windows 365 service plan.

### Device and app management | Corporate management
Intune [March updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-03-01&to=2023-03-31) for the beta version.

### Files
When [sharing an item on OneDrive for Business](/graph/api/driveitem-createlink?view=graph-rest-beta&preserve-view=true) with other users, include the option to notify those users by email.

### Identity and access | Governance
- Use [access package assignment workflow extension](/graph/api/resources/accessPackageAssignmentWorkflowExtension?view=graph-rest-beta&preserve-view=true) or [access package assignment request workflow extension](/graph/api/resources/accessPackageAssignmentRequestWorkflowExtension?view=graph-rest-beta&preserve-view=true) to define the configuraton of logic apps. Integrate logic apps with entitlement management to broaden your governance workflows beyond the core entitlement management use cases.
- Get information about all [custom extension calls](/graph/api/resources/customextensioncalloutinstance?view=graph-rest-beta&preserve-view=true) that were made during the [access package assignment](/graph/api/resources/accessPackageAssignment?view=graph-rest-beta&preserve-view=true) and [access package assignment request](/graph/api/resources/accessPackageAssignmentRequest?view=graph-rest-beta&preserve-view=true) workflows.
- Manage [settings for emails](/graph/api/resources/emailSettings?view=graph-rest-beta&preserve-view=true) sent out from an email-specific [task](/graph/api/resources/identitygovernance-task?view=graph-rest-beta&preserve-view=true) within a lifecycle [workflow](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true). For more information on how lifecycle workflows enable organizations to automate basic lifecycle processes for their users, see [Overview of lifecycle workflows APIs](/graph/api/resources/identitygovernance-lifecycleworkflows-overview?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- In addition to approving authentication push notifications on Microsoft Authenticator, specified users, groups, or administrative units can approve authentication push notifications on a supported Microsoft 365 app (Outlook mobile app). Administrators can [get](/graph/api/microsoftauthenticatorauthenticationmethodconfiguration-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/microsoftauthenticatorauthenticationmethodconfiguration-update?view=graph-rest-beta&preserve-view=true) the **companionAppAllowedState** property of the [feature settings](/graph/api/resources/microsoftAuthenticatorFeatureSettings?view=graph-rest-beta&preserve-view=true) of a [Microsoft Authenticator authentication method configuration](/graph/api/resources/microsoftauthenticatorauthenticationmethodconfiguration?view=graph-rest-beta&preserve-view=true) policy. When enabling this capability, administrators can set the Microsoft 365 app name in the **clientAppName** property for the [Microsoft Authenticator authentication method](/graph/api/resources/microsoftauthenticatorauthenticationmethod?view=graph-rest-beta&preserve-view=true) registered to the user.
- Get and manage the profile data of users from an external Azure AD tenant as [inbound shared user profile](/graph/api/resources/inboundshareduserprofile?view=graph-rest-beta&preserve-view=true), and profile data of users in the current tenant, who have shared their data with an external Azure AD tenant, as [outbound shared user profile](/graph/api/resources/outboundshareduserprofile?view=graph-rest-beta&preserve-view=true). Such capability is part of [Azure Active Directory (Azure AD) B2B direct connect](/azure/active-directory/external-identities/b2b-direct-connect-overview) which enables users from two Azure AD organizations to work together using their home credentials without having to be added to each other's organizations as guests.

### Industry data ETL
Debut of the [industry data API](industrydata-concept-overview.md), which is a multi-vertical, cross-industry, ETL (Extract-Transform-Load) platform. Use the API to combine data from multiple sources into a single Azure Data Lake data store, normalize the data, and export it in outbound flows. Use it to assist with monitoring and troubleshooting. Get statistics after the data is processed. 

### Reports | Azure AD activity reports
- View in an Azure AD activity report if any [sign-in](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) activity in your directory is triggered by a match of a condition about Microsoft admin portals, that is [satisfied in a rule](/graph/api/resources/conditionalaccessrulesatisfied?view=graph-rest-beta&preserve-view=true) in the [applied conditional access policy](/graph/api/resources/appliedconditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- View in an Azure AD activity report the result of enforcing a custom [authentication strength](/graph/api/resources/authenticationStrength?view=graph-rest-beta&preserve-view=true) in an [applied conditional access policy](/graph/api/resources/appliedconditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).

### Reports | Microsoft 365 usage reports
[Get counts for different types of teams](/graph/api/reportroot-getTeamsTeamCounts?view=graph-rest-beta&preserve-view=true) in an instance of Microsoft Teams, such as public teams, active public teams, private teams, and active private teams.

### Security | eDiscovery
[Get](/graph/api/security-caseoperation-get?view=graph-rest-beta&preserve-view=true) the [metadata of an eDiscovery export file](/graph/api/resources/security-ediscoveryexportfilemetadata?view=graph-rest-beta&preserve-view=true), such as the download URL, file name and size.

### Security | Threat intelligence
Debut of the [threat intelligence API](/graph/api/resources/security-api-overview?view=graph-rest-beta&preserve-view=true#threat-intelligence-preview) that identifies adversaries and their operations, accelerates detection and remediation, and enhances your security investments and workflows. 

### Sites and lists
When [sharing an item on SharePoint](/graph/api/listitem-createlink?view=graph-rest-beta&preserve-view=true) with other users, include the option to notify those users by email.

### Tasks and plans
Use the following **delta** functions of the corresponding type of Planner resources to get the newly created, updated, or deleted resources without having to perform a full read of the entire resource collection:
- [Delta](/graph/api/plannerplan-delta?view=graph-rest-beta&preserve-view=true) function for Planner [plans](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) in either a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) or a Planner [roster](/graph/api/resources/plannerroster?view=graph-rest-beta&preserve-view=true).
- [Delta](/graph/api/plannerbucket-delta?view=graph-rest-beta&preserve-view=true) function for Planner [buckets](/graph/api/resources/plannerbucket?view=graph-rest-beta&preserve-view=true) in a Planner plan.
- [Delta](/graph/api/plannertask-delta?view=graph-rest-beta&preserve-view=true) function for Planner [tasks](/graph/api/resources/plannertask?view=graph-rest-beta&preserve-view=true) in either a Planner plan or assigned to the signed-in user.


## February 2023: New and generally available

### Identity and access | Directory management
- Following the Zero Trust cybersecurity model, Microsoft partners can use [granular delegated admin privileges (GDAP)](/graph/api/resources/delegatedadminrelationships-api-overview) to carry out administrative tasks with least-privileged access to their customer tenants, to avoid potential security exposures. Instead of requesting Global Administrator role as in the past, partners request specific roles for customer tenant administration for a definite amount of time, and their customers must explicitly grant the least-privileged access to them.
- [Get](/graph/api/onpremisesdirectorysynchronization-get) or [update](/graph/api/onpremisesdirectorysynchronization-update) the configuration and features of [on-premises directory synchronization](/graph/api/resources/onpremisesdirectorysynchronization) set up for an organization, including [configuration to prevent accidental deletion](/graph/api/resources/onPremisesAccidentalDeletionPrevention).

### Identity and access | Governance
As part of a [policy for access package assignment](/graph/api/resources/accesspackageassignmentpolicy), you can specify or get the required regex pattern for a requestor to answer an [access package question](/graph/api/resources/accesspackagequestion).

### Identity and access | Identity and sign-in
Specify in a [cross-tenant access policy](/graph/api/resources/crosstenantaccesspolicy) to enable B2B collaboration across Azure clouds, for example, between tenants in Azure Commercial and Azure Government clouds, and between Azure Commercial and Azure China clouds.

### Search | Query
Use application permissions and [search all shared or private content on SharePoint sites](search-concept-searchall.md) that belong to the app owner in a specified region. 

### Security | Attack simulation and training
- [Get](/graph/api/simulationautomation-get) information about an [automated attack simulation](/graph/api/resources/simulationautomation) for a tenant.
- [Get a list](/graph/api/simulationautomation-list-runs) of [automated runs of attack simulation](/graph/api/resources/simulationautomationrun) for a tenant.

### Teamwork and communications | Calls and online meetings
Support a user to participate in an [online meeting](/graph/api/resources/onlinemeeting) in the [role](/graph/api/resources/meetingparticipantinfo#onlinemeetingrole-values) of a coorganizer.

### Teamwork and communications | Messaging
Support an [Azure Communication Services user](/graph/api/resources/azureCommunicationServicesUserConversationMember) to participate in a [team](/graph/api/resources/team), [channel](/graph/api/resources/channel), or [chat](/graph/api/resources/chat).

### To-do tasks
Use a single POST operation to [attach a file](/graph/api/todotask-post-attachments) up to 3MB to a [to-do task](/graph/api/resources/todotask), or [create an upload session](/graph/api/taskfileattachment-createuploadsession) to iteratively upload portions of a file up to 25 MB total size to attach it to a task.

## February 2023: New in preview only

### Applications | Synchronization
When calling the [synchronization API](/graph/api/resources/synchronization-overview?view=graph-rest-beta&preserve-view=true), take advantage of more granular permissions designed for reading or writing synchronization data, by using the new permission, `Synchronization.Read.All`, instead of the higher privileged permission, `Directory.Read.All`, and `Synchronization.ReadWrite.All` instead of `Directory.Read.All`.

### Calendar
Request a lower privileged delegated or application permission, `Calendar.ReadBasic` or `Calendars.ReadBasic.All`, for most read operations for events in calendars, with or without a signed-in user present. These permissions allow an app to read events of all calendars, except for properties such as body, attachments, and extensions. For the exact list of operations that support these permissions, see the [February updates](https://developer.microsoft.com/en-us/graph/changelog/?search=&from=2023-02-01&to=2023-02-28) for **Calendar**.

### Device and app management | Cloud PC
- Enable or disable single sign-on as part of a [Cloud PC provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) and of the [tenant-wide organization settings for Cloud PC](/graph/api/resources/cloudpcorganizationsettings?view=graph-rest-beta&preserve-view=true). When single sign-on is enabled, Windows 365 users can use single sign-on to authenticate to Azure Active Directory (Azure AD) with passwordless options (for example, FIDO keys) to access their Cloud PCs. 
- Organizations with frontline workers can provision Cloud PCs as a shared [type](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true#cloudpcprovisioningtype-values) and subscribe to a [shared-use service plan](/graph/api/resources/cloudPcSharedUseServicePlan?view=graph-rest-beta&preserve-view=true) for Cloud PCs.
- Allow a customer to select from a list of [supported region groups](/graph/api/resources/cloudpcsupportedregion?view=graph-rest-beta&preserve-view=true#cloudpcregiongroup-values) when provisioning a Cloud PC, so to put that Cloud PC in one of the regions belonging to that group based on resource status. 

### Device and app management | Device updates
Use the Windows Update for Business deployment service to manage Windows 11 feature updates and [driver updates](windowsupdates-manage-driver-update.md). When enrolled devices are scanned for updates, the deployment service identifies applicable, better drivers for each device. The service collects such driver information in a [catalog](/graph/api/resources/windowsupdates-catalog?view=graph-rest-beta&preserve-view=true) for [approval](/graph/api/resources/windowsupdates-contentapproval?view=graph-rest-beta&preserve-view=true), and schedules approved [catalog content](/graph/api/resources/windowsupdates-catalogcontent?view=graph-rest-beta&preserve-view=true) for [deployment](/graph/api/resources/windowsupdates-deployment?view=graph-rest-beta&preserve-view=true).

### Identity and access | Directory management
Debut of pronouns support for organizations - use [pronouns settings](/graph/api/resources/pronounsSettings?view=graph-rest-beta&preserve-view=true) to _programmatically_ [manage the support of pronouns in an organization](pronouns-configure-pronouns-availability.md). Find out about how _administrators_ can [enable or disable pronouns in the Microsoft 365 admin center](/microsoft-365/admin/add-users/turn-pronouns-on-or-off?view=o365-worldwide&preserve-view=true), and the availability timeline for pronouns on profile cards on the [Microsoft 365 roadmap](https://www.microsoft.com/en-us/microsoft-365/roadmap?filters=&searchterms=pronouns).  

### Identity and access | Directory management
Use the [recommendation](/graph/api/resources/recommendation?view=graph-rest-beta&preserve-view=true) resource as personalized and actionable insights to implement Azure Active Directory best practices. Recommendations help to ensure your tenant is in a secure and healthy state and maximize the value of the features available in Azure AD. For more information about how recommendations work in Azure AD for administrators, see [What are Azure Active Directory recommendations](/azure/active-directory/reports-monitoring/overview-recommendations).

### Identity and access | Governance
[List](/graph/api/workflow-list-executionscope?view=graph-rest-beta&preserve-view=true) the users who are in the scope of the execution conditions of a [workflow](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true).

### Security | Attack simulation and training
- [Create](/graph/api/attacksimulationroot-post-simulation?view=graph-rest-beta&preserve-view=true) or [delete](/graph/api/simulation-delete?view=graph-rest-beta&preserve-view=true) an [attack simulation](/graph/api/resources/simulation?view=graph-rest-beta&preserve-view=true) campaign for a tenant. Prior to this update, apps can only [get](/graph/api/simulation-get?view=graph-rest-beta&preserve-view=true) information about an existing simulation campaign.
- [Get](/graph/api/payload-get?view=graph-rest-beta&preserve-view=true) information about an attack simulation training. Get further [details](/graph/api/resources/payloaddetail?view=graph-rest-beta&preserve-view=true) such as the content and coachmarks.

### Teamwork and communications | Calls and online meetings
Identify the reasons for shared content or video from an [online meeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta&preserve-view=true) [participant](/graph/api/resources/meetingparticipants?view=graph-rest-beta&preserve-view=true) being [restricted](/graph/api/resources/onlineMeetingRestricted?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging
Support an [Azure Communication Services user](/graph/api/resources/azureCommunicationServicesUserConversationMember?view=graph-rest-beta&preserve-view=true) to participate in a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), or [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).


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
