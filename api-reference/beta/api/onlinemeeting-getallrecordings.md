---
title: "onlineMeeting: getAllRecordings"
description: "Get recordings from all online meetings that a user is an organizer of."
author: "jacobsatora"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# onlineMeeting: getAllRecordings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all recordings from scheduled [onlineMeeting](../resources/onlinemeeting.md) instances for which the specified user is the organizer. This API currently does not support getting call recordings from channel meetings.

You can apply the [delta](callrecording-delta.md) function on **getAllRecordings** to synchronize and get [callRecording](../resources/callrecording.md) resources as they are added for **onlineMeeting** instances organized by the specified user.

Delta query supports both full synchronization that gets all the recordings for online meetings organized by the user, and incremental synchronization that gets recordings that have been added since the last synchronization. Typically, you would do an initial full synchronization, and then get incremental changes to that recording view periodically.

Find more information in the [delta query](/graph/delta-query-overview) documentation. For additional examples, see [callRecording: delta](callrecording-delta.md).

To learn more about using the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onlinemeeting_getallrecordings" } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-getallrecordings-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/onlineMeetings/getAllRecordings?$filter=meetingOrganizerId%20eq%20'{id}'
```

>**Note:** If you don't specify a filter on **meetingOrganizerId**, the request fails.

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a list of [callRecording](../resources/callrecording.md) objects in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["8b081ef6-4792-4def-b2c9-c363a1bf41d5"],
  "name": "get_allrecordings"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeeting/getAllRecordings?$filter=meetingOrganizerId%20eq%20'8b081ef6-4792-4def-b2c9-c363a1bf41d5'
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-allrecordings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_allrecordings",
  "@odata.type": "microsoft.graph.callRecording",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(callRecording)",
   "@odata.count":10,
   "@odata.nextLink":"https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeeting/getAllRecordings?$skiptoken=GGXvkS7mbjFAe9Uidm2D70e58K-BOnoJadAqkZEJmoLprr5eSP1hQPlb3dJ1AVz3xCYKxov6hSEJhsasyg",
   "value":[
      {
            "@odata.type": "#microsoft.graph.callRecording",
            "meetingId": "MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "recordingContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/recordings/MSMjMCMjZDExYWQ2OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-03T22:29:42.6514074Z",
            "id": "MSMjMCMjZDExYWQ2OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl"
      }
   ]
}
```

## Related content

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)

[Delta query overview](/graph/delta-query-overview) 

[Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content)
