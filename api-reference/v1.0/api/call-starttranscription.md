---
title: "call: startTranscription"
description: "Start the transcription of a call."
author: "calvintang"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# call: startTranscription

Namespace: microsoft.graph

Start the transcription of a call.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "call_starttranscription" } -->
[!INCLUDE [permissions-table](../includes/permissions/call-starttranscription-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /communications/calls/{id}/microsoft.graph.StartTranscription
```

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter       | Type    | Description                                                                           |
|:----------------|:--------|:--------------------------------------------------------------------------------------|
| language        | String  | Language of the transcription. Currently supporting: `en-us`.                         |

## Response
This method returns a `202 Accepted` response code and a [startTranscriptionOperation](../resources/starttranscriptionoperation.md) object created for this request.

## Example
The following example shows how to call this API.

### Request
The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "call-startTranscription"
}-->
```http
POST https://graph.microsoft.com/v1.0/communications/calls/{id}/microsoft.graph.StartTranscription
Content-Type: application/json
Content-Length: 56

{
  "language": "en-us"
}
```

---

### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "call-startTranscription",
  "truncated": true,
  "@odata.type": "microsoft.graph.startTranscriptionOperation"
} -->
```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/communications/calls/02000980-58ea-4bf2-bb77-8ba548da56f7/operations/2d7ab59c-f8bd-4911-8302-6d58ab60e338

{
  "@odata.type": "#microsoft.graph.startTranscriptionOperation",
  "clientContext": "clientContext-value",
  "status": "running"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-11-12 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "call: startTranscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
