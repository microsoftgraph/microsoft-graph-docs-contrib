---
title: "callTranscript: delta"
description: "Get a set of callTranscript resources that have been added for onlineMeeting instances organized by the specified user."
ms.localizationpriority: medium
doc_type: apiPageType
author: "JacobSatora"
ms.prod: "microsoft-teams"
---

# callTranscript: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of [callTranscript](../resources/calltranscript.md) resources that have been added for [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.

Delta query supports both full synchronization that gets all the transcripts for online meetings organized by a given user, and incremental synchronization that gets transcripts that have been added since the last synchronization. Typically, you would do an initial full synchronization, and then get incremental changes to that transcript view periodically.

A GET request with the delta function returns either:

- A `@odata.nextLink` (that contains a URL with a **delta** function call and a `skipToken`), or
- A `@odata.deltaLink` (that contains a URL with a **delta** function call and `deltaToken`).

State tokens are completely opaque to the client. To proceed with a round of change tracking, simply copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL returned from the last GET request to the next **delta** function call for that same transcript view. A `@odata.deltaLink` returned in a response signifies that the current round of change tracking is complete. You can save and use the `@odata.deltaLink` URL when you start the next round of synchronization to get the new transcripts that have been added after acquiring `@odata.deltaLink`..

For more information, see the [delta query](/graph/delta-query-overview) documentation.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "calltranscript_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/calltranscript-delta-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/onlineMeetings/getAllTranscripts/delta?$filter=meetingOrganizerId%20eq%20'{id}'
```
>**Note:** If you don't specify a **meetingOrganizerId**, the request fails.

## Query parameters

Tracking changes in call transcripts incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltatoken` and `$skiptoken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the `@odata.nextLink` or `@odata.deltaLink` URL provided in the response.

In subsequent requests, copy and apply the `@odata.nextLink` or `@odata.deltaLink` URL from the previous response, as that URL already includes the encoded parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| `$deltatoken` | string | A [state token](/graph/delta-query-overview) returned in the `@odata.deltaLink` URL of the previous **delta** function call, indicating the completion of that round of change tracking. Save and apply the entire `@odata.deltaLink` URL including this token in the first request of the next round of change tracking for that collection.|
| `$skiptoken` | string | A [state token](/graph/delta-query-overview) returned in the `@odata.nextLink` URL of the previous **delta** function call, indicating that there are further changes to be tracked. |

## Request headers
| Header        | Value                     |
|---------------|---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [callTranscript](../resources/calltranscript.md) objects in the response body. The response also includes an `@odata.nextLink` URL or an `@odata.deltaLink` URL.

## Examples

### Example 1: Initial round of synchronization

The following example shows a series of three requests to synchronize the call transcripts available for all the online meetings organized by the user.

- Step 1: [initial request](#initial-request) and [response](#initial-response).
- Step 2: [second request](#second-request) and [response](#second-response)
- Step 3: [third request](#third-request) and [final response](#third-and-final-response-for-the-round).

See also what you'll do in the [next round to get additional transcripts](#example-2-next-round-to-get-additional-transcripts).

#### Initial request

In this example, the call transcripts are being synchronized for the first time, so the initial sync request doesn't include any state token. This round returns all transcripts available at the time.

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts/delta?$filter=meetingOrganizerId%20eq%20'8b081ef6-4792-4def-b2c9-c363a1bf41d5'
```

#### Initial response

The response includes two call transcripts and a `@odata.nextLink` response header with a `skipToken`. The `@odata.nextLink` URL indicates there are more call transcripts to retrieve.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callTranscript)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(callTranscript)",
   "@odata.count": 2,
   "@odata.nextLink": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts?$skiptoken=GGXvkS7mbjFAe9Uidm2D70e58K-BOnoJadAqkZEJmoLprr5eSP1hQPlb3dJ1AVz3xCYKxov6hSEJhsasyg",
   "value":[
      {
            "@odata.type": "#microsoft.graph.callTranscript",
            "meetingId": "MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/transcripts/MSMjMCMjZDExYWQ2OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-03T22:29:42.6514074Z",
            "id": "MSMjMCMjZDExYWQ2OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl"
      },
      {
            "@odata.type": "#microsoft.graph.callTranscript",
            "meetingId": "MSo4YjA5MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA5MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19OMUUxWTFJME56QXRabVF5T0MxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/transcripts/MSMjMCMjZDExYWQ3OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-05T11:24:30.6414074Z",
            "id": "MSMjMCMjZDExYWQ3OGEtMWVhYS00MGFjLWJkZWItMTExNjMyNjExYzRl"
      }
   ]
}
```

#### Second request

The second request specifies the `@odata.nextLink` URL returned from the previous response. Notice that it no longer has to specify the same query parameters as in the initial request, as the `skipToken` in the `@odata.nextLink` URL encodes and includes them.


<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts?$skiptoken=GGXvkS7mbjFAe9Uidm2D70e58K-BOnoJadAqkZEJmoLprr5eSP1hQPlb3dJ1AVz3xCYKxov6hSEJhsasyg
```

#### Second response

The second response returns the next 2 call transcripts and a `@odata.nextLink` property with a `skipToken` which indicates there are more transcripts.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callTranscript)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(callTranscript)",
   "@odata.count": 2,
   "@odata.nextLink": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts?$skiptoken=GGXve9Uidm2D70kS7mbjFAe58K-BOnPlb3dJ1AVz3xCYmoLprr5eSP1hQKxov6hSEJhsasyg",
   "value":[
      {
            "@odata.type": "#microsoft.graph.callTranscript",
            "meetingId": "MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19IMU4xMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19IMU4xMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/transcripts/MSMjMCMjZDMzYWQzM2EtMmVhYS0zM2FjLWJkZWItMjMzNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-11T21:29:42.6514074Z",
            "id": "MSMjMCMjZDMzYWQzM2EtMmVhYS0zM2FjLWJkZWItMjMzNjMyNjExYzRl"
      },
      {
            "@odata.type": "#microsoft.graph.callTranscript",
            "meetingId": "MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19BQkMxRDFEMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19BQkMxRDFEMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/transcripts/MSMjMCMjZDIyYWQyMmEtMmVhYS0yMmFjLWJkZWItMjIyNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-12T11:24:30.6414074Z",
            "id": "MSMjMCMjZDIyYWQyMmEtMmVhYS0yMmFjLWJkZWItMjIyNjMyNjExYzRl"
      }
   ]
}
```

#### Third request

The third request continues to use the latest `@odata.nextLink` returned from the last sync request.

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts?$skiptoken=GGXve9Uidm2D70kS7mbjFAe58K-BOnPlb3dJ1AVz3xCYmoLprr5eSP1hQKxov6hSEJhsasyg
```

#### Third and final response for the round

The third response returns the only remaining transcripts and a `@odata.deltaLink` property with a `deltaToken` which indicates that all transcripts have been returned. Save and use the `@odata.deltaLink` URL to query for any new transcript that is added from this point onwards.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callTranscript)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(callTranscript)",
   "@odata.count": 1,
   "@odata.deltaLink": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts?$deltatoken=aQdvS1VwGCSRxVmZJqykmDik_JIC44iCZpv-GLiA2VnFuE5yG-kCEBROb2iaPT_y_eMWVQtBO_ejzzyIxl00ji-tQ3HzAbW4liZAVG88lO3nG_6-MBFoHY1n8y21YUzjocG-Cn1tCNeeLPLTzIe5Dw.EP9gLiCoF2CE_e6l_m1bTk2aokD9KcgfgfcLGqd1r_4",
   "value":[
      {
            "@odata.type": "#microsoft.graph.callTranscript",
            "meetingId": "MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19IMU4xMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19IMU4xMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/transcripts/MSMjMCMjZDMzYWQzM2EtMmVhYS0zM2FjLWJkZWItMjMzNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-11T21:29:42.6514074Z",
            "id": "MSMjMCMjZDMzYWQzM2EtMmVhYS0zM2FjLWJkZWItMjMzNjMyNjExYzRl"
      }
   ]
}
```

### Example 2: Next round to get additional transcripts

Using the `@odata.deltaLink` from the last request in the last round, you can get only those transcripts that have been added since the `@odata.deltaLink` was acquired.

#### Request

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts/delta?$deltatoken=aQdvS1VwGCSRxVmZJqykmDik_JIC44iCZpv-GLiA2VnFuE5yG-kCEBROb2iaPT_y_eMWVQtBO_ejzzyIxl00ji-tQ3HzAbW4liZAVG88lO3nG_6-MBFoHY1n8y21YUzjocG-Cn1tCNeeLPLTzIe5Dw.EP9gLiCoF2CE_e6l_m1bTk2aokD9KcgfgfcLGqd1r_4
```
---

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callTranscript)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(callTranscript)",
    "@odata.deltaLink": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts/delta?$deltatoken=aQdvS1VwGCSRxVmZJqykmDik_JIC44iCZpv-GLiA2VnFuE5yG-kCEBROb2iaPT_yjz2nsMoh1gXNtXii7s78HapCi5woifXqwXlVNxICh8wUUnvE2gExsa8eZ2Vy_ch5rVIhm067_1mUPML3iYUVyg.3o0rhgaBUduuxOr98An5pjBDP5JjKUiVWku3flSiOsk",
    "value": [
        {
            "@odata.type": "#microsoft.graph.callTranscript",
            "meetingId": "MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19IMU4xMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy",
            "meetingOrganizerId": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSo4YjA4MWVmNi00NzkyLTRkZWYtYjJjOS1jMzYzYTFiZjQxZDUqMCoqMTk6bWVldGluZ19IMU4xMlgxSTBOekF0Wm1ReU8xQzIxMU5HWTFMV0UwTTJFdFpXTTFOVFkxWW1Rd05HTTBAdGhyZWFkLnYy/transcripts/MSMjMCMjZDMzYWQzM2EtMmVhYS0zM2FjLWJkZWItMjMzNjMyNjExYzRl/content",
            "createdDateTime": "2023-08-11T21:29:42.6514074Z",
            "id": "MSMjMCMjZDMzYWQzM2EtMmVhYS0zM2FjLWJkZWItMjMzNjMyNjExYzRl"
        }
    ]
}
```
