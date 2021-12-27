---
title: "List callTranscripts"
description: "Retrieve the list of transcripts associated to a Microsoft Teams Online Meeting."
author: "mankadnandan"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# List callTranscripts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [callTranscript](../resources/callTranscript.md) associated to a Microsoft Teams Online Meeting.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | OnlineMeetingArtifact.Read.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users({userId})/onlineMeetings({meetingId})/transcripts
```

## Optional query parameters

This method supports the `$skipToken` and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

### Supported query patterns

| Pattern                | Supported | Syntax                                 | Notes |
| ---------------------- | ------- | -------------------------------------- | ----- |
| Server-side pagination |     ✓     | `@odata.nextLink`                      | |
| Page limit             |     ✓     | `/transcripts?$top=20` | Get transcripts with page size 20. Default page limit is 10. Max page limit is 100. |

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [callTranscript](../resources/callTranscript.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_callTranscripts"
}
-->
``` http
GET https://graph.microsoft.com/beta/users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts
```

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callTranscript)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts",
    "@odata.count": 10,
    "@odata.nextLink": "https://graph.microsoft.com/beta/users('ba321e0d-79ee-478d-8e28-85a19507f456')/onlineMeetings('MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ')/transcripts?$skiptoken=MSMjMCMjMjAyMS0wOS0xNlQxMzo1OToyNy4xMjEwMzgzWg%3d%3d",
    "value": [
        {
            "id": "MSMjMCMjZDAwYWU3NjUtNmM2Yi00NjQxLTgwMWQtMTkzMmFmMjEzNzdh",
            "createdDateTime": "2021-09-17T06:09:24.8968037Z"
        },
        {
            "id": "MSMjMCMjMzAxNjNhYTctNWRmZi00MjM3LTg5MGQtNWJhYWZjZTZhNWYw",
            "createdDateTime": "2021-09-16T18:58:58.6760692Z"
        },
        {
            "id": "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4",
            "createdDateTime": "2021-09-16T18:56:00.9038309Z"
        },
        {
            "id": "MSMjMCMjYmY0MjczOTMtNWYzMC00MGU0LThjNzUtODJmZjQxYTVlZDIz",
            "createdDateTime": "2021-09-16T18:53:05.5627936Z"
        },
        {
            "id": "MSMjMCMjMTUxZjI2ZjMtNzcxYS00NGFiLTlmNWQtYzI1ZTVjOWRjNDAw",
            "createdDateTime": "2021-09-16T18:48:25.2408573Z"
        },
        {
            "id": "MSMjMCMjZGFmNzc0YTctMTU2Mi00M2NmLWI2MTMtNjY4YTEwY2QyMDYx",
            "createdDateTime": "2021-09-16T18:38:35.3375762Z"
        },
        {
            "id": "MSMjMCMjYjJlNmM5ZWItNzgzMy00OGQyLThmNzYtZjE5MTEwZGI0NDIw",
            "createdDateTime": "2021-09-16T14:24:36.3934536Z"
        },
        {
            "id": "MSMjMCMjMGMwNDJlMzctYTk3Yi00OTE4LWIzNzYtZjM5NTI5ZDI1Y2Zi",
            "createdDateTime": "2021-09-16T14:03:40.0792162Z"
        },
        {
            "id": "MSMjMCMjZjljOTJkMjgtODZiNS00OTQ5LWE3ZDUtZDZhMDNiNWI4ZGNm",
            "createdDateTime": "2021-09-16T14:00:47.960732Z"
        },
        {
            "id": "MSMjMCMjYWQ4ZDAzNWMtNDk2Yi00MGRmLTk3ZmUtNmVjMTgyYzFkYWM0",
            "createdDateTime": "2021-09-16T13:59:27.1210383Z"
        }
    ]
}
```