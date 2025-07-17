---
title: "callTranscript: delta"
description: "Get a set of callTranscript resources added for onlineMeeting instances organized by the specified user."
ms.localizationpriority: medium
doc_type: apiPageType
author: "JacobSatora"
ms.subservice: "teams"
ms.date: 08/06/2024
---

# callTranscript: delta

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a set of [callTranscript](../resources/calltranscript.md) resources added for [onlineMeeting](../resources/onlinemeeting.md) instances organized by the specified user.

Delta query supports both full synchronization that gets all the transcripts for online meetings organized by the user, and incremental synchronization that gets transcripts added since the last synchronization. Typically, you do an initial full synchronization, and then get incremental changes to that transcript view periodically.

A GET request with the delta function returns one of the following:

- An **@odata.nextLink** that contains a URL with a **delta** function call and a `skipToken`.
- An **@odata.deltaLink** that contains a URL with a **delta** function call and a `deltaToken`.

State tokens are opaque to the client. To proceed with a round of change tracking, copy and apply the **@odata.nextLink** or **@odata.deltaLink** URL returned from the last GET request to the next **delta** function call for that same transcript view. An **@odata.deltaLink** returned in a response signifies that the current round of change tracking is complete. You can save and use the **@odata.deltaLink** URL when you start the next round of synchronization to get the new transcripts added after you acquire **@odata.deltaLink**.

For more information, see the [delta query](/graph/delta-query-overview) documentation.

### Known issues

The following known issues are associated with this API:

- [Using the `$top` query parameter might not return the **@odata.nextLink**](https://developer.microsoft.com/en-us/graph/known-issues/?search=22931).
- [Delta queries might return older artifacts when meetings have unrelated changes](https://developer.microsoft.com/en-us/graph/known-issues/?search=22934).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "calltranscript_delta" } -->
[!INCLUDE [permissions-table](../includes/permissions/calltranscript-delta-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
``` http
GET /users/{usersId}/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='{userId}',startDateTime={startDateTime})/delta
```
>**Note:** The request fails if you don't pass the function parameter **meetingOrganizerUserId**.

## Query parameters

Tracking changes in call transcripts incurs a round of one or more **delta** function calls. If you use any query parameter (other than `$deltaToken` and `$skipToken`), you must specify it in the initial **delta** request. Microsoft Graph automatically encodes any specified parameters into the token portion of the **@odata.nextLink** or **@odata.deltaLink** URL provided in the response.

In subsequent requests, copy and apply the **@odata.nextLink** or **@odata.deltaLink** URL from the previous response, as that URL already includes the encoded parameters.

| Query parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| `$deltaToken` | String | A [state token](/graph/delta-query-overview) returned in the **@odata.deltaLink** URL of the previous **delta** function call that indicates the completion of that round of change tracking. Save and apply the entire **@odata.deltaLink** URL including this token in the first request of the next round of change tracking for that collection.|
| `$skipToken` | String | A [state token](/graph/delta-query-overview) returned in the **@odata.nextLink** URL of the previous **delta** function call that indicates that there are further changes to be tracked. |
| `$top`    |     Integer     | Allows the caller to specify the maximum number of objects per page. |


## Request headers
| Header        | Value                     |
|---------------|---------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a collection of [callTranscript](../resources/calltranscript.md) objects in the response body. The response also includes an **@odata.nextLink** URL or an **@odata.deltaLink** URL.

## Examples

### Example 1: Initial round of synchronization

The following example shows a series of three requests to synchronize the call transcripts available for all the online meetings organized by the user.

- Step 1: [initial request](#initial-request) and [response](#initial-response).
- Step 2: [second request](#second-request) and [response](#second-response).
- Step 3: [third request](#third-request) and [final response](#third-and-final-response-for-the-round).

See also what you do in the [next round to get more transcripts](#example-2-next-round-to-get-more-transcripts).

#### Initial request

In this example, the call transcripts synchronize for the first time and the initial sync request doesn't include any state token. This round returns all transcripts available at the time.

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta
```

#### Initial response

The response includes two call transcripts and an **@odata.nextLink** response header with a `skipToken`. The **@odata.nextLink** URL indicates that more call transcripts are available to retrieve.

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
    "@odata.nextLink": "https://graph.microsoft.com/beta/users({userId})/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta?skipToken={skipToken1}",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.callTranscript",
            "id": "VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=",
            "meetingId": "MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy",
            "createdDateTime": "2023-12-02T06:59:34.7411768Z",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy/transcripts/VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=/content",
            "meetingOrganizer": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "a1d286db-6149-4b3d-95ad-23c9e1bf6853"
                }
            }          
        }
    ]
}
```

#### Second request

The second request specifies the **@odata.nextLink** URL returned from the previous response. Notice that it no longer has to specify the same query parameters as in the initial request, as the `skipToken` in the **@odata.nextLink** URL encodes and includes them.

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta
$skiptoken={skipToken1}
```

#### Second response

The second response returns one or more next call transcripts and an **@odata.nextLink** property with a `skipToken` that indicates that more transcripts are available.

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
    "@odata.nextLink": "https://graph.microsoft.com/beta/users({userId})/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta?skipToken={skipToken2}",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.callTranscript",
            "id": "VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=",
            "meetingId": "MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy",
            "createdDateTime": "2023-12-02T06:59:34.7411768Z",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy/transcripts/VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=/content",
            "meetingOrganizer": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "a1d286db-6149-4b3d-95ad-23c9e1bf6853"
                }
            }          
        }
    ]
}
```

#### Third request

The third request continues to use the latest **@odata.nextLink** returned from the last sync request.

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta?skipToken={skipToken2}
```

#### Third and final response for the round

The third response returns the only remaining transcripts and an **@odata.deltaLink** property with a `deltaToken` that indicates that all transcripts are returned. Save and use the **@odata.deltaLink** URL to query for any new transcript that is added from this point onwards.

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
    "@odata.deltaLink": "https://graph.microsoft.com/beta/users({userId})/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta?skipToken={deltaToken1}",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.callTranscript",
            "id": "VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=",
            "meetingId": "MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy",
            "createdDateTime": "2023-12-02T06:59:34.7411768Z",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy/transcripts/VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=/content",
            "meetingOrganizer": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "a1d286db-6149-4b3d-95ad-23c9e1bf6853"
                }
            }          
        }
    ]
}
```

### Example 2: Next round to get more transcripts

Using the **@odata.deltaLink** from the last request in the last round, you can get only those transcripts added since the **@odata.deltaLink** was acquired.

#### Request
The following example shows a request.

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta?skipToken={deltaToken1}
```

#### Response

The following example shows the response.
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
    "@odata.deltaLink": "https://graph.microsoft.com/beta/users({userId})/onlineMeetings/getAllTranscripts(meetingOrganizerUserId='8b081ef6-4792-4def-b2c9-c363a1bf41d5')/delta?skipToken={deltaToken2}",
    "@odata.count": 1,
    "value": [
        {
            "@odata.type": "#microsoft.graph.callTranscript",
            "id": "VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=",
            "meetingId": "MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy",
            "createdDateTime": "2023-12-02T06:59:34.7411768Z",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/onlineMeetings/MSoxYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTEqMCoqMTk6bWVldGluZ19PVEJsT1RjeE16QXROemMwWVMwMFl6QTFMVGhpWldFdFpUaGtNMlk0WkRKaFlUQTFAdGhyZWFkLnYy/transcripts/VjIjIzExYzkxNjVmZi1hZTkyLTQ5YWYtODliNC00MTU1NTRhMzZhNTFhMWQyODZkYi02MTQ5LTRiM2QtOTVhZC0yM2M5ZTFiZjY4NTMwNDAwMDAwMDgyMDBFMDAwNzRDNUI3MTAxQTgyRTAwODA3ZTcwYzAyM2U4MGEwOWVmN2ZmZDkwMTAwMDAwMDAwMDAwMDAwMDAxMDAwMDAwMDI3N2Q3NzZjYmNmMjQ5NGNiNDk0NDExZGE3YzRhMmM1IyM3YTM2NDRjYi1mMDA3LTRjMDAtOWJiMy1jMTUzYzE4ODY4NGY=/content",
            "meetingOrganizer": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#microsoft.graph.teamworkUserIdentity",
                    "id": "8b081ef6-4792-4def-b2c9-c363a1bf41d5",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "a1d286db-6149-4b3d-95ad-23c9e1bf6853"
                }
            }          
        }
    ]
}
```
