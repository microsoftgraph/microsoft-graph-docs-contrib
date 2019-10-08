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


## October 2019: New and generally available

### Mail
Use the new **message** parameter to update any writeable [message](/graph/api/resources/message?view=graph-rest-1.0) properties when [replying](/graph/api/message-reply?view=graph-rest-1.0) to a message, for example, [adding a recipient to the reply](/graph/api/message-reply#example
?view=graph-rest-1.0).

### Users
[Get](/graph/api/user-get-mailboxsettings?view=graph-rest-1.0) or [set](/graph/api/user-update-mailboxsettings?view=graph-rest-1.0) a user's preferred date and time formats for the user's mailbox. 

## October 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Groups
Use the **hideFromAddressLists** and **hideFromOutlookClients** properties to control the visibility of a [group](/graph/api/resources/group?view=graph-rest-beta) in certain parts of the Outlook user interface or in an Outlook client.

## September 2019: New and generally available

### Calendar, mail, and group
[Get the raw content of a file, or the MIME content of an item](/graph/api/attachment-get?view=graph-rest-1.0#get-the-raw-contents-of-a-file-or-item-attachment) that has been added as an [attachment](/graph/api/resources/attachment?view=graph-rest-1.0) to an [event](/graph/api/resources/event?view=graph-rest-1.0), [message](/graph/api/resources/message?view=graph-rest-1.0), or group [post](/graph/api/resources/post?view=graph-rest-1.0).

### Calendar, mail, Outlook task, personal contact
Use the [translateExchangeId](/graph/api/user-translateexchangeids?view=graph-rest-1.0) function to convert an Outlook item ID between supported [formats](/graph/api/user-translateexchangeids?view=graph-rest-1.0#exchangeidformat-values), including the Microsoft Graph default ID format and immutable ID format. 

The following resources support ID format conversion:

- [attachment](/graph/api/resources/attachment?view=graph-rest-1.0)
- [contact](/graph/api/resources/contact?view=graph-rest-1.0)
- [event](/graph/api/resources/event?view=graph-rest-1.0)
- [eventMessage](/graph/api/resources/eventmessage?view=graph-rest-1.0)
- [message](/graph/api/resources/message?view=graph-rest-1.0)
- [outlookTask](/graph/api/resources/outlooktask?view=graph-rest-1.0)

### Mail
[Get the MIME content of a message](outlook-get-mime-message.md).

### Microsoft Graph Toolkit
Use the [Microsoft Graph Toolkit](toolkit/overview.md) to develop production apps that offer a consistent Microsoft 365 look-and-feel, and save time in authenticating and accessing data from Microsoft Graph.

## September 2019: New in preview

> [!IMPORTANT]
> Features, including APIs and tools, in _preview_ status may change without notice, and some may never be promoted to GA status. Do not use them in production apps.

### Devices and apps
Intune [September](changelog.md#september-2019) updates

### Files
- Enhanced synchronization support:

  - Use the new **pendingOperations** property to identify operations that may affect the binary content of a [driveItem](/graph/api/resources/driveitem?view=graph-rest-beta).
  - [Restore](/graph/api/driveitem-restore?view=graph-rest-beta) a deleted **driveItem**. 
- Use Secure Hash Algorithm (SHA-256) to enhance [file](/graph/api/resources/file?view=graph-rest-beta) data security and integrity.
- Get or set the orientation of a [photo](/graph/api/resources/photo?view=graph-rest-beta). Setting is supported on OneDrive Personal.

### Identity and access
- Use the new **identities** property and get the identities that a [user](/graph/api/resources/user?view=graph-rest-beta) can use to sign in to an account. Identities can be provided by organizations, or social identity providers such as Facebook, Google, and Microsoft.
- Incremental enhancements for [synchronizing identities](/graph/api/resources/synchronization-overview?view=graph-rest-beta) in a cloud application for a tenant:

  - Store settings for a [synchronization job](/graph/api/resources/synchronization-synchronizationjob?view=graph-rest-beta)
  - Specify a reason to impose [quarantine](/graph/api/resources/synchronization-quarantine?view=graph-rest-beta) on a synchronization job

### Teamwork
Use the **General** channel of a [team](/graph/api/resources/team?view=graph-rest-beta), or customize [member settings](/graph/api/resources/teammembersettings?view=graph-rest-beta) to let team members create private channels in the **team**.

### Users
- Get or update the identities with which a [user](/graph/api/resources/user?view=graph-rest-beta) can sign in to an account. These identities can be provided by business organizations, or by social identity providers such as Facebook, Google, and Microsoft.
- Get or update a user's preferred date and time format [settings for the mailbox](/graph/api/resources/mailboxsettings?view=graph-rest-beta).


## Want to stay in the loop?
- Are there scenarios you'd like Microsoft Graph to support? Suggest and vote for new features at [Microsoft Graph User Voice](https://microsoftgraph.uservoice.com/forums/920506-microsoft-graph-feature-requests).
- Be an active member in the Microsoft Graph community! [Join](https://aka.ms/microsoftgraphcall) the monthly Microsoft Graph community call.
- Sign up for the [Office 365 developer program](https://developer.microsoft.com/en-us/office/dev-program), get a free Office 365 subscription, and start developing!


## See also
- Check out the [Microsoft Graph developer blog](https://developer.microsoft.com/en-us/graph/blogs/) periodically for release announcements and helpful resources.
- Browse details of Microsoft Graph API additions, and API behavior updates in the [changelog](changelog.md).
- Find [highlights of earlier releases](whats-new-earlier.md).
- Learn more about [versioning, support, and breaking change policies for Microsoft Graph](versioning-and-support.md).

