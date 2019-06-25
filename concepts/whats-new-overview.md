---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

New features and capabilities in Microsoft Graph often originate as popular requests from the developer community. Their APIs usually debut in [preview status](versioning-and-support.md#beta-version) in the beta version (`https://graph.microsoft.com/beta`). Some of them may receive sufficient feedback, evolve, and be promoted to  the general availability (GA) version, v1.0 (`https://graph.microsoft.com/v1.0`). GA APIs enable production apps to access data and intelligence in Microsoft 365 in more compelling ways.

The [May](changelog.md#may-2019) and [June](changelog.md#june-2019) sections of the changelog enumerate the latest API updates. The following sections highlight the more significant ones. 

## What's new in v1.0 (GA)

### Calendar, mail, and personal contacts
Exchange administrators can grant application permissions to an app and [limit the app to access only a subset of mailboxes in an ](auth-limit-mailbox-access.md), instead of the default which is access to all mailboxes in the organization. Such restricted access would apply to any application permissions granted to the app for [calendars](permissions-reference.md#calendars-permissions), [contacts](permissions-reference.md#contacts-permissions), and [mail and mailbox settings](permissions-reference.md#mail-permissions). See related [announcement](https://developer.microsoft.com/en-us/graph/blogs/scoping-microsoft-graph-application-permissions-to-specific-exchange-online-mailboxes/).

### Mail
Use [mail search folders](/graph/api/resources/mailsearchfolder?view=graph-rest-1.0) API to search messages and access Outlook email search results. See related [announcement](https://developer.microsoft.com/en-us/graph/blogs/mail-search-folder-support-for-microsoft-graph-apis/).

### User
Administrators or users can [revoke](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) all issued refresh tokens for a user. This is usually used to prevent apps on a lost or stolen device from accessing an organization's data.


## What's new in beta (preview)

> [!IMPORTANT]
> APIs in _preview_ status may change without notice, and some may never be promoted to the GA version. Do not use them in production apps.

### Devices and apps
- Intune [May](changelog.md#may-2019) updates 
- Intune [June](changelog.md#june-2019) updates

### Education
- Delta query for [educationSchool](/graph/api/resources/educationschool?view=graph-rest-beta).
- Delta query and property additions for [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta) and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta).

### Group
Get [sensitivity labels](/graph/api/resources/assignedlabel?view=graph-rest-beta) to help protect sensitive data of an Office 365 group and meet compliance policies. These labels are [assignedLabel](/graph/api/resources/assignedlabel?view=graph-rest-beta) objects, published by administrators in Microsoft 365 Security & Compliance Center, as part of Microsoft Information Protection capabilities. 

### Sites
Let users [follow](/graph/api/site-follow?view=graph-rest-beta) or [unfollow](/graph/api/site-unfollow?view=graph-rest-beta) SharePoint sites.

### Teamwork
Host [images](/graph/api/resources/chatmessagehostedimage?view=graph-rest-beta) in Microsoft Teams [chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta).


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/en-us/graph/blogs/) for release announcements of new services, and significant features and capabilities.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).

## Next steps
- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for feature requests at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.