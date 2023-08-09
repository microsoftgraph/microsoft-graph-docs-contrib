---
title: "onlineMeeting: getAllTranscripts"
description: "Get transcripts from all online meetings that a user is a participant in."
author: "jacobsatora"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# onlineMeeting: getAllTranscripts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all transcripts from private, scheduled [online meetings](../resources/onlinemeeting.md) that a user is an organizer of.

To learn more about using the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).


## Permissions

The following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)| Not supported |
|Delegated (personal Microsoft account) | Not supported |
|Application | OnlineMeetingTranscript.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/onlineMeetings/getAllTranscripts?$filter=MeetingOrganizerId%20eq%20'{id}'
```

>**Note:** If you don't specify a **MeetingOrganizerId** the request will fail.

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and a list of [callTranscripts](../resources/calltranscript.md) in the response body.

## Example

### Request

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeeting/getAllTranscripts?$filter=MeetingOrganizerId%20eq%20'8b081ef6-4792-4def-b2c9-c363a1bf41d5'
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callTranscript"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(callTranscript)",
   "@odata.count":10,
   "@odata.nextLink":"https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeeting/getAllTranscripts?$skiptoken=GGXvkS7mbjFAe9Uidm2D70e58K-BOnoJadAqkZEJmoLprr5eSP1hQPlb3dJ1AVz3xCYKxov6hSEJhsasyg",
   "value":[
      {
            "@odata.type": "#microsoft.graph.callTranscript",
            "meetingId": "MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/transcripts/MSMjMCMjZDExYWQ2OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-03T22:29:42.6514074Z",
            "id": "MSMjMCMjZDExYWQ2OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl"
      }
   ]
}
```

### Change tracking: /delta

By using delta query, you can get newly added transcripts.

Delta query supports both full synchronization that retrieves all the transcripts for online meetings organized by a given user, and incremental synchronization that retrieves transcripts that have been added since the last synchronization. Typically, you would do an initial full synchronization, and then get incremental changes to that transcript view periodically.

A GET request with the delta function returns either:

- A `@odata.nextLink` (that contains a URL with a **delta** function call and a `skipToken`), or
- A `@odata.deltaLink` (that contains a URL with a **delta** function call and `deltaToken`).

State tokens are completely opaque to the client. To proceed with a round of change tracking, simply copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL returned from the last GET request to the next delta function call for that same transcript view. A `@odata.deltaLink` returned in a response signifies that the current round of change tracking is complete. You can save and use the `@odata.deltaLink` URL when you begin the to retrieve additional changes (transcripts added after acquiring `@odata.deltaLink`).

For more information, see the [delta query](/graph/delta-query-overview) documentation.
For additional examples, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

## See also

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

[Delta query overview](/graph/delta-query-overview) 

[Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content)
