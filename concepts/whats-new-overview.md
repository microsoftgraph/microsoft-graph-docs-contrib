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


## June 2023: New and generally available

### Application
Address an [application](/graph/api/resources/application) by a new alternate key, **appId**. The Azure portal refers to **appId** as the application (client) ID.

### Device and app management | Cloud printing
- [Get](/graph/api/print-list-recentshares) a list of [printer share](/graph/api/resources/printershare) resources recently used by the signed-in user.
- Get or update additional [printer share viewpoint](/graph/api/resources/printerShareViewpoint), which is [printer share](/graph/api/resources/printershare) data specific to the signed-in user.

### Files
- [Assign a sensitivity label](/graph/api/driveitem-assignsensitivitylabel) to a file in OneDrive or SharePoint. 
- [Extract one or more sensitivity labels](/graph/api/driveitem-extractsensitivitylabels) assigned to a file or folder and update the metadata of that [drive item](/graph/api/resources/driveitem) with the latest details of the assigned label.

### Search | Query
- Optionally specify the sortable or refinable properties to collapse in the results of a [search request](/graph/api/resources/searchrequest).
- To include multiple search requests in a single request body in the request body, [use the Microsoft Graph Search API to pass multiple search requests](/graph/search-concept-multiplerequest). 
- Guest users can search for items within SharePoint or OneDrive that have been shared with them.

### Teamwork and communications | Calls and online meetings
- Track the freeze duration data of a video stream in a [media stream](/graph/api/resources/callRecords-mediaStream).
- Check whether the forward error correction (FEC) was used at some point during a [session](/graph/api/resources/callrecords-session).
- Represent CPU capabilities and name of the device used by a caller or callee [participant endpoint](/graph/api/resources/callrecords-participantendpoint) in a [call](/graph/api/resources/call) or [online meeting](/graph/api/resources/onlinemeeting).
- [Listing](/graph/api/callrecords-session-list?view=graph-rest-beta&preserve-view=true) sessions in a [call record](/graph/api/resources/callrecords-callrecord?view=graph-rest-beta&preserve-view=true) can now identify those sessions that took place for testing purpose.

### Teamwork and communications | Employee learning
Get or specify whether a [learning provider](/graph/api/resources/learningProvider) can ingest learning course activity records, including [learning activity assigned to a user](/graph/api/resources/learningassignment) and [learning course activity initiated by a user](/graph/api/resources/learningselfinitiatedcourse).


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

### Identity and access | Directory management
- Manage an [administrative unit](/graph/api/resources/administrativeunit?view=graph-rest-beta&preserve-view=true), [device](/graph/api/resources/device?view=graph-rest-beta&preserve-view=true), [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true), or [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) that is a member of a restricted management administrative unit by requiring a role scoped to the restricted administrative unit. The calling app must be assigned the Directory.Write.Restricted permission. For delegated scenarios, the administrators must also be explicitly assigned supported roles at the restricted administrative unit scope.
- [Get](/graph/api/organization-get?view=graph-rest-beta&preserve-view=true) the last time a password sync request was received for an [organization](/graph/api/resources/organization?view=graph-rest-beta&preserve-view=true).

### Identity and access | Governance
- Use the application permission `RoleManagementPolicy.Read.AzureADGroup` or `RoleManagementPolicy.ReadWrite.AzureADGroup` to read or update policies in [Privileged Identity Management for groups](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview?view=graph-rest-beta&preserve-view=true), without a signed-in user.
- Use Privileged Identity Management (PIM) to govern privileged access and limit excessive access to Azure AD roles. See more information on the [governance capabilities of PIM for Azure AD roles APIs in Microsoft Graph](/graph/api/resources/privilegedidentitymanagementv3-overview?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Get or update [sign-in preferences](/graph/api/resources/signInPreferences?view=graph-rest-beta&preserve-view=true) for [authentication](/graph/api/resources/authentication?view=graph-rest-beta&preserve-view=true), for the default second-factor method used by the user when signing in.
- [Get](/graph/api/organizationalbranding-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/organizationalbranding-update?view=graph-rest-beta&preserve-view=true) [content options to be customized](/graph/api/resources/contentCustomization?view=graph-rest-beta&preserve-view=true) throughout the authentication flow for a tenant.

### Reports | Identity and access reports
Get the date/time for the last update of a user's [registration record for authentication methods](/graph/api/resources/userRegistrationDetails?view=graph-rest-beta&preserve-view=true), including which methods are registered and which features the user is registered and capable of (such as multi-factor authentication, self-service password reset, and passwordless authentication).

### Security | Alerts and incidents
Depending on the type of [alert evidence](/graph/api/resources/security-alertevidence?view=graph-rest-beta&preserve-view=true), such as [mailbox evidence](/graph/api/resources/security-mailboxevidence?view=graph-rest-beta&preserve-view=true), [process evidence](/graph/api/resources/security-processevidence?view=graph-rest-beta&preserve-view=true), or [user evidence](/graph/api/resources/security-userevidence?view=graph-rest-beta&preserve-view=true), get the display name of the related [user account](/graph/api/resources/security-useraccount?view=graph-rest-beta&preserve-view=true) as part of the rich data about each artifact involved in an [alert](/graph/api/resources/security-alert?view=graph-rest-beta&preserve-view=true).

### Tasks and plans
Specify or get [checklist items](/graph/api/resources/plannerchecklistitems?view=graph-rest-beta&preserve-view=true) as a [completion requirement](/graph/api/resources/plannerchecklistrequirement?view=graph-rest-beta&preserve-view=true) for a [Planner task](/graph/api/resources/plannertask?view=graph-rest-beta&preserve-view=true).

### Teamwork and communications | Calls and online meetings
Get information about a [webinar](/graph/api/resources/virtualeventwebinar?view=graph-rest-beta&preserve-view=true) virtual event on Microsoft Teams, including the following:
- [Presenter](/graph/api/resources/virtualeventpresenter?view=graph-rest-beta&preserve-view=true) information and [details](/graph/api/resources/virtualeventpresenterdetails?view=graph-rest-beta&preserve-view=true).
- [Registration information](/graph/api/resources/virtualeventregistration?view=graph-rest-beta&preserve-view=true), [registration questions](/graph/api/resources/virtualeventregistrationquestion?view=graph-rest-beta&preserve-view=true), and [registrant information and status](/graph/api/resources/virtualeventregistrant?view=graph-rest-beta&preserve-view=true).
- [Attendance report](/graph/api/resources/meetingattendancereport?view=graph-rest-beta&preserve-view=true) for a [session](/graph/api/resources/virtualeventsession?view=graph-rest-beta&preserve-view=true) in the webinar.

### Teamwork and communications | Messaging
- [Get](/graph/api/channel-get?view=graph-rest-beta&preserve-view=true) summary information about a channel, including the number of guests, members, owners, and an indicator for members from other tenants.


## May 2023: New and generally available

### Identity and access | Directory management
- As part of managing corporate devices, Intune can now set additional properties on a [device](/graph/api/resources/device) used for multi-factor authentication in conditional access policies for an organization:  **deviceCategory**, **deviceOwnership**, **enrollmentProfileName**, and **registrationDateTime**.
- [Get](/graph/api/organization-get) organization details to identify the tenant type of an [organization](/graph/api/resources/organization) set up as a customer identity & access management (CIAM) solution. A CIAM tenant provides an integrated platform to serve consumers, partners, and citizen scenarios.
-  Define [custom security attribute](/graph/api/resources/customSecurityAttributeDefinition) resources to store information, categorize objects, or enforce fine-grained access control over specific Azure resources. For more information on defining and assigning your own custom security attributes, see [Overview of custom security attributes](/graph/api/resources/custom-security-attributes-overview).

### Identity and access | Identity and sign-in
- Specify whether to exclude or include [guests or external users](/graph/api/resources/conditionalAccessGuestsOrExternalUsers) as part of the [condition set for conditional access](/graph/api/resources/conditionalaccessconditionset).
- Configure an [authorization policy](/graph/api/resources/authorizationpolicy) to allow [user consent for risky apps](/azure/active-directory/manage-apps/configure-risk-based-step-up-consent).
- Use a [cross-tenant identity sync policy](/graph/api/resources/crosstenantidentitysyncpolicypartner) to synchronize users from a partner tenant. The policy streamlines collaboration between users in a multi-tenant organization, by automating creating, updating, and deleting users from one tenant to another.
- [Get](/graph/api/crosstenantaccesspolicyconfigurationdefault-get) the cross-tenant access default settings for automatic user consent from an [inbound/outbound policy configuration](/graph/api/resources/inboundoutboundpolicyconfiguration).

### Reports | Microsoft 365 usage reports
- [Get a report of the number of teams](/graph/api/reportroot-getTeamsTeamCounts) of a particular type in an instance of Microsoft Teams.
- [Get a report of the number of team activities](/graph/api/reportroot-getTeamsTeamActivityCounts) across Microsoft Teams. Activities are related to meetings and messages.
- [Get a report of the number of team activities](/graph/api/reportroot-getTeamsTeamActivityDistributionCounts) across Microsoft Teams over a selected period.
- [Get a report of details about Microsoft Teams activity by team](/graph/api/reportroot-getTeamsTeamActivityDetail). The activities for both licensed and non-licensed users.

### Search | Index
- Specify [settings](/graph/api/resources/externalconnectors-searchsettings) for the search experience of content in an [external connection](/graph/api/resources/externalconnectors-externalconnection). For example, a [display template](/graph/api/resources/externalconnectors-displaytemplate) for search results, and a [rule](/graph/api/resources/externalconnectors-propertyRule) to select the display template.
- Collect [configurable settings related to activities of connector content](/graph/api/resources/externalconnectors-activitysettings) in an [external connection](/graph/api/resources/externalconnectors-externalconnection). These settings set [rules to resolve the URL of an external item to its ID ](/graph/api/resources/externalconnectors-itemidresolver), thereby identifying the [external item](/graph/api/resources/externalconnectors-externalitem).
- [Add](/graph/api/externalconnectors-externalitem-addactivities) instances of [external activity](/graph/api/resources/externalConnectors-externalActivity) on an [external item](/graph/api/resources/externalconnectors-externalitem). You can track the type of external activity (such as viewed, modified, created, commented), the [identity](/graph/api/resources/externalconnectors-identity) of the [user](/graph/api/resources/user), [group](/graph/api/resources/group), or external group who performed the activity, and the [result](/graph/api/resources/externalconnectors-externalactivityresult) of adding the activity.

### Security | Alerts and incidents
- Manage an Amazon resource, Azure resource such as a VM, Storage, or KeyVault, or Google Cloud resource such as compute or Kubernetes cluster identifier, as specific types of [evidence](/graph/api/resources/security-alertevidence) related to an [alert](/graph/api/resources/security-alert).
- Support Microsoft Defender for Cloud as a detection source that identifies a notable component or activity, or as a source that creates an [alert](/graph/api/resources/security-alert).  

### Sites and lists
- [Get](/graph/api/sharepointsettings-get) or [update](/graph/api/sharepointsettings-update) tenant-wide [settings](/graph/api/resources/sharepointsettings) for SharePoint and OneDrive, which include a number of settings such as the following:
  - The [idle session sign-out policy settings](/graph/api/resources/idlesessionsignout) for SharePoint.
  - Whether legacy authentication protocols are enabled for the tenant.
  - Whether guests must sign in using the same account to which sharing invitations are sent.
- [Get all the sites](/graph/api/site-getallsites) across georgraphies in an organization. 

### Teamwork and communications | Calls and online meetings
- Identify the reasons for shared content or video from an [online meeting](/graph/api/resources/onlineMeeting) [participant](/graph/api/resources/meetingparticipants) being [restricted](/graph/api/resources/onlineMeetingRestricted).
- [Get a join web URL](/graph/api/virtualappointment-getvirtualappointmentjoinweburl) for a [Microsoft Virtual Appointment](/microsoft-365/frontline/virtual-appointments). This web URL includes enhanced business-to-customer experiences such as mobile browser join and virtual lobby rooms. 


## May 2023: New in preview only

### Device and app management | Cloud PC
- Get or set a template to name Cloud PCs provisioned by a [Cloud PC provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true).
- Get or set [configuration settings for how a Cloud PC joins Azure Active Directory](/graph/api/resources/cloudpcdomainjoinconfiguration?view=graph-rest-beta&preserve-view=true) in a [Cloud PC provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true).
- Get the [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true) resources that are targeted in the [assignment](/graph/api/resources/cloudPcProvisioningPolicyAssignment?view=graph-rest-beta&preserve-view=true) of a [Cloud PC provisioning policy](/graph/api/resources/cloudpcprovisioningpolicy?view=graph-rest-beta&preserve-view=true). This list of users is computed based on assignments, licenses, group memberships, and policies. 

### Education
Get or update from class level [assignment settings](/graph/api/resources/educationassignmentsettings?view=graph-rest-beta&preserve-view=true) any [grading category](/graph/api/resources/educationgradingcategory?view=graph-rest-beta&preserve-view=true) to weight assignments differently when computing a class average grade.

### Identity and access | Directory management
- Get any [service provisioning error](/graph/api/resources/serviceprovisioningerror?view=graph-rest-beta&preserve-view=true) published by a federated service describing a non-transient, service-specific error for a [user](/graph/api/resources/user?view=graph-rest-beta&preserve-view=true), [group](/graph/api/resources/group?view=graph-rest-beta&preserve-view=true), or [organization contact](/graph/api/resources/orgcontact?view=graph-rest-beta&preserve-view=true) to let an administrator follow up. The administrator can [retry](/graph/api/user-retryserviceprovisioning?view=graph-rest-beta&preserve-view=true) provisioning the service for the user, group, or organization contact as applicable.
- Fine-tune the [on-premises directory synchronization](/graph/api/resources/onpremisesdirectorysynchronization?view=graph-rest-beta&preserve-view=true) process for an organization by getting or updating the following additional [configuration](/graph/api/resources/onPremisesDirectorySynchronizationConfiguration?view=graph-rest-beta&preserve-view=true) data: anchor attribute, synchronization client application ID and version, [data for the current export run](/graph/api/resources/onpremisescurrentexportdata?view=graph-rest-beta&preserve-view=true), and [write-back configuration](/graph/api/resources/onpremiseswritebackconfiguration?view=graph-rest-beta&preserve-view=true).
- Optionally define an [extension property](/graph/api/resources/extensionProperty?view=graph-rest-beta&preserve-view=true) as a multi-valued custom property that contains a collection of objects, instead of a single-valued property.
- Use a [custom RBAC scope](/graph/api/resources/customAppScope?view=graph-rest-beta&preserve-view=true) to manage the scope of a role assignment for an Exchange Online provider.

### Identity and access | Governance
- When [getting a list](/graph/api/accessreviewinstance-list-decisions?view=graph-rest-beta&preserve-view=true) of every [decision for an instance of an access review](/graph/api/resources/accessreviewinstancedecisionitem?view=graph-rest-beta&preserve-view=true), access reviewers can expand to find the last user who modified any [insight that a user has low affiliation and is an outlier with other users within the group](/graph/api/resources/membershipoutlierinsight?view=graph-rest-beta&preserve-view=true).
- Use [Privileged Identity Management (PIM) for groups](/graph/api/resources/privilegedidentitymanagement-for-groups-api-overview?view=graph-rest-beta&preserve-view=true) to govern how principals are assigned membership or ownership of security and Microsoft 365 groups, such as the following capabilities:
  - Providing principals just-in-time membership or ownership of groups.
  - Assigning principals temporary membership or ownership of groups.

### Identity and access | Identity and sign-in
- Use a [custom authentication extension](/graph/api/resources/customauthenticationextension?view=graph-rest-beta&preserve-view=true) to manage the configuration and get data from a system external to Azure Active Directory, such as a database, so to customize the Azure AD authentication experience for users.
- To customize an authentication process, use an [authentication event listener](/graph/api/resources/authenticationEventListener?view=graph-rest-beta&preserve-view=true) to manage listeners and handlers that trigger the execution of custom logic during the Azure AD authentication experience.
- Use a [self-service sign-up user flow for external identities](/graph/api/resources/externalusersselfservicesignupeventsflow?view=graph-rest-beta&preserve-view=true) within an Azure AD workforce tenant or customer tenant, to let users sign up for an app and create a new guest account. A user flow is basically a [multi-event policy](/graph/api/resources/authenticationEventsFlow?view=graph-rest-beta&preserve-view=true) that defines a series of steps for the user, listing each supported [identity provider](/graph/api/resources/identityproviderbase?view=graph-rest-beta&preserve-view=true), and the [user attributes](/graph/api/resources/identityuserflowattribute?view=graph-rest-beta&preserve-view=true) to collect from the user such as given name, surname, city, postal code. For more information, see [Add a self-service sign-up user flow to an app](/azure/active-directory/external-identities/self-service-sign-up-user-flow).
- Get or update the [permissions for the default user role](/graph/api/resources/defaultuserrolepermissions) in an [authorization policy](/graph/api/resources/authorizationpolicy) to allow creating tenants in an Azure Active Directory organization.
- Get or update the [cross-tenant access default settings](/graph/api/resources/crosstenantaccesspolicyconfigurationdefault?view=graph-rest-beta&preserve-view=true) to include [cross-tenant access policy tenant restrictions](/graph/api/resources/crosstenantaccesspolicytenantrestrictions?view=graph-rest-beta&preserve-view=true) that restrict organization users accessing an external organization on their network or devices.
- As part of the [authentication methods policy](/graph/api/resources/authenticationMethodsPolicy?view=graph-rest-beta&preserve-view=true) in Azure Active Directory,enable [settings](/graph/api/resources/reportSuspiciousActivitySettings?view=graph-rest-beta&preserve-view=true) that allow users in specific groups to report unexpected multi-factor authentication (MFA) prompts as suspicious.

### Reports | Identity and access reports
- Get a report that contains [sign-in activity information of an application credential](/graph/api/resources/appcredentialsigninactivity?view=graph-rest-beta&preserve-view=true) in an Azure Active Directory tenant.
- Get a report that contains [sign-in activity information for a service principal](/graph/api/resources/serviceprincipalsigninactivity?view=graph-rest-beta&preserve-view=true) in an Azure Active Directory tenant.

### Security | Attack simulation and training
Get the following additional data from [attack simulation reports](/graph/api/resources/report-m365defender-reports-overview?view=graph-rest-beta&preserve-view=true): 
- The number of days that an [attack simulation user](/graph/api/resources/attackSimulationUser?view=graph-rest-beta&preserve-view=true) is out of office during an attack simulation and training campaign.
- The last activity in [a user's detailed online actions](/graph/api/resources/userSimulationDetails?view=graph-rest-beta&preserve-view=true) in an attack simulation and training campaign.

### Tasks and plans
- Share a plan using a [shared-with container](/graph/api/resources/plannersharedwithcontainer?view=graph-rest-beta&preserve-view=true) that is separate from the original [container](/graph/api/resources/plannerplancontainer?view=graph-rest-beta&preserve-view=true) that the plan belongs to. Users can share a plan with multiple other containers, and specify the maximum access level allowed by each of these containers, such as read, readwrite, or full access.
- Specify in the [details](/graph/api/resources/plannerplancontextdetails?view=graph-rest-beta&preserve-view=true) of the [context](/graph/api/resources/plannerplancontext?view=graph-rest-beta&preserve-view=true) of a [plan](/graph/api/resources/plannerplan?view=graph-rest-beta&preserve-view=true) to surface the plan in Microsoft Project.

### Teamwork and communications | Calls and online meetings
List each [message history item](/graph/api/resources/chatmessagehistoryitem) of a [chat message](/graph/api/resources/chatMessage) in a Teams chat or channel.


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
