---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

See highlights of what's new in the recent two months in Microsoft Graph, [what's added earlier](whats-new-earlier.md), and how you can [share your ideas](#want-to-stay-in-the-loop). For a detailed list of API-level updates, see the [API changelog](https://developer.microsoft.com/graph/changelog/). 

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to generally available (GA) status. Do not use preview features in production apps.


## April 2021: New in preview only


## March 2021: New and generally available

### Applications
- GA of the [applicationTemplate](/graph/api/resources/applicationtemplate) resource which supports [listing](/graph/api/applicationtemplate-list) applications in the Azure AD application gallery, and [adding](/graph/api/applicationtemplate-instantiate) an instance of such an application to a directory.
- Use app-only permission `Application.ReadWrite.OwnedBy` when [adding](/graph/api/applicationtemplate-instantiate) such an instance.
- Use the **signInAudience** property of [servicePrincipal](/graph/api/resources/serviceprincipal) to get the user accounts supported by the current application.

### Devices and apps | Cloud printing
- GA of the [cloud printing API](universal-print-concept-overview.md) for Universal Print! See the [announcement](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/universal-print-is-ready-for-business/ba-p/2176778), and check out how to [get started with Universal Print](https://docs.microsoft.com/universal-print/fundamentals/universal-print-license).
- [Subscribe to change notifications](universal-print-webhook-notifications.md) on a [print task definition](/graph/api/resources/printtaskdefinition?view=graph-rest-beta&preserve-view=true) or [printer](/graph/api/resources/printer) resource.

### Teamwork
- GA of a few more properties of [teamsAppDefinition](/graph/api/resources/teamsAppDefinition), which represent details of a version of an app in the Microsoft Teams app catalog, including the following:
  - **createdBy**, **description**, **shortDescription**, **lastModifiedDateTime**
  - **publishingState** which can be one of `submitted` and under review, `published`, or `rejected` by the admin
  - **bot** relationship of the [teamworkBot](/graph/api/resources/teamworkbot) type, representing the details of the bot specified in the teams app manifest.
- [List](/graph/api/chatmessage-list-chatmessagehostedcontents) or [get](/graph/api/chatmessagehostedcontent-get) rich content hosted in a [chatMessage](/graph/api/resources/chatmessage), such as images or code snippets.

## March 2021: New in preview only

### Applications
[Create and add self-signed certificates](/graph/api/servicePrincipal-addTokenSigningCertificate?view=graph-rest-beta&preserve-view=true) to your SAML applications. Use this to help enable single sign-on for Azure AD gallery apps in your tenant by allowing Azure AD to sign SAML responses.

### Devices and apps | Cloud printing
Get the most recent date/time (**lastSeenDateTime** property) when a printer interacted with Universal Print.

### Sites and lists
- Support a specific content type or template for documents or document sets in specific site collections, through a set of new properties and methods on the [contentType](/graph/api/resources/contentType?view=graph-rest-beta&preserve-view=true) entity. The methods include the following:
  - [addCopy](/graph/api/contenttype-addcopy?view=graph-rest-beta&preserve-view=true)
  - [associateWithHubSites](/graph/api/contenttype-associatewithhubsites?view=graph-rest-beta&preserve-view=true)
  - [copyToDefaultContentLocation](/graph/api/contenttype-copytodefaultcontentlocation?view=graph-rest-beta&preserve-view=true)
  - [isPublished](/graph/api/contenttype-ispublished?view=graph-rest-beta&preserve-view=true)
  - [publish](/graph/api/contenttype-publish?view=graph-rest-beta&preserve-view=true)
  - [unpublish](/graph/api/contenttype-unpublish?view=graph-rest-beta&preserve-view=true)
- Customize content types by their columns. Columns are represented by the [columnDefinition](/graph/api/resources/columndefinition?view=graph-rest-beta&preserve-view=true) entity, and support the full set of CRUD operations.
- [Get content types of a site that can be applied to a list](/graph/api/site-getApplicableContentTypesForList?view=graph-rest-beta&preserve-view=true).
- Differentiate column types by the following properties in the **columnDefinition** entity: boolean, calculated, choice, currency, dateTime, lookup, number, personOrGroup, text. These properties are mutually exclusive.

### Users
[Get](/graph/api/regionalandlanguagesettings-get?view=graph-rest-beta&preserve-view=true) or [update](/graph/api/regionalandlanguagesettings-update?view=graph-rest-beta&preserve-view=true) a user's [preferences for translating languages](/graph/api/resources/translationpreferences?view=graph-rest-beta&preserve-view=true). For example, whether or not to translate, translate automatically, or prompt before translating specific languages in messages, chats, and web pages, and any [translation overrides](/graph/api/resources/translationlanguageoverride?view=graph-rest-beta&preserve-view=true).


## Want to stay in the loop?

Here are some ways we can engage:

- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
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
