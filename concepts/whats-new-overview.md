---
title: "What's new in Microsoft Graph"
description: "What's currently new in Microsoft Graph"
author: "angelgolfer-ms"
localization_priority: Priority
---

# What's new in Microsoft Graph

Did you know some new features in Microsoft Graph originate as popular requests from the developer community? 

The Microsoft Graph team regularly evaluates customer needs and releases new features in the following order:

1. Debut in **_preview_** status. Any related REST API updates are in the beta endpoint (`https://graph.microsoft.com/beta`).  

2. Promoted to **_general availability_ (GA)** status, if sufficient feedback indicates viability. Any related REST API updates are added to the v1.0 endpoint (`https://graph.microsoft.com/v1.0`). 

Below, see highlights of what's new in Microsoft Graph, and how you can [share your ideas](#want-to-stay-in-the-loop). For details of API updates, see the [September](changelog.md#september-2019) and [August](changelog.md#august-2019) sections of the API changelog. 


## November 2019: New and generally available



## November 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Calendar

- Programmatic calendar sharing is in closer parity with the Outlook user experience, in addition to tracking just the current user's permissions and sharing status with a calendar:
  - For each [calendar](/graph/api/resources/calendar?view=graph-rest-beta), manage the [permissions](/graph/api/resources/calendarpermission?view=graph-rest-beta) of each user with whom the calendar is shared. 
  - For each [mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta), specify whether a delegate, mailbox owner, or both receive meeting messages and meeting responses. 
- Additional online meeting support:
  - For each **calendar**, specify the allowed and the default online meeting providers.
  - Create or update an [event](/graph/api/resources/event?view=graph-rest-beta) to be available online, providing details for attendees to join the meeting online. 
  - In particular, the new **onlineMeetingProvider** and **onlineMeeting** properties of **event** provide better support for Microsoft Teams as an online meeting provider, a workaround for known issues with the **onlineMeetingUrl** property.
- [Set rich properties](/graph/api/place-update?view=graph-rest-beta) that represent a [room](/graph/api/resources/room?view=graph-rest-beta) or [room list](/graph/api/resources/roomlist?view=graph-rest-beta).


### People and workplace intelligence

Debut of the [profile](/graph/api/resources/profile?view=graph-rest-beta) resource which is a rich representation of the next generation of people entities in Microsoft services. This resource relate to common and practical people attributes, including information for any tenant [account](/graph/api/resources/useraccountinformation?view=graph-rest-beta), [meaningful dates](/graph/api/resources/personanniversary?view=graph-rest-beta), [education](/graph/api/resources/educationalactivity?view=graph-rest-beta), [employment positions](/graph/api/resources/workposition?view=graph-rest-beta), [interests](/graph/api/resources/personinterest?view=graph-rest-beta), [language](/graph/api/resources/languageproficiency?view=graph-rest-beta) and [skill](/graph/api/resources/skillproficiency?view=graph-rest-beta) proficiencies, [project participation](/graph/api/resources/projectparticipation?view=graph-rest-beta), [web site association](/graph/api/resources/personwebsite?view=graph-rest-beta), and other contact information.


### Search

Debut of the Microsoft Search API which allows app users to get more up-to-date, personalized, and relevant search results powered by Microsoft Graph. By default, the [query](/graph/api/search-query?view=graph-rest-beta) capability searches Outlook messages and events, and OneDrive and SharePoint files in the Microsoft cloud. Apps can use [connectors](/microsoftsearch/connectors-overview) to include data outside of the Microsoft cloud, such as an organization's human resources database or product catalog, and seamlessly [query](/graph/api/search-query?view=graph-rest-beta) the external data. The [Microsoft Graph connectors gallery](/microsoftsearch/connectors-gallery) lists a number of ready-to-use connectors. Alternatively, you can [build connectors](/graph/api/resources/indexing-api-overview?view=graph-rest-beta#common-use-cases), index external custom items and files, and query the specific external data source as well.


(/graph/api/resources/?view=graph-rest-beta)

## October 2019: New and generally available

### Mail
Use the new **message** parameter to update any writeable [message](/graph/api/resources/message?view=graph-rest-1.0) properties when [replying](/graph/api/message-reply?view=graph-rest-1.0) to a message, for example, [adding a recipient to the reply](/graph/api/message-reply#example?view=graph-rest-1.0).

### Users
[Get](/graph/api/user-get-mailboxsettings?view=graph-rest-1.0) or [set](/graph/api/user-update-mailboxsettings?view=graph-rest-1.0) a user's preferred date and time format [settings for the user's mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-1.0). 

## October 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Calendar

Meeting organizers can [allow invitees to propose alternate meeting times](outlook-calendar-meeting-proposals.md). When receiving a meeting response that includes a proposed alternate time, the organizer can decide to accept the proposal and [update](/graph/api/event-update?view=graph-rest-beta) the meeting time.

### Groups
Use the **hideFromAddressLists** and **hideFromOutlookClients** properties to control the visibility of a [group](/graph/api/resources/group?view=graph-rest-beta) in certain parts of the Outlook user interface or in an Outlook client.

### Mail

[Attach large files up to 150MB](outlook-large-attachments.md) to a [message](/graph/api/resources/message?view=graph-rest-beta) instance, by creating an [upload session](/graph/api/resources/uploadsession?view=graph-rest-beta), and iteratively uploading ranges of the file until all the bytes of the file have been uploaded. 

### Search

With [Microsoft Search](search-concept-overview.md) becoming available to all Office 365 users, use the [search API](/graph/api/resource/search-api-overview?view=graph-rest-beta) to query your data. The [indexing API](/graph/api/resource/indexing-api-overview?view=graph-rest-beta) also provides a way to ingest external data into Microsoft Search.


## Want to stay in the loop?
- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/en-us/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/en-us/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).

