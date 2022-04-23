---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
ms.localizationpriority: high
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.


## March 2022: New and generally available

### Files
Use a [bundle](/graph/api/resources/bundle) resource to share multiple files at once, much like other [driveItem](/graph/api/resources/driveitem) resources. You can apply CRUD operations on a bundle, and [add](/graph/api/bundle-additem) an item to or [remove](/graph/api/bundle-removeitem) an item from a bundle.

### Identity and access | Directory management
Use [resource-specific permission](/graph/api/resources/resourcespecificpermission) to authorize a Teams app direct access to the data of a specific instance of a chat or team. For example, the resource-specific permission ChannelMessage.Read.Group allows a Teams app to read the channel messages of a single team.

### Identity and access | Governance
- [Get](/graph/api/approval-get) [approval](/graph/api/resources/approval) decisions associated with a [request for access package assignment](/graph/api/resources/accesspackageassignmentrequest).
- As part of [Azure Active Directory (Azure AD) entitlement management](/graph/api/resources/entitlementmanagement-overview), use an [access package assigment policy](/graph/api/resources/accesspackageassignmentpolicy) to manage a request, approval, assignment, or regular review to an [access package](/graph/api/resources/accesspackage). You can govern internal and external users' access to groups, applications, and SharePoint Online sites of an organization.

### Identity and access | Identity and sign-in
Specify the [inclusion or exclusion of client applications](/graph/api/resources/conditionalaccessclientapplications) as among a [set of conditions](/graph/api/resources/conditionalAccessConditionSet) to apply a [conditional access policy](/graph/api/resources/conditionalaccesspolicy).


## March 2022: New in preview only

### Cloud communications | Online meeting
Specify one or more [meeting participants](/graph/api/resources/meetingParticipants?view=graph-rest-beta&preserve-view=true) as co-organizer.

### Compliance | eDiscovery
[Purge data](/graph/api/ediscovery-sourcecollection-purgeData?view=graph-rest-beta&preserve-view=true) and permanently delete Microsoft Teams messages from an eDiscovery [source collection](/graph/api/resources/ediscovery-sourcecollection?view=graph-rest-beta&preserve-view=true).

### Device and app management | Cloud PC
- Use delegated or application permissions of `RoleManagement.Read.CloudPC` for the read operations of the [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) resource.
- Use delegated or application permissions of `RoleManagement.ReadWrite.CloudPC` for the read and write operations of the [unifiedRoleDefinition](/graph/api/resources/unifiedroledefinition?view=graph-rest-beta&preserve-view=true) resource.
- Specify the ID and display name of an Azure subscription as part of the information for a [source image for a device](/graph/api/resources/cloudPcSourceDeviceImage?view=graph-rest-beta&preserve-view=true).
- Specify [Windows settings](/graph/api/resources/cloudpcwindowssettings?view=graph-rest-beta&preserve-view=true) to configure when creating Cloud PCs for a [provisioning policy](/graph/api/resources/cloudPcProvisioningPolicy?view=graph-rest-beta&preserve-view=true).

### Device and app management | Corporate management
- Intune March updates for the beta version.

### Device and app management | Multi-tenant management
[List](/graph/api/managedtenants-managedtenant-list-auditevents?view=graph-rest-beta&preserve-view=true) and [get](/graph/api/managedtenants-auditevent-get?view=graph-rest-beta&preserve-view=true) audit events for managed tenants in Microsoft 365 Lighthouse.

### Identity and access | Directory management
- [List](/graph/api/organizationsettings-list-microsoftapplicationdataaccess?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/microsoftapplicationdataaccesssettings-update?view=graph-rest-beta&preserve-view=true) [settings](/graph/api/resources/microsoftapplicationdataaccesssettings?view=graph-rest-beta&preserve-view=true) that specify access from Microsoft applications to Microsoft 365 data belonging to users in an organization. For example, given the proper authorization, whether only Microsoft 365 apps (such as Word and Excel) can access users' Microsoft 365 data, or whether other Microsoft apps (such as Windows) can access the data as well. By default, all users in an organization can access in a Microsoft app any Microsoft 365 data that the user has been authorized to access. 
- Following the Zero Trust cybersecurity model, Microsoft partners can use [granular delegated admin privileges (GDAP)](/graph/api/resources/delegatedadminrelationships-api-overview?view=graph-rest-beta) to carry out administrative tasks with least-privileged access to their customer tenants, to avoid potential security exposures. Instead of requesting Global Administrator role as in the past, partners request specific roles for customer tenant administration for a definite amount of time, and their customers must explicitly grant the least-privileged access to them.

### Security | Attack simulation and training
- [List simulation automations](/graph/api/attacksimulationroot-list-simulationautomations?view=graph-rest-beta&preserve-view=true) for a tenant.
- [List runs](/graph/api/resources/simulationautomationrun?view=graph-rest-beta&preserve-view=true) of simulation automations for a tenant.

### Search
- Specify in a [search request](/graph/api/resources/searchrequest?view=graph-rest-beta&preserve-view=true) whether to trim away the duplicate SharePoint files from search results. The default is false.
- Qualify a [search query](/graph/api/resources/searchquery?view=graph-rest-beta&preserve-view=true) string with a template, which supports KQL and query variables.

### Sites and lists
- For a [column](/graph/api/resources/columnDefinition?view=graph-rest-beta&preserve-view=true) that contains taxonomy data, specify the parent [term](/graph/api/resources/termstore-term?view=graph-rest-beta&preserve-view=true) and [term set](/graph/api/resources/termstore-set?view=graph-rest-beta&preserve-view=true) for which the child terms can be selected as column values.
- Get the settings for a [site](/graph/api/resources/site?view=graph-rest-beta&preserve-view=true), including its language and time zone.

### Tasks and plans
Identify if a Planner plan intended for experiences outside of Planner (such as Microsoft Teams) can track work in that context, by checking the **details** relationship of the corresponding  [plannerPlan](/graph/api/resources/plannerPlan?view=graph-rest-beta&preserve-view=true) resource.

### Teamwork
- Get or set [summary information](/graph/api/resources/teamSummary?view=graph-rest-beta&preserve-view=true) about a [team](/graph/api/resources/team?view=graph-rest-beta&preserve-view=true), including the count of owners, members, and guests.
- Sort messages in descending order when [listing messages in a chat](/graph/api/chat-list-messages?view=graph-rest-beta&preserve-view=true).


## February 2022: New and generally available

### Teamwork
Get [details about an online meeting](/graph/api/resources/teamworkOnlineMeetingInfo) that is associated with a [chat](/graph/api/resources/chat) through the **onlineMeetingInfo** property.

## February 2022: New in preview only

### Applications
- Use a new policy option for [application authentication methods](/graph/api/resources/applicationauthenticationmethodpolicy?view=graph-rest-beta&preserve-view=true) to restrict a custom password secret on an application or service principal.
- Specify [settings](/graph/api/resources/windowsApplication?view=graph-rest-beta&preserve-view=true) for apps running Windows and published in the Microsoft Store or Xbox games store.

### Change notifications
Subscribe to changes of Outlook contacts, events, or messages to receive notifications that include resource data in the payload. For more information, see [Change notifications for Outlook resources in Microsoft Graph](outlook-change-notifications-overview.md).

### Device and app management | Cloud PC 
- Define [restore point settings](/graph/api/resources/cloudpcrestorepointsetting?view=graph-rest-beta&preserve-view=true), which include the frequency to create a restore point, and whether users can restore their own Cloud PC based on a restore point backup.
- [Restore](/graph/api/manageddevice-restorecloudpc?view=graph-rest-beta&preserve-view=true) a Cloud PC based on a previous snapshot.
- [Restore multiple Cloud PCs](/graph/api/manageddevice-bulkrestorecloudpc?view=graph-rest-beta&preserve-view=true) in a single request by specifying their managed device IDs and a date/time range (e.g., before, after) of a restore point.

### Identity and access | Directory management
Use application permissions `CustomSecAttributeAssignment.Read.All` to read [custom security attribute definitions](/graph/api/resources/customsecurityattributedefinition?view=graph-rest-beta&preserve-view=true) for an organization without a signed-in user.

### Identity and access | Governance
- Configure [settings](/graph/api/resources/accessreviewstagesettings?view=graph-rest-beta&preserve-view=true) for each [stage](/graph/api/resources/accessreviewstage?view=graph-rest-beta&preserve-view=true) in a multi-stage access review. In addition to [get](/graph/api/accessreviewstage-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/accessreviewstage-update?view=graph-rest-beta&preserve-view=true) an access review stage, you can do the following: 
  - [Stop](/graph/api/accessreviewstage-stop?view=graph-rest-beta&preserve-view=true) reviewers from giving more input to a stage and proceed to the next stage if applicable. 
  - [Filter](/graph/api/accessreviewstage-filterbycurrentuser?view=graph-rest-beta&preserve-view=true) and get all the stages on an [access review instance](/graph/api/resources/accessreviewinstance?view=graph-rest-beta&preserve-view=true) for which the calling user is a reviewer
  - [List decisions](/graph/api/accessreviewstage-list-decisions?view=graph-rest-beta&preserve-view=true) from a multi-stage access review.
- Apps can use application permission `EntitlementManagement.ReadWrite.All` to [create an access package resource request](/graph/api/entitlementmanagement-post-accesspackageresourcerequests?view=graph-rest-beta&preserve-view=true) to add or remove a resource to an [access package catalog](/graph/api/resources/accesspackagecatalog?view=graph-rest-beta&preserve-view=true).

### Identity and access | Identity and sign-in
- Use a number of new properties to configure an [organization's branding](/graph/api/resources/organizationalbrandingproperties?view=graph-rest-beta&preserve-view=true). For example, a banner version of a company logo for the sign-in page, a custom favicon with a CDN-based URL, and a few other custom properties for users to manage accounts.
- Include or exclude Linux as one of the [platform conditions](/graph/api/resources/conditionalaccessplatforms?view=graph-rest-beta&preserve-view=true) in a [conditional access policy](/graph/api/resources/conditionalaccesspolicy?view=graph-rest-beta&preserve-view=true).
- Identify [at-risk service principals](/graph/api/resources/riskyserviceprincipal?view=graph-rest-beta&preserve-view=true) in an organization with Azure AD, which continually [detects and evaluates risks](/graph/api/resources/serviceprincipalriskdetection?view=graph-rest-beta&preserve-view=true) based on various signals and machine learning. You can [confirm](/graph/api/riskyserviceprincipal-confirmcompromised?view=graph-rest-beta&preserve-view=true) if an at-risk service principal is indeed compromised, upon which Microsoft would disable that service principal object. You can [dismiss](/graph/api/riskyserviceprincipal-dismiss?view=graph-rest-beta&preserve-view=true) the risk of an at-risk service principal. And, you can [list the risk history](/graph/api/riskyserviceprincipal-list-history?view=graph-rest-beta&preserve-view=true) of a service principal.
- Use [cross-tenant access settings](/graph/api/resources/crosstenantaccesspolicy-overview?view=graph-rest-beta&preserve-view=true) to control and manage collaboration between users in your organization and other organizations. They are granular to let you determine the users, groups, and apps, both in your organization and in external organizations, that can participate in Azure AD B2B collaboration and Azure AD B2B direct connect. 
- Enable or disable users and groups in an organization to use the [Azure AD native Certificate-Based Authentication (CBA)](/graph/api/resources/x509CertificateAuthenticationMethodConfiguration?view=graph-rest-beta&preserve-view=true).

### Search
Set up [acronym](/graph/api/resources/search-acronym?view=graph-rest-beta&preserve-view=true), [bookmark](/graph/api/resources/search-bookmark?view=graph-rest-beta&preserve-view=true), and [QnA](/graph/api/resources/search-qna?view=graph-rest-beta&preserve-view=true) resources as [administrative search answers for users in an organization](search-concept-answers.md).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
    Some new features originate as popular requests from the developer community. The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

    1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

    2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Microsoft 365 developer program](https://developer.microsoft.com/office/dev-program), get a free Microsoft 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](https://developer.microsoft.com/graph/changelog/).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).
