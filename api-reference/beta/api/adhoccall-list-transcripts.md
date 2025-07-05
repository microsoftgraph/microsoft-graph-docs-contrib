---
title: "List transcripts"
description: "**TODO: Add a useful description.**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: apiPageType
---

# List transcripts

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add a useful description.**

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
  "@odata.type": "microsoft.graph.callTranscript"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.callTranscript",
      "id": "4ec37674-865f-9e68-35e7-28bc568be69d",
      "meetingId": "String",
      "callId": "String",
      "contentCorrelationId": "String",
      "meetingOrganizer": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "transcriptContentUrl": "String",
      "createdDateTime": "String (timestamp)",
      "endDateTime": "String (timestamp)",
      "content": "Stream",
      "metadataContent": "Stream"
    }
  ]
}
```

