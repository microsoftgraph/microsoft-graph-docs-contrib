---
author: "iamgirishck"
ms.localizationpriority: high
ms.subservice: onenotepage
ms.topic: include
---
<!-- markdownlint-disable MD041 -->

### Limits per mailbox

The Outlook service applies limits to each app ID and mailbox combination - that is, a specific app accessing a specific user or group mailbox. Exceeding the limit for one mailbox doesn't affect the ability of the application to access another mailbox.

| Limit                                                             | Applies to              |
|-------------------------------------------------------------------|-------------------------|
| 10,000 API requests in a 10-minute period                         | v1.0 and beta endpoints |
| Four concurrent requests                                             | v1.0 and beta endpoints |
| 150 megabytes (MB) upload (PATCH, POST, PUT) in a 5-minute period | v1.0 and beta endpoints |

### Outlook service resources

| API                                                      | Resources      |
|------------------------------------------------------------|-----------------|
| Search API (preview)                  | <li>[External item (Microsoft Search)](/graph/api/resources/externalconnectors-externalitem) |
| Profile API                                      | <li>[Photo](/graph/api/resources/profilephoto)   |
| Calendar API | <li>[event](/graph/api/resources/event) <li> [eventMessage](/graph/api/resources/eventmessage) <li> [calendar](/graph/api/resources/calendar) <li>  [calendarGroup](/graph/api/resources/calendargroup) <li> [outlookCategory](/graph/api/resources/outlookcategory) <li> [attachment](/graph/api/resources/attachment) <li> [place (preview)](/graph/api/resources/place)   |
| Mail API                                      | <li>  [message](/graph/api/resources/message) <li> [mailFolder](/graph/api/resources/mailfolder) <li> [mailSearchFolder](/graph/api/resources/mailsearchfolder) <li> [messageRule](/graph/api/resources/messagerule) <li> [outlookCategory](/graph/api/resources/outlookcategory) <li> [attachment](/graph/api/resources/attachment)|
| Personal contacts API | <li>[contact](/graph/api/resources/contact) <li> [contactFolder](/graph/api/resources/contactfolder) <li> [outlookCategory](/graph/api/resources/outlookcategory)|
| Social and workplace intelligence | <li>[person](/graph/api/resources/person) |
| To-do tasks API (preview) | <li>[outlookTask](/graph/api/resources/outlooktask) <li> [outlookTaskFolder](/graph/api/resources/outlooktaskfolder) <li>[outlookTaskGroup](/graph/api/resources/outlooktaskgroup) <li> [outlookCategory](/graph/api/resources/outlookcategory) <li> [attachment](/graph/api/resources/attachment)|

### Outlook service limits for JSON batching

When an app makes a [JSON batch](/graph/json-batching) request that consists of multiple, _unordered_ individual requests to the Outlook service, by default, Microsoft Graph sends the Outlook service up to four individual requests from the batch at a time, regardless of the target mailboxes of those requests. The Outlook service can execute these requests in parallel at any point, also irrespective of the target mailbox. Since Microsoft Graph sends only up to four requests to run in parallel, the execution of that batch stays within [Outlook's concurrency limits for the same mailbox](#limits-per-mailbox), regardless of the app used.

Alternatively, an app can use the [dependsOn](/graph/json-batching#sequencing-requests-with-the-dependson-property) property to order requests within a batch. Microsoft Graph sends the Outlook service one request from the batch at a time following the specified order, and Outlook executes each individual request in the batch sequentially.
  
In other words, when targeting the _same mailbox_, apps that allow multiple batch requests to run in parallel can use either of the following approaches: 
- If the individual requests don't have to be ordered, have individual requests from a single batch run concurrently. 
- Use the `dependsOn` property to order requests in a batch, and have up to four such batch requests run concurrently.
