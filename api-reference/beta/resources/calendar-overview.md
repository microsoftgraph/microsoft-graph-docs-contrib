---
title: "Working with calendars and events using the Microsoft Graph API"
description: "Learn how to manage calendars and events with the Calendar API in Microsoft Graph."
ms.localizationpriority: high
author: "mnorman-ms"
doc_type: conceptualPageType
ms.subservice: "outlook"
ms.date: 01/06/2025
---

# Working with calendars and events using the Microsoft Graph API

The Microsoft Graph Calendar API provides [calendar](./calendar.md), [calendarGroup](./calendargroup.md), [event](./event.md), and other resources that enable you to create events and meetings, find workable meeting times, manage attendees, and more. With the Calendar API, you can build a variety of experiences with calendar data.

## Manage events and meetings
The [event](./event.md) type represents a scheduled occurrence on a calendar, such as a meeting, holiday, or time block. Meetings, such as team meetings or one-on-ones, are all represented by **event** resources. You can directly manage the event lifecycle by creating, canceling, and deleting events directly, among other actions. Also, you can create draft event messages, send them, forward them, and create draft replies, and more. By working with event messages, you enable the user to take an active role in creating events and meetings. You also enable them to communicate to meeting originators, other recipients, and attendees. 

### Working directly with events
The Microsoft Graph API provides methods for operations such as creating, updating, deleting, and canceling events. The following table lists some common lifecycle event use cases and the APIs that Microsoft Graph provides for working with them.

| Use case | Verb | Example URL |
|:---------|:-----|:----|
| [Create an event.](../api/user-post-events.md) | POST | /users/{id \| userPrincipalName}/events |
| [Delete an event from a calendar.](../api/event-delete.md)| DELETE | /users/{id \| userPrincipalName}/events/{id} |
| [Cancel an event and send a cancellation message.](../api/event-cancel.md)<br/>**Note**: Specify the optional cancellation message in the request body. | POST | /users/{id \| userPrincipalName}/events/{id}/cancel |
| [Update an event.](../api/event-update.md)<br/>**Note**: Specify the event details to update in the [request body](../api/event-update.md#request-body).  | PATCH | /users/{id \| userPrincipalName}/events/{id} |
| [Accept an event.](../api/event-accept.md) | POST | /users/{id \| userPrincipalName}/events/{id}/accept |
| [Tentatively accept an event.](../api/event-tentativelyaccept.md) | POST | /users/{id \| userPrincipalName}/events/{id}/tentativelyAccept |
| [Decline an event.](../api/event-decline.md) | POST | /users/{id \| userPrincipalName}/events/{id}/decline |
| [Dismiss an event reminder.](../api/event-dismissreminder.md) | POST | /users/{id \| userPrincipalName}/events/{id}/dismissReminder |
| [Snooze an event reminder.](../api/event-snoozereminder.md) | POST | /users/{id \| userPrincipalName}/events/{id}/snoozeReminder |

### Working with event messages
The [eventMessage](./eventmessage.md) resource is an abstract type that represents meeting requests, cancellations, and responses. Responses are generated when the message recipient accepts, tentatively accepts, or declines the request. Handling [eventMessageRequest](./eventmessagerequest.md) and [eventMessageResponse](./eventmessageresponse.md) moves the event through its lifecycle. The messaging APIs in the Calendar API support both MIME and JSON content.

The following table lists some common event message use cases and the APIs for working with them.

| Use case | Verb | Example URL |
|:---------|:-----|:----|
| [Send an existing draft message.](../api/message-send.md) | POST | /users/{id \| userPrincipalName}/messages/{id}/send |
| [Create a draft reply.](../api/message-createreply.md) | POST|  /users/{id \| userPrincipalName}/messages/{id}/createReply |
| [Reply to an event message.](../api/message-reply.md) | POST | /users/{id \| userPrincipalName}/messages/{id}/reply |
| [Create a draft reply-all message.](../api/message-createreplyall.md) | POST | /users/{id \| userPrincipalName}/messages/{id}/createReplyAll |
| [Reply to all in an event message.](../api/message-replyall.md) | POST | /users/{id \| userPrincipalName}/messages/{id}/replyAll |
| [Create a draft forward.](../api/message-createforward.md) | POST | /users/{id \| userPrincipalName}/messages/{id}/createForward |
| [Forward an event message.](../api/message-forward.md) | POST | /users/{id \| userPrincipalName}/messages/{id}/forward |

## Adding and removing attachments
The abstract [attachment](./attachment.md) type serves as a base for files, items, and references that are attached to events, messages, and posts. You can view the attachments for an event, for example, with the [List attachments](../api/event-list-attachments.md) method. You can delete an attachment with the [Delete attachment](../api/attachment-delete.md) method. Events in group calendars don't support attachments.

### Attachment types
The [fileAttachment](./fileattachment.md), [itemAttachment](./itemattachment.md), and [referenceAttatchment](./referenceattachment.md) types represent the three kinds of items that can be attached to calendar items. An **itemAttachment** object represents a contact, event, or message that is directly attached to a user event, message, or post. A **fileAttachment** represents a file that is directly attached. A **referenceAttachment** represents an item, such as a Word document or text file, that is located on a OneDrive for work or school cloud drive or other supported storage location. To see all of the attachments for an [event](./event.md), for example, you can use the [GET /users/{id \| userPrincipalName}/events/{id}/attachments](../api/event-list-attachments.md) endpoint.

### Uploading attachments
You can directly upload attachments less than 3 MB in size to an event for a user with the [Add attachment](../api/event-post-attachments.md) method. For an attachment that is larger than 3 MB, however, you must use the [attachment: createUploadSession](../api/attachment-createuploadsession.md) method to get an upload URL that you use to iteratively upload the attachment.

## Work with calendars, calendar groups, and Outlook categories
With the Calendar API, you can create, read, update, and delete calendars, create and view calendar events, get free/busy information for users, and find suggested meeting times.

The Calendar API provides methods to operate on calendars and calendar groups. The following table shows some use cases with selected URLs.

> **Note**: Many of the methods shown in the following table have other URLs for related use cases. For example, to update a user's calendar in a specific calendar group, send a PATCH operation with the URL `/users/{id | userPrincipalName}/calendarGroups/{id}/calendars/{id}`.

| Use case | Verb | Example URL |
|:---------|:-----|:----|
| [List calendars for a user.](../api/user-list-calendars.md) | GET | /users/{id \| userPrincipalName}/calendars |
| [List a user's calendars in a group.](../api/user-list-calendars.md) | GET | /users/{id \| userPrincipalName}/calendarGroups/{calendarGroupId}/calendars |
| [Create a calendar.](../api/user-post-calendars.md) | POST | /users/{id \| userPrincipalName}/calendars |
| [Get a calendar.](../api/calendar-get.md) | GET | /users/{id \| userPrincipalName}/calendars/{id} |
| [Update a calendar.](../api/calendar-update.md) | PATCH | /users/{id \| userPrincipalName}/calendars/{id} |
| [Delete a calendar.](../api/calendar-delete.md) | DELETE | /users/{id \| userPrincipalName}/calendars/{id} |
| [Create a calendar group.](../api/user-post-calendargroups.md) | POST | /users/{id \| userPrincipalName}/calendarGroups |
| [Get a calendar group.](../api/calendargroup-get.md) | GET | /users/{id \| userPrincipalName}/calendarGroups/{id} |
| [Update a calendar group.](../api/calendargroup-update.md) | PATCH | /users/{id \| userPrincipalName}/calendarGroups/{id} |
| [Delete a calendar group.](../api/calendargroup-delete.md) | DELETE | /users/{id \| userPrincipalName}/calendarGroups/{id} |

### Free/busy data and meeting times
Two of the core functions of calendaring are to find free/busy information and find meeting times in order to schedule meetings. The Calendar API provides the [Get free/busy schedule](../api/calendar-getschedule.md) method that returns a collection of [scheduleInformation](./scheduleinformation.md) objects for a time period and a collection of users, resources, or distribution lists. You can present this information to the user so that they can manually pick an appropriate time at which to schedule a meeting. Use the [user: findMeetingTimes](../api/user-findmeetingtimes.md) method to get a [meetingTimeSuggestionResult](./meetingtimesuggestionsresult.md) that contains a collection of [meetingTimeSuggestion](./meetingtimesuggestion.md) objects that represent detailed information about proposed meeting times for the participants and constraints that you sent.

### Outlook categories
A calendar category is a combination of a description and a **categoryColor** that together define a category for an Outlook item and control how Outlook displays the item. Outlook users can group messages and events, for example, by category. For more information, see [outlookCategory](./outlookcategory.md).

### Calendar permissions
When users share calendars with other users from within Outlook clients, they can control the calendar items that the recipients can view or edit. The [calendarPermissions](../resources/calendar.md#relationships) relationship contains permissions for every user with whom a user shared their calendar. This relationship allows you to, for example, see which users can view free/busy information for the owner, view all calendar information, or edit events on the calendar.

## Work with open extensions and extended properties
[Open extensions](./opentypeextension.md), formerly known as Office 365 data extensions, represent the preferred way to store and access custom data for resources in a user's mailbox. If an Outlook MAPI property isn't available in the Microsoft Graph API metadata, then you can fall back to Outlook extended properties. For more information, see [Outlook extended properties overview](./extended-properties-overview.md).

## Next steps

The Calendar API in Microsoft Graph allows you to build a range of experiences with calendar data. To learn more:

- Drill down on the methods and properties of the resources most helpful to your scenario.
- Try the API in the [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer).

