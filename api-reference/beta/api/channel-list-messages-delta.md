---
title: "List channel messages: delta"
description: "Retrieve the list of messages (without the replies) in a channel of a team. By using delta query, you can get new or updated messages in a channel. To get the replies for a message, call the list message replies or the get message reply API."
localization_priority: Priority
author: "hikum"
ms.prod: "microsoft-teams"
---

# List channel messages: delta

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [messages](https://docs.microsoft.com/en-us/graph/api/resources/chatmessage?view=graph-rest-beta) (without the replies) in a [channel](https://docs.microsoft.com/en-us/graph/api/resources/channel?view=graph-rest-beta) of a [team](https://docs.microsoft.com/en-us/graph/api/resources/team?view=graph-rest-beta). By using delta query, you can get new or updated messages in a channel.

Delta query supports both full synchronization that retrieves all the messages in the specified channel, and incremental synchronization that retrieves those messages that have been added or changed in the channel since the last synchronization. Typically, you would do an initial full synchronization, and subsequently, get incremental changes to that calendar view periodically.

To get the replies for a message, call the [list message replies](https://docs.microsoft.com/en-us/graph/api/channel-get-messagereply?view=graph-rest-beta) or the [get message reply API](https://docs.microsoft.com/en-us/graph/api/channel-list-messagereplies?view=graph-rest-beta).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission Type                        |Permissions (from least to most privileged)  |
|---------------------------------------|---------------------------------------------|
|Delegated (work or school account)     |Group.Read.All, Group.ReadWrite.All          |
|Delegated (personal Microsoft account) |Not Supported                                |
|Application                            |Group.Read.All, Group.ReadWrite.All          |

## Description
A GET request with the delta function returns either:

- A `nextLink` (that contains a URL with a **delta** function call and a `skipToken`), or
- A `deltaLink` (that contains a URL with a **delta** function call and `deltaToken`).

State tokens are completely opaque to the client. To proceed with a round of change tracking, simply copy and apply the `nextLink` or `deltaLink` URL returned from the last GET request to the next delta function call for that same calendar view. A `deltaLink` returned in a response signifies that the current round of change tracking is complete. You can save and use the `deltaLink` URL when you begin the next round.

See the example below to learn how to use these `nextLink` and `deltaLink` URLs.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teams/{id}/channels/{id}/messages/delta
```

## Optional query parameters

The following [OData query parameters](/graph/query-parameters) are supported by this API:
- `$top`, represents maximum number of messages to fetch in a call. The upper limit is **50**.
- `$skip`, represents how many messages to skip at the beginning of the list.
- `$filter` allows returning messages that meet a certain criteria. The only property that supports filtering is `lastModifiedDateTime`, and only the **gt** and **ge** operators are supported. For example, ```../messages/delta?$filter=lastModifiedDateTime ge 2019-02-27T07:13:28.000z``` will fetch any messages created or changed after the specified date time.

### Request headers
| Header        | Value                     |
|---------------|---------------------------|
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json          |

### Request Body
Do not supply a request body for this method.

### Request Response
If successful, this method returns a `200 OK` response code and a collection of [chatmessage](https://docs.microsoft.com/en-us/graph/api/resources/chatmessage?view=graph-rest-beta) objects in the response body.

## Example
The following example shows a series of 3 requests to synchronize the messages in the given channel. There are 5 messages in the channel.

- Step 1: [sample initial request](#step-1-sample-initial-request) and [response](#sample-initial-response).
- Step 2: [sample second request](#step-2-sample-second-request) and [response](#sample-second-response)
- Step 3: [sample third request](#step-3-sample-third-request) and [final response](#sample-third-and-final-response).

For brevity, the sample responses show only a subset of the properties for an event. In an actual call, most event properties are returned.

See also what you'll do in the [next round](placeholder for link the the section below).

### Step 1: sample initial request
In this example, the channel messages are being synchronized for the first time, so the initial sync request does not include any state token. This round will return all the events in that calendar view.

The request specifies the optional request header, odata.top, returning 2 events at a time.

<!-- {
  "blockType": "request",
  "name": "get_channel_messages_delta"
}-->
```
GET /teams/{id}/channels/{id}/messages/delta?$top=2
```

### Sample initial response
The response includes two messages and a `@odata.nextLink` response header with a `skipToken`. The `nextLink` URL indicates there are more messages in the channel to get.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
} -->
```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "/$metadata#Collection(Microsoft.Teams.GraphSvc.chatMessage)",
    "@odata.nextLink": "/teams('id')/channels('id')/messages/delta?$skiptoken=c3RhcnRUaW1lPTE1NTEyMTUzMjU0NTkmcGFnZVNpemU9MjA%3d",
    "value": [
		{
			"id": "id-value",
			"replyToId": "id-value",
			"from" : {
				"user": { 
					"id": "id-value",
					"displayName": "John Doe"
				}  
			},
			"etag": "id-value",
			"messageType": "message",
			"createdDateTime": "2019-03-06T07:40:20.152Z",
			"lastModifiedDateTime": "2019-03-06T07:40:20.152Z",
			"body": {
				"content": "Hello World",
				"contentType": "Text"
			},
			"attachments": [],
			"mentions": [],
			"importance": "normal",
			"reactions": [],
			"locale": "en-us"
		},
		{
			"id": "id-value",
			"replyToId": "id-value",
			"from" : {
				"user": { 
					"id": "id-value",
					"displayName": "John Doe"
				}  
			},
			"etag": "id-value",
			"messageType": "message",
			"createdDateTime": "2019-03-06T08:40:20.152Z",
			"lastModifiedDateTime": "2019-03-06T08:40:20.152Z",
			"body": {
				"content": "Hello World",
				"contentType": "Text"
			},
			"attachments": [],
			"mentions": [],
			"importance": "normal",
			"reactions": [],
			"locale": "en-us"
		}
	]
}
```

### Step 2: sample second request
The second request specifies the `nextLink` URL returned from the previous response. Notice that it no longer has to specify the same top parameters as in the initial request, as the `skipToken` in the `nextLink` URL encodes and includes them.

<!-- {
  "blockType": "request",
  "name": "get_channel_messages_delta"
}-->
```
GET /teams/{id}/channels/{id}/messages/delta?$skiptoken=c3RhcnRUaW1lPTE1NTEyMTUzMjU0NTkmcGFnZVNpemU9MjA%3d
```

### Sample second response
The second response returns the next 2 messages and a `@odata.nextLink` response header with a `skipToken`, indicates there are more messages in the channel to get.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
} -->
```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "/$metadata#Collection(Microsoft.Teams.GraphSvc.chatMessage)",
    "@odata.nextLink": "/teams('id')/channels('id')/messages/delta?$skiptoken=c3RhcnRUaW1lPTE1NTEyODcyMzY2NzgmcGFnZVNpemU9MjA%3d",
    "value": [
		{
			"id": "id-value",
			"replyToId": "id-value",
			"from" : {
				"user": { 
					"id": "id-value",
					"displayName": "John Doe"
				}  
			},
			"etag": "id-value",
			"messageType": "message",
			"createdDateTime": "2019-03-06T09:40:20.152Z",
			"lastModifiedDateTime": "2019-03-06T09:40:20.152Z",
			"body": {
				"content": "Hello World",
				"contentType": "Text"
			},
			"attachments": [],
			"mentions": [],
			"importance": "normal",
			"reactions": [],
			"locale": "en-us"
		},
		{
			"id": "id-value",
			"replyToId": "id-value",
			"from" : {
				"user": { 
					"id": "id-value",
					"displayName": "John Doe"
				}  
			},
			"etag": "id-value",
			"messageType": "message",
			"createdDateTime": "2019-03-06T09:50:20.152Z",
			"lastModifiedDateTime": "2019-03-06T09:50:20.152Z",
			"body": {
				"content": "Hello World",
				"contentType": "Text"
			},
			"attachments": [],
			"mentions": [],
			"importance": "normal",
			"reactions": [],
			"locale": "en-us"
		}
	]
}
```

### Step 3: sample third request
The third request continues to use the latest `nextLink` returned from the last sync request.

<!-- {
  "blockType": "request",
  "name": "get_channel_messages_delta"
}-->
```
GET /teams/{id}/channels/{id}/messages/delta?$skiptoken=c3RhcnRUaW1lPTE1NTEyODcyMzY2NzgmcGFnZVNpemU9MjA%3d
```

### Sample third and final response
The third response returns the only remaining messages in the channel and a `@odata.deltaLink` response header with a `deltaToken` which indicates that all messages in the channel have been read. Save and use the `deltaLink` URL to query for any new messages starting from this point in the next round.

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
} -->
```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "/$metadata#Collection(Microsoft.Teams.GraphSvc.chatMessage)",
    "@odata.deltaLink": "/teams('id')/channels('id')/messages/delta?$deltatoken=c3RhcnRUaW1lPTE1NTEyODc1ODA0OTAmcGFnZVNpemU9MjA%3d",
    "value": [
		{
			"id": "id-value",
			"replyToId": "id-value",
			"from" : {
				"user": { 
					"id": "id-value",
					"displayName": "John Doe"
				}  
			},
			"etag": "id-value",
			"messageType": "message",
			"createdDateTime": "2019-03-06T10:40:20.152Z",
			"lastModifiedDateTime": "2019-03-06T10:40:20.152Z",
			"body": {
				"content": "Hello World",
				"contentType": "Text"
			},
			"attachments": [],
			"mentions": [],
			"importance": "normal",
			"reactions": [],
			"locale": "en-us"
		}
	]
}
```

### The next round: sample request
Using the `deltaLink` from the last request in the last round, you will be able to get only those messages that have changed (by being added, or updated) in that channel since then. Your first request in the next round will look like the following, assuming you prefer to keep the same maximum page size in the response:

<!-- {
  "blockType": "request",
  "name": "get_channel_messages_delta"
}-->
```
GET /teams/{id}/channels/{id}/messages/delta?$deltatoken=c3RhcnRUaW1lPTE1NTEyODc1ODA0OTAmcGFnZVNpemU9MjA%3d
```

### The next round: sample response

>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
} -->
```
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "/$metadata#Collection(Microsoft.Teams.GraphSvc.chatMessage)",
    "@odata.deltaLink": "/teams('id')/channels('id')/messages/delta?$deltatoken=c3RhcnRUaW1l5Ti1NTEyODc1ODB0OTAyXGFdZVNpemU9MjA%3d",
    "value": [
		{
			"id": "id-value",
			"replyToId": "id-value",
			"from" : {
				"user": { 
					"id": "id-value",
					"displayName": "John Doe"
				}  
			},
			"etag": "id-value",
			"messageType": "message",
			"createdDateTime": "2019-03-06T10:40:20.152Z",
			"lastModifiedDateTime": "2019-03-06T10:40:20.152Z",
			"body": {
				"content": "Hello World",
				"contentType": "Text"
			},
			"attachments": [],
			"mentions": [],
			"importance": "normal",
			"reactions": [],
			"locale": "en-us"
		}
	]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get channel messages: delta",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/api/channel-list-messages.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
