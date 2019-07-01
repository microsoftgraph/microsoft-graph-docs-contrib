---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

Did you know that some new features in Microsoft Graph originate as popular requests from the developer community? 

Let's walk through how new features get released, what's currently new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop).

## Life cycle of a feature

Microsoft Graph service owners periodically evaluate feature ideas and customer needs, and select new scenarios to support. To build a new feature, they define technical and business requirements. Depending on the feature, they may add or update REST APIs. Or, they may keep the same API syntax and extend feature behavior in other ways to make it more robust (such as adding a new permission, and adding [special lifecycle notifications for Outlook resources](webhooks-outlook-authz.md)). Or, they can offer a better learnng or development experience (such as the [Java tutorial](/graph/tutorials/java) and [Microsoft Graph toolkit](/graph/toolkit/overview)).

In most cases, service owners release new features in the following order:

1. Debut in **_preview_** status, which means the feature behavior may change without notice, and therefore you should not use the feature in production apps. If the feature involves REST API additions or updates, such _preview_ APIs are exposed in the beta endpoint (`https://graph.microsoft.com/beta`). You can try preview APIs in Graph Explorer or use them for prototyping, but not in production apps.

2. If a service owner receives sufficient feedback and considers the feature viable, then the owner promotes the feature to **_general availability_ (GA)** status. If the feature involves REST API additions or updates, the owner exposes the API to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`), in addition to the beta endpoint. You can use the feature (including its APIs) in GA status in production apps.

The following sections highlight what's new in May and June, 2019. For details of API updates, see the [May](changelog.md#may-2019) and [June](changelog.md#june-2019) sections of the changelog. 

## New and generally available (released May - June, 2019)

### Calendar, mail, and personal contacts
Exchange administrators can grant application permissions to an app and [limit the app to access only a subset of mailboxes in an ](auth-limit-mailbox-access.md), instead of the default which is access to all mailboxes in the organization. Such restricted access would apply to any application permissions granted to the app for [calendars](permissions-reference.md#calendars-permissions), [contacts](permissions-reference.md#contacts-permissions), and [mail and mailbox settings](permissions-reference.md#mail-permissions). See related [blog announcement](https://developer.microsoft.com/en-us/graph/blogs/scoping-microsoft-graph-application-permissions-to-specific-exchange-online-mailboxes/).

### Example code snippets
In addition to C# and JavaScript, there are now Objective-C code snippets in all API topics in the v1.0 and beta references. See the Objective-C example for [getting an event](/graph/api/event-get?view=graph-rest-1.0&tabs=objective-c#example).

### Mail
Use [mail search folders](/graph/api/resources/mailsearchfolder?view=graph-rest-1.0) API to search messages and access Outlook email search results. See related [blog announcement](https://developer.microsoft.com/en-us/graph/blogs/mail-search-folder-support-for-microsoft-graph-apis/).

### Postman
As an alternative to Graph Explorer, try the Microsoft Graph API on the [Microsoft Graph Postman collection](use-postman.md) to learn the API behavior and speed up app development.

### Tutorials
Try the new [tutorial to build a Java console app](/graph/tutorials/java) to get information about a user calendar.

### User
Administrators or users can [revoke](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) all issued refresh tokens for a user. This is usually used to prevent apps on a lost or stolen device from accessing an organization's data.


## New in preview (released May - June, 2019)

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
- Intune [May](changelog.md#may-2019) updates 
- Intune [June](changelog.md#june-2019) updates

### Education
- Delta query for [educationSchool](/graph/api/resources/educationschool?view=graph-rest-beta).
- Delta query and property additions for [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta) and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta).

### Group
Get [sensitivity labels](/graph/api/resources/assignedlabel?view=graph-rest-beta) to help protect sensitive data of an Office 365 group and meet compliance policies. These labels are [assignedLabel](/graph/api/resources/assignedlabel?view=graph-rest-beta) objects, published by administrators in Microsoft 365 Security & Compliance Center, as part of Microsoft Information Protection capabilities. 

### Identity and access
- Get an instance of an [application](/graph/api/resources/applicationtemplate?view=graph-rest-beta), or add an instance from the Azure AD application gallery into your directory as a template.
- Get a list of all [provisioning events](/graph/api/resources/provisioningobjectsummary?view=graph-rest-beta) in a tenant.
- Get information about [detected user or sign-in risks](/graph/api/resources/riskdetection?view=graph-rest-beta) in an Azure AD environment. This risk detection functionality is part of Azure AD Identity Protection.

### Mail
Use [Mail.ReadBasic permission](permissions-reference.md#mail-permissions) in [mailFolder](/graph/api/resources/mailfolder?view=graph-rest-beta) API, and in [change notifications](webhooks.md) for [message](/graph/api/resources/message?view=graph-rest-beta) and **mailFolder**.

### Microsoft Graph toolkit
The [Microsoft Graph toolkit](/graph/toolkit/overview) is a set of framework-agnostic web components and helpers that provides convenience to authenticate and access data in Microsoft Graph. Because the Microsoft Graph toolkit is in preview status, use toolkit providers and components in only non-production apps.

### Sites
Let users [follow](/graph/api/site-follow?view=graph-rest-beta) or [unfollow](/graph/api/site-unfollow?view=graph-rest-beta) SharePoint sites.

### Teamwork
Host [images](/graph/api/resources/chatmessagehostedimage?view=graph-rest-beta) in Microsoft Teams [chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta).
Support [configuring](/graph/api/resources/teamdiscoverysettings?view=graph-rest-beta) how a private team can be discovered.


## Want to stay in the loop?
- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/en-us/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/en-us/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).

