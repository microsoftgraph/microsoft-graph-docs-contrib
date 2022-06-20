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


## May 2022: New and generally available

### Education
- [Track changes for assignment](/graph/api/educationassignment-delta) resources.
- [Track changes for assignment category](/graph/api/educationcategory-delta) resources.

### Identity and access | Directory management
An [application](/graph/api/resources/application) registered in Azure Active Directory (Azure AD) can specify application or service contact information from a Service or Asset Management database.

### Identity and access | Identity and sign-in
Allow an Azure Active Directory (Azure AD) tenant to set up [federation with another organization whose identity provider (IdP) supports either the SAML or WS-Fed protocol](/graph/api/resources/samlOrWsFedExternalDomainFederation). This enables the Azure AD tenant to allow guest users to access its resources.

### Search
You can specify up to 1000 search results per page for a [search request](/graph/api/resources/searchrequest).

### Sites and lists
- Get a collection of [content type](/graph/api/resources/contentType) resources from the content type hub that are compatible by using the [getCompatibleHubContentTypes](/graph/api/contenttype-getcompatiblehubcontenttypes) action. 
- Add or synchronize a content type from the content type hub to a [site](/graph/api/resources/site) or [list](/graph/api/resources/list), by using the [addCopyFromContentTypeHub](/graph/api/contenttype-addcopyfromcontenttypehub) action. This makes a content type or its update available to a specific site or list where it is needed. This is an improvement from the legacy sync infrastructure which pushes the content type to all sites across an organization, reducing wait times for the publishing to propagate. 
- Get one or more [rich, long-running operations](/graph/api/resources/richlongrunningoperation) occurring on a site or list, which can happen when adding a content type synchronously.

### Tasks and plans
- [Get](/graph/api/plannerplandetails-get) or [update](/graph/api/plannerplandetails-update) category descriptions as part of the [details](/graph/api/resources/plannerplandetails) of a [plan](/graph/api/resources/plannerplan).
- Instead of the **owner** property of a **plan**, use the **type** property of a [plan container](/graph/api/resources/plannerplancontainer) to specify authorization rules and the lifetime of a **plan**.
- Get the priority of a [task](/graph/api/resources/plannerTask).

### Teamwork
[Get messages on a channel](/graph/api/channel-list-messages) and [include any replies](/graph/api/channel-list-messages#example-3-request-with-top-and-expand-query-options-on-replies) to the message.

### To-do tasks
- Break down a complex [to-do task](/graph/api/resources/todotask) into more actionable, smaller tasks each as a [checklist item](/graph/api/resources/checklistitem).
- Label a to-do task with a [category](/graph/api/resources/outlookcategory) that is defined by the user to group Outlook contacts, events, messages, group posts, and to-do tasks.


## May 2022: New in preview only

### Application
When configuring Azure AD Application Proxy for on-premises applications for secure remote access, use the **isStateSessionEnabled** property in the [onPremisesPublishing](/graph/api/resources/onPremisesPublishing?view=graph-rest-beta&preserve-view=true) resource to specify whether to validate the state parameter if the application uses the OAuth 2.0 authorization code grant flow. Setting this property helps administrators to protect the app from cross-site request forgery (CSRF).

### Compliance | Subject rights requests
- Specify or get the locations that should searched in a [subject rights request](/graph/api/resources/subjectRightsRequest?view=graph-rest-beta&preserve-view=true), such as [mailboxes](/graph/api/resources/subjectRightsRequestAllMailboxLocation?view=graph-rest-beta&preserve-view=true), [SharePoint, OneDrive, or Teams channels](/graph/api/resources/subjectRightsRequestAllSiteLocation?view=graph-rest-beta&preserve-view=true).
- Specify or get a KQL-based content query that should be used for search in a subject rights request.

### Device and app management | Cloud PC
- Get a clearly defined [result](/graph/api/resources/cloudpcbulkremoteactionresult?view=graph-rest-beta&preserve-view=true) upon [bulk-reprovisioning Cloud PC devices](/graph/api/manageddevice-bulkReprovisionCloudPc?view=graph-rest-beta&preserve-view=true).
- [Get](/graph/api/manageddevice-getcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) or [set](/graph/api/manageddevice-setcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) a [Cloud PC review status](/graph/api/resources/cloudpcreviewstatus?view=graph-rest-beta&preserve-view=true), or [bulk-set Cloud PC review status](/graph/api/manageddevice-bulksetcloudpcreviewstatus?view=graph-rest-beta&preserve-view=true) for multiple devices.

### Device and app management | Multi-tenant management
[Get](/graph/api/managedtenants-managedtenant-list-tenantusage?view=graph-rest-beta&preserve-view=true) the number of monthly active users for each service in a managed tenant.

### Education
Use a [Teams app resource](/graph/api/resources/educationteamsappresource?view=graph-rest-beta&preserve-view=true) that corresponds to an installed Microsoft Teams app, to allow education service users to create and share assignments with embedded Teams applications, such as YouTube or FlipGrid.

### Identity and access | Directory management
Activating a service [for an organization](/graph/api/organization-activateService?view=graph-rest-beta&preserve-view=true) and [for a user](/graph/api/user-activateServicePlan?view=graph-rest-beta&preserve-view=true) are deprecated, and will stop returning data on June 30, 2022.

### Identity and access | Identity and sign-in
As part of the [default user role](/graph/api/resources/defaultuserrolepermissions?view=graph-rest-beta&preserve-view=true) of an [authorization policy](/graph/api/resources/authorizationPolicy?view=graph-rest-beta&preserve-view=true), specify whether the registered owner of a device can read their own BitLocker recovery keys.

### Reports | Identity and access reports
Get a [usage report for a user's registered authentication methods](/graph/api/resources/userregistrationdetails?view=graph-rest-beta&preserve-view=true) that includes the default method for multi-factor authentication.

### Search | Index
[Get](/graph/api/externalconnectors-connectionquota-get?view=graph-rest-beta&preserve-view=true) the [quota information](/graph/api/resources/externalconnectors-connectionQuota?view=graph-rest-beta&preserve-view=true) for a [connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true). This information includes the number of items you can ingest into the connection, taking into account items remaining in the connection and the tenant-level remaining quota for all its connections.

### Sites and lists
[Track changes for SharePoint list item](/graph/api/listitem-delta?view=graph-rest-beta&preserve-view=true) resources.

### Teamwork
- Use application permissions to [get all the chats](/graph/api/chat-list?view=graph-rest-beta&preserve-view=true) that a specified user is involved in without the user being present.
- [Send activity feed notifications to multiple users in bulk](/graph/api/teamwork-sendActivityNotificationToRecipients?view=graph-rest-beta&preserve-view=true), up to 100 users at a time.

### To-do tasks
As of May 31, 2022 the [to-do API set that is built on baseTask](/graph/api/resources/tasks-overview?view=graph-rest-beta&preserve-view=true) is deprecated. That API set will stop returning data on August 31, 2022. Use the [to-do API set built on todoTask](/graph/api/resources/todo-overview?view=graph-rest-beta&preserve-view=true) instead.

## April 2022: New and generally available

### Identity and access | Governance
Use [Privileged Identity Management (PIM)](/graph/api/resources/privilegedidentitymanagementv3-overview) in production apps to manage, control, and monitor access to important resources in your organization. The access is enabled through privileged roles and role-based access control (RBAC) and can be granted to users, groups, or service principals. The resources can be in Azure AD, Azure, and other Microsoft cloud services such as Microsoft 365 or Microsoft Intune.

### Search | Index
- Use the application permissions `ExternalConnection.Read.All` and `ExternalConnection.ReadWrite.All` to read or write all external connections without a signed-in user present.
- Use the application permission `ExternalItem.Read.All` to read all external items without a signed-in user present.
- Use the delegated permission `ExternalConnection.ReadWrite.OwnedBy` to read and write external connections on behalf of a signed-in user, that your app is authorized to.
- Use the delegated permission `ExternalConnection.Read.All` or `ExternalConnection.ReadWrite.All` to read or write all external connections on behalf a signed-in user.
- Use the delegated permission `ExternalItem.ReadWrite.OwnedBy` to read and write external items on behalf of a signed-in use, that your app is authorized to.
- Use the delegated permission `ExternalItem.Read.All` or `ExternalItem.ReadWrite.All` to read or write all external items on behalf of a signed-in user.


## April 2022: New in preview only

### Customer bookings
- [Get availability information](/graph/api/bookingbusiness-getstaffavailability?view=graph-rest-beta&preserve-view=true) for [staff member](/graph/api/resources/bookingstaffmember?view=graph-rest-beta&preserve-view=true) resources in a [business](/graph/api/resources/bookingbusiness?view=graph-rest-beta&preserve-view=true).
- Use the application permission `Bookings.Read.All` in read operations for [business](/graph/api/resources/bookingbusiness?view=graph-rest-beta&preserve-view=true), [staff member](/graph/api/resources/bookingstaffmember?view=graph-rest-beta&preserve-view=true), [service](/graph/api/resources/bookingservice?view=graph-rest-beta&preserve-view=true), [customer](/graph/api/resources/bookingcustomer?view=graph-rest-beta&preserve-view=true), and [appointment](/graph/api/resources/bookingappointment?view=graph-rest-beta&preserve-view=true) resources.
- Use the application permission `BookingsAppointment.ReadWrite.All` for read/write operations for customer and appointment resources.

### Device and app management | Cloud PC
- Specify [Windows settings](/graph/api/resources/cloudpcwindowssettings?view=graph-rest-beta&preserve-view=true) as part of [Cloud PC organization settings](/graph/api/resources/cloudPcOrganizationSettings?view=graph-rest-beta&preserve-view=true) for a tenant.
- [Get](/graph/api/user-list-cloudpcs?view=graph-rest-beta&preserve-view=true) the Cloud PC devices attributed to the signed-in user.
- [Get information to launch a Cloud PC device](/graph/api/cloudpc-getcloudpclaunchinfo?view=graph-rest-beta&preserve-view=true) for the signed-in user.

### Identity and access | Directory management
Configure [federation settings](/graph/api/resources/internalDomainFederation?view=graph-rest-beta&preserve-view=true) to federate domains with Azure Active Directory.

### Identity and access | Governance
[Get assignments](/graph/api/accesspackageassignment-additionalaccess?view=graph-rest-beta&preserve-view=true) for which the corresponding user has an incompatible access packages. 

### Reports | Identity and access reports
Confirm an event is [high-risk and compromised](/graph/api/signin-confirmCompromised?view=graph-rest-beta&preserve-view=true) or is [safe](/graph/api/signin-confirmSafe?view=graph-rest-beta&preserve-view=true) by marking the event in the corresponding Azure Active Directory sign-in logs.

### Reports | Microsoft 365 usage reports
- [Get a total distribution report](/graph/api/reportroot-getTeamsUserActivityTotalDistributionCounts?view=graph-rest-beta&preserve-view=true) for the count of specific Teams activities over a specified period. Counts of Teams activities include team chat messages, calls, meetings, audio duration, posting messages, and so on.
- Get additional activity types in reports that [get user detail](/graph/api/reportroot-getTeamsUserActivityUserDetail?view=graph-rest-beta&preserve-view=true), [get activity counts](/graph/api/reportroot-getteamsuseractivitycounts?view=graph-rest-beta&preserve-view=true), and [get activity total counts](/graph/api/reportroot-getteamsuseractivitytotalcounts?view=graph-rest-beta&preserve-view=true).

### Teamwork
Share a channel with one or more teams:
- [List only channels that are shared with a team](/graph/api/team-list-incomingchannels?view=graph-rest-beta&preserve-view=true).
- [List all the channels in a team](/graph/api/team-list-allchannels?view=graph-rest-beta&preserve-view=true) including those hosted in a team or shared with the team.
- [List team members who can access a specified shared channel](/graph/api/sharedwithchannelteaminfo-list-allowedmembers?view=graph-rest-beta&preserve-view=true).
- [Remove a channel shared with a team](/graph/api/team-delete-incomingchannels?view=graph-rest-beta&preserve-view=true).
- [List the teams that have been shared a specified channel](/graph/api/sharedwithchannelteaminfo-list?view=graph-rest-beta&preserve-view=true).
- [Unshare a channel with a team](/graph/api/sharedwithchannelteaminfo-delete?view=graph-rest-beta&preserve-view=true).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Tech Community](https://techcommunity.microsoft.com/t5/microsoft-365-developer-platform/idb-p/Microsoft365DeveloperPlatform/label-name/Microsoft%20Graph).
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
