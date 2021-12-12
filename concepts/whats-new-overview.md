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


## December 2021: New and generally available

### Cloud communications | Presence
Subscribe to notifications of changes in a specified user's [presence](/graph/api/resources/presence) status. Always specify an encryption certificate in the subscription request as these are rich notifications that include encrypted resource data.

## December 2021: New in preview only

### Cloud communications | Presence
- Use the [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true) action to set the preferred availability and activity status for a user. The user's presence becomes the preferred presence.
- Use the [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true) action to clear any preferred availability and activity status for a user.
- Use `Presence.ReadWrite` as delegated permission with [setPresence](/graph/api/presence-setpresence?view=graph-rest-beta&preserve-view=true), [clearPresence](/graph/api/presence-clearpresence?view=graph-rest-beta&preserve-view=true), [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true), or [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true).
- Use `Presence.ReadWrite.All` as application permission with [setPresence](/graph/api/presence-setpresence?view=graph-rest-beta&preserve-view=true), [clearPresence](/graph/api/presence-clearpresence?view=graph-rest-beta&preserve-view=true), [setUserPreferredPresence](/graph/api/presence-setuserpreferredpresence?view=graph-rest-beta&preserve-view=true), or [clearUserPreferredPresence](/graph/api/presence-clearuserpreferredpresence?view=graph-rest-beta&preserve-view=true).

### Identity and access | Directory management
- [Get](/graph/api/application-get?view=graph-rest-beta&preserve-view=true) the certification details of an [application](/graph/api/resources/application?view=graph-rest-beta&preserve-view=true) through the **certification** property. The property is set only when the application is certified through the [Microsoft 365 App Compliance Program](/microsoft-365-app-certification/docs/enterprise-app-certification-guide).  
- [Include](/graph/api/permissiongrantpolicy-post-includes?view=graph-rest-beta&preserve-view=true) or [exclude](/graph/api/permissiongrantpolicy-post-excludes?view=graph-rest-beta&preserve-view=true) certification as a [condition](/graph/api/resources/permissionGrantConditionSet?view=graph-rest-beta&preserve-view=true) in a [permission grant policy](/graph/api/resources/permissiongrantpolicy?view=graph-rest-beta&preserve-view=true), through the **certifiedClientApplicationsOnly** property of [permissionGrantConditionSet](/graph/api/resources/permissionGrantConditionSet?view=graph-rest-beta&preserve-view=true).

### Search | Index
Use the [update](/graph/api/externalconnectors-schema-update?view=graph-rest-beta&preserve-view=true) operation to update properties for items in a [connection](/graph/api/resources/externalconnectors-externalconnection?view=graph-rest-beta&preserve-view=true) schema, incuding their aliases and labels.


## November 2021: New and generally available

### Files
Get the state of a drive as of a specific time by specifying the corresponding URL-encoded timestamp. See an [example](/graph/api/driveitem-delta#example-4-retrieving-delta-results-using-a-timestamp).

### Identity and access | Identity and sign-in
- Run [campaigns](/graph/api/resources/authenticationMethodsRegistrationCampaign) and [enforce users to register](/graph/api/resources/registrationEnforcement) at sign-in time to set up targeted authentication methods.
-  Configure an [Apple identity provider](/graph/api/resources/applemanagedidentityprovider) in an Azure AD B2C tenant.

## November 2021: New in preview only

### Cloud communications | Online meeting
Automatically admit new types of participants in an online meeting and bypass the meeting lobby:
- Only people the organizer invites.
- Only the participants from the same company.

### Devices and apps | Cloud PC
- Define a [configuration](/graph/api/resources/cloudPcDomainJoinConfiguration?view=graph-rest-beta&preserve-view=true) of how a provisioned Cloud PC device can join Azure Active Directory (Azure AD): either cloud-only and join only to Azure AD, or hybrid and join on-premises Active Directory and Azure AD.
- Get the [gallery image resource](/graph/api/resources/cloudPcGalleryImage?view=graph-rest-beta&preserve-view=true) of the current organization which can be used to provision a Cloud PC.

### Devices and apps | Device updates
- Use [safeguard settings](/graph/api/resources/windowsupdates-safeguardSettings?view=graph-rest-beta&preserve-view=true) to opt-out of safeguards against likely issues in a deployment.
- Support for a [deployment state](/graph/api/resources/windowsupdates-deploymentState?view=graph-rest-beta&preserve-view=true) where a deployment is faulted due to the content no longer being deployable, for example, at the end of service.

### Identity and access | Directory management
- Define and assign [custom security attributes](/graph/api/resources/custom-security-attributes-overview?view=graph-rest-beta&preserve-view=true) to Azure AD objects. Use these attributes to store information, categorize objects, or enforce fine-grained access control over specific Azure resources. Use these attributes with [Azure attribute-based access control](/azure/role-based-access-control/conditions-overview) (Azure ABAC).
- [Create a group within an administrative unit](/graph/api/administrativeunit-post-members?view=graph-rest-beta&preserve-view=true).

### Reports | Microsoft 365 usage reports
[Microsoft 365 usage reports](/graph/api/resources/report?view=graph-rest-beta&preserve-view=true) in JSON output type are no longer strongly typed and are of the type `Edm.Stream`. For more information, see [OData property changes to Microsoft 365 usage reports API in Microsoft Graph](https://devblogs.microsoft.com/microsoft365dev/odata-property-changes-to-microsoft-365-usage-reports-api-in-microsoft-graph/).

### Teamwork
Mark a chat as [read](/graph/api/chat-markChatReadForUser?view=graph-rest-beta&preserve-view=true), or [unread](/graph/api/chat-markchatunreadforuser?view=graph-rest-beta&preserve-view=true) for a user.



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
