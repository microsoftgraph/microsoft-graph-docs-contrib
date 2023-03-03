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

## February 2023: New and generally available

### Identity and access | Directory management
Following the Zero Trust cybersecurity model, Microsoft partners can use [granular delegated admin privileges (GDAP)](/graph/api/resources/delegatedadminrelationships-api-overview) to carry out administrative tasks with least-privileged access to their customer tenants, to avoid potential security exposures. Instead of requesting Global Administrator role as in the past, partners request specific roles for customer tenant administration for a definite amount of time, and their customers must explicitly grant the least-privileged access to them.

### Identity and access | Governance
As part of a [policy for access package assignment](/graph/api/resources/accesspackageassignmentpolicy), you can specify or get the required regex pattern for a requestor to answer an [access package question](/graph/api/resources/accesspackagequestion).

### Teamwork and communications | Calls and online meetings
A user can participate in an [online meeting](/graph/api/resources/onlinemeeting) in the [role](/graph/api/resources/meetingparticipantinfo#onlinemeetingrole-values) of a coorganizer.

### To-do tasks
Use a single POST operation to [attach a file](/graph/api/todotask-post-attachments) up to 3MB to a [to-do task](/graph/api/resources/todotask), or [create an upload session](/graph/api/taskfileattachment-createuploadsession) to iteratively upload portions of a file up to 25 MB total size to attach it to a task.



## February 2023: New in preview only

### Device and app management | Cloud PC
- Enable or disable single sign-on as part of a [Cloud PC provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true) and of the [tenant-wide organization settings for Cloud PC](/graph/api/resources/cloudpcorganizationsettings?view=graph-rest-beta&preserve-view=true). When single sign-on is enabled, Windows 365 users can use single sign-on to authenticate to Azure Active Directory (Azure AD) with passwordless options (for example, FIDO keys) to access their Cloud PCs. 
- Organizations with frontline workers can provision Cloud PCs as a shared [type](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true#cloudpcprovisioningtype-values) and subscribe to a [shared-use service plan](/graph/api/resources/cloudPcSharedUseServicePlan?view=graph-rest-beta&preserve-view=true) for Cloud PCs.

### Device and app management | Device updates
Use the Windows Update for Business deployment service to manage Windows 11 feature updates and [driver updates](windowsupdates-manage-driver-update.md). When enrolled devices are scanned for updates, the deployment service identifies applicable, better drivers for each device. The service collects such driver information in a [catalog](/graph/api/resources/windowsupdates-catalog?view=graph-rest-beta&preserve-view=true) for [approval](/graph/api/resources/windowsupdates-contentapproval?view=graph-rest-beta&preserve-view=true), and schedules approved [catalog content](/graph/api/resources/windowsupdates-catalogcontent?view=graph-rest-beta&preserve-view=true) for [deployment](/graph/api/resources/windowsupdates-deployment?view=graph-rest-beta&preserve-view=true).

### Identity and access | Directory management
Use the [recommendation](/graph/api/resources/recommendation?view=graph-rest-beta&preserve-view=true) resource as personalized and actionable insights to implement Azure Active Directory best practices. Recommendations help to ensure your tenant is in a secure and healthy state and maximize the value of the features available in Azure AD. For more information about how recommendations work in Azure AD for administrators, see [What are Azure Active Directory recommendations](/azure/active-directory/reports-monitoring/overview-recommendations).

### Identity and access | Governance
[List](/graph/api/workflow-list-executionscope?view=graph-rest-beta&preserve-view=true) the users who are in the scope of the execution conditions of a [workflow](/graph/api/resources/identitygovernance-workflow?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings
Identify the reasons for shared content or video from an [online meeting](/graph/api/resources/onlineMeeting?view=graph-rest-beta&preserve-view=true) [participant](/graph/api/resources/meetingparticipants?view=graph-rest-beta&preserve-view=true) being [restricted](/graph/api/resources/onlineMeetingRestricted?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Messaging
An [Azure Communication Services](/azure/communication-services/overview) user can participate in a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), [channel](/graph/api/resources/channel?view=graph-rest-beta&preserve-view=true), or [chat](/graph/api/resources/chat?view=graph-rest-beta&preserve-view=true).


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
