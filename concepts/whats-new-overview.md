---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

New features and capabilities in Microsoft Graph often originate from popular requests from the developer community. They typically debut as APIs in [preview status](versioning-and-support.md#beta-version) in the beta endpoint (`https://graph.microsoft.com/beta`). Some of them may receive sufficient feedback, evolve and become generally available, and let you build production apps for compelling scenarios, accessing data and intelligence in Microsoft 365. The current general availability (GA) version is v1.0 (`https://graph.microsoft.com/v1.0`).

## What's new 

The following lists highlight what's released in Microsoft Graph in May and June of 2019.

### v1.0 (GA)

#### Directory
Administrators or users can [revoke](/graph/api/user-revokesigninsessions?view=graph-rest-1.0) all issued refresh tokens for a user, usually to prevent access to an organization's data by apps on the user's lost or stolen device.

#### Outlook mail, calendar, and contacts
- Exchange administrators can grant application permissions and [limit apps to access only specific mailboxes](auth-limit-mailbox-access.md).
- Use [mail search folders](/graph/api/resources/mailsearchfolder?view=graph-rest-1.0) API to search messages and integrate with Outlook email search results


### Beta only (in preview)

> [!IMPORTANT]
> APIs in _preview_ status in the beta endpoint may change without notice, or may never be promoted to the GA version. Do not use them in production apps.

#### Directory
Get [sensitivity labels](/graph/api/resources/assignedlabel?view=graph-rest-beta) to help protect sensitive data of an Office 365 group and meet compliance policies.

#### Education
- Delta query for [educationSchool](/graph/api/resources/educationschool?view=graph-rest-beta).
- Delta query and property additions for [educationClass](/graph/api/resources/educationclass?view=graph-rest-beta), and [educationUser](/graph/api/resources/educationuser?view=graph-rest-beta).

#### Microsoft Intune
- Intune [May](changelog.md#may-2019) updates 
- Intune [June](changelog.md#june-2019) updates

#### Microsoft Teams
Host [images](/graph/api/resources/chatmessagehostedimage?view=graph-rest-beta) in Microsoft Teams [chat messages](/graph/api/resources/chatmessage?view=graph-rest-beta) 

#### OneDrive and SharePoint
Users can [follow](/graph/api/site-follow?view=graph-rest-beta) or [unfollow](/graph/api/site-unfollow?view=graph-rest-beta) SharePoint sites.


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/en-us/graph/blogs/) for major releases of new features and resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md)
- Suggest and vote for feature requests at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
- [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.