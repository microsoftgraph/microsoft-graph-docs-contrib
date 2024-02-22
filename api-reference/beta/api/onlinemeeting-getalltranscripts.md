---
title: "onlineMeeting: getAllTranscripts"
description: "Get transcripts from all online meetings that a user is an organizer of."
author: "jacobsatora"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# onlineMeeting: getAllTranscripts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all transcripts from scheduled [onlineMeeting](../resources/onlinemeeting.md) instances for which the specified user is the organizer. This API currently doesn't support getting call transcripts from channel meetings.

You can apply the [delta](calltranscript-delta.md) function on **getAllTranscripts** to synchronize and get [callTranscript](../resources/calltranscript.md) resources as they are added for **onlineMeeting** instances organized by the specified user.

Delta query supports both full synchronization that gets all the transcripts for online meetings organized by the user, and incremental synchronization that gets transcripts that have been added since the last synchronization. Typically, you would do an initial full synchronization, and then get incremental changes to that transcript view periodically.

Find more information in the [delta query](/graph/delta-query-overview) documentation. For additional examples, see [callTranscript: delta](calltranscript-delta.md).

To learn more about using the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onlinemeeting_getalltranscripts" } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-getalltranscripts-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/onlineMeetings/getAllTranscripts?$filter=meetingOrganizerId%20eq%20'{id}'
```

>**Note:** If you don't specify a filter on **meetingOrganizerId**, the request fails.

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [callTranscript](../resources/calltranscript.md) objects in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["8b081ef6-4792-4def-b2c9-c363a1bf41d5"],
  "name": "get_alltranscipts"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts?$filter=meetingOrganizerId%20eq%20'8b081ef6-4792-4def-b2c9-c363a1bf41d5'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-alltranscipts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-alltranscipts-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-alltranscipts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-alltranscipts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-alltranscipts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-alltranscipts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-alltranscipts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-alltranscipts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "name": "get_alltranscipts",
  "@odata.type": "microsoft.graph.callTranscript",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(callTranscript)",
   "@odata.count":10,
   "@odata.nextLink":"https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts?$skiptoken=GGXvkS7mbjFAe9Uidm2D70e58K-BOnoJadAqkZEJmoLprr5eSP1hQPlb3dJ1AVz3xCYKxov6hSEJhsasyg",
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

## Related content

- [Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
- [Delta query overview](/graph/delta-query-overview) 
- [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content)
