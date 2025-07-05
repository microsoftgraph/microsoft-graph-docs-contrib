---
title: "List transcripts"
description: "Get the list of callTranscript objects associated with a call."
author: "kanchm"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List transcripts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the list of [callTranscript](../resources/calltranscript.md) objects associated with an [ad hoc call](../resources/adhoccall.md). This API supports the retrieval of ad hoc call transcripts from one-on-one, group and PSTN calls.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "adhoccall-list-transcripts-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/adhoccall-list-transcripts-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/adhocCalls/{adhocCallId}/transcripts
GET /users/{usersId}/adhocCalls/{adhocCallId}/transcripts
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [callTranscript](../resources/calltranscript.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_calltranscript"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/{usersId}/adhocCalls/{adhocCallId}/transcripts
```


### Response

The following example shows the response.
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('ba321e0d-79ee-478d-8e28-85a19507f456')/adhocCall('af630fe0-04d3-4559-8cf9-91fe45e36296')/transcripts",
    "@odata.count": 1,
    "value": [
        {
            "id": "MSMjMCMjZDAwYWU3NjUtNmM2Yi00NjQxLTgwMWQtMTkzMmFmMjEzNzdh",
            "callId": "af630fe0-04d3-4559-8cf9-91fe45e36296",
            "createdDateTime": "2021-09-17T06:09:24.8968037Z",
            "endDateTime": "2021-09-17T06:27:25.2346000Z",
            "contentCorrelationId": "bc842d7a-2f6e-4b18-a1c7-73ef91d5c8e3",
            "transcriptContentUrl": "https://graph.microsoft.com/beta/$metadata#users('ba321e0d-79ee-478d-8e28-85a19507f456')/adhocCall('af630fe0-04d3-4559-8cf9-91fe45e36296')/transcripts/('MSMjMCMjZDAwYWU3NjUtNmM2Yi00NjQxLTgwMWQtMTkzMmFmMjEzNzdh')/content",
            "meetingOrganizer": {
                "application": null,
                "device": null,
                "user": {
                    "@odata.type": "#Microsoft.Teams.GraphSvc.teamworkUserIdentity",
                    "id": "ba321e0d-79ee-478d-8e28-85a19507f456",
                    "displayName": null,
                    "userIdentityType": "aadUser",
                    "tenantId": "cd6cee19-2d76-4ee0-8f47-9ed12ee44331",
                }
            }
        }
    ]
}
```

