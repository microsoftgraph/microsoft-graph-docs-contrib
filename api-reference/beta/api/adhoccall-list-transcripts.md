---
title: "List transcripts-ad hoc calls"
description: "Retrieve the list of transcripts associated with an ad hoc call."
author: "SukanyaDas-MSFT"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/20/2025
---

# List transcripts for ad hoc calls

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callTranscript](../resources/calltranscript.md) objects associated with an [adhocCall](/graph/api/resources/adhoccall?view=graph-rest-beta). This API supports the retrieval of call recordings from unscheduled PSTN, VoIP and group calls . Private channel meetings are not supported.

> [!NOTE]
>
> - For ad hoc calls:
>   - Subscribe to [notifications](/graph/teams-changenotifications-callrecording-and-calltranscript) to get access to the call id.
>   - To obtain the call id while the call is still ongoing, have the app get called through [App-hosted/service-hosted Calls](https://learn.microsoft.com/en-us/graph/api/resources/call?view=graph-rest-1.0) and use the `callChainId`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "ignored", "name": "adhocCall_list_transcripts" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|CallTranscripts.Read.All|Not available.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|CallTranscripts.Read.All, CallTranscripts.Read.Chat|Not available.|

To use application permissions for this API, tenant administrators must create an application access policy and grant it to a user. It authorizes the app configured in the policy to fetch ad hoc calls or related artifacts on behalf of that user (with the user ID specified in the request path). For more information, see [Allow applications to access ad hoc calls on behalf of a user](/graph/cloud-communication-online-meeting-application-access-policy).

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /me/adhocCalls/{call-id}/transcripts
GET /users/{user-id}/adhocCalls/{call-id}/transcripts
```

## Response

If successful, this method returns a `200 OK` response code and a collection of [callTranscript](../resources/callTranscript.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_callTranscripts",
  "sampleKeys": ["ba321e0d-79ee-478d-8e28-85a19507f456", "MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/ba321e0d-79ee-478d-8e28-85a19507f456/onlineMeetings/MSo1N2Y5ZGFjYy03MWJmLTQ3NDMtYjQxMy01M2EdFGkdRWHJlQ/transcripts
```

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_adhoccall_transcripts",
  "sampleKeys": ["af630fe0-04d3-4559-8cf9-91fe45e36296"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/me/adhocCalls/af630fe0-04d3-4559-8cf9-91fe45e36296/transcripts
```

#### Response

The following example shows the response.

> [!NOTE]
> The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.callTranscript)"
} -->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#me/adhocCalls('af630fe0-04d3-4559-8cf9-91fe45e36296')/transcripts",
    "@odata.count": 1,
    "value": [
        {
            "id": "MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4",
            "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
            "createdDateTime": "2023-10-10T08:00:00.9038309Z",
            "endDateTime": "2023-10-10T08:15:25.2346000Z",
            "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/$metadata#me/adhocCalls('af630fe0-04d3-4559-8cf9-91fe45e36296')/transcripts('MSMjMCMjNzU3ODc2ZDYtOTcwMi00MDhkLWFkNDItOTE2ZDNmZjkwZGY4')/content"
        }
    ]
}
```