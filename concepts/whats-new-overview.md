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


## April 2023: New and generally available

### Device and app management | Browser management
Administrators can use the [Edge API in Microsoft Graph](/graph/api/resources/browser-edge-api-overview) in an app to manage an organization's browser site lists for Internet Explorer (IE) mode that reside in the cloud, much like the way they can do it in the [Microsoft 365 admin center](https://admin.microsoft.com/). With proper permissions, the app can create a [browser site list](/graph/api/resources/browsersitelist), add a [browser site](/graph/api/resources/browsersite) and [shared cookie](/graph/api/resources/browsersharedcookie), and [publish](/graph/api/browsersitelist-publish) the site list for Microsoft Edge to download.

## April 2023: New in preview only

### Identity and access | Governance
Use the new `LifecycleWorkflows.ReadWrite.All` delegated or application permission to [resume](/graph/api/identitygovernance-taskprocessingresult-resume?view=graph-rest-beta&preserve-view=true) a task-processing result that's in progress.

### Reports | Azure AD activity reports
List any [managed identity](/graph/api/resources/managedIdentity?view=graph-rest-beta&preserve-view=true) used for a [sign-in](/graph/api/resources/signin?view=graph-rest-beta&preserve-view=true) activity, including the identity type and associated Azure Resource Manager (ARM) resource ID.

### Teamwork and communications | Calls and online meetings
[Get the metadata content](/graph/api/calltranscript-get?view=graph-rest-beta&preserve-view=true#example-6-get-a-calltranscript-metadatacontent) of a [call transcript](/graph/api/resources/calltranscript?view=graph-rest-beta&preserve-view=true) in a stream.

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
- Use [access package assignment workflow extension](/graph/api/resources/accessPackageAssignmentWorkflowExtension?view=graph-rest-beta&preserve-view=true) or [access package assignment request workflow extension](/graph/api/resources/accessPackageAssignmentRequestWorkflowExtension?view=graph-rest-beta&preserve-view=true) to define the configuration of logic apps. Integrate logic apps with entitlement management to broaden your governance workflows beyond the core entitlement management use cases.
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
Debut of the [threat intelligence API](/graph/api/resources/security-threatintelligence-overview?view=graph-rest-beta&preserve-view=true) for Microsoft Defender Threat Intelligence. The API identifies adversaries and their operations, accelerates detection and remediation, and enhances your security investments and workflows. For more information about the debut, see [What's new: APIs in Microsoft Graph](https://techcommunity.microsoft.com/t5/microsoft-defender-threat/what-s-new-apis-in-microsoft-graph/ba-p/3780350).

### Sites and lists
When [sharing an item on SharePoint](/graph/api/listitem-createlink?view=graph-rest-beta&preserve-view=true) with other users, include the option to notify those users by email.

### Tasks and plans
Use the following **delta** functions of the corresponding type of Planner resources to get the newly created, updated, or deleted resources without having to perform a full read of the entire resource collection:
- [Delta](/graph/api/plannerplan-delta?view=graph-rest-beta&preserve-view=true) function for Planner [plans](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) in either a [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true) or a Planner [roster](/graph/api/resources/plannerroster?view=graph-rest-beta&preserve-view=true).
- [Delta](/graph/api/plannerbucket-delta?view=graph-rest-beta&preserve-view=true) function for Planner [buckets](/graph/api/resources/plannerbucket?view=graph-rest-beta&preserve-view=true) in a Planner plan.
- [Delta](/graph/api/plannertask-delta?view=graph-rest-beta&preserve-view=true) function for Planner [tasks](/graph/api/resources/plannertask?view=graph-rest-beta&preserve-view=true) in either a Planner plan or assigned to the signed-in user.


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
