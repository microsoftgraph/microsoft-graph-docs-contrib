---
title: "call: cancelMediaProcessing"
description: "Cancels media processing for any in-progress PlayPrompt, RecordResponse operations."
author: "VinodRavichandran"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# call: cancelMediaProcessing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

"Cancels processing for any in-progress [Play Prompt](./call-playprompt.md) or [Record Response](./call-record.md) operations"

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not Supported.                              |
| Delegated (personal Microsoft account) | Not Supported.                              |
| Application                            | None.                                       |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /app/calls/{id}/cancelMediaProcessing
POST /communications/calls/{id}/cancelMediaProcessing
```
> **Note:** The `/app` path is deprecated. Going forward, use the `/communications` path.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter      | Type    | Description                                                    |
|:---------------|:--------|:---------------------------------------------------------------|
| clientContext  | String  | The client context.                                            |

## Response
Returns `200 Ok` response code and a Location header with a uri to the [commsOperation](../resources/commsoperation.md) created for this request.

## Example
The following example shows how to call this API.

##### Request
The following example shows the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "call-cancelMediaProcessing"
}-->
```http
POST https://graph.microsoft.com/beta/communications/calls/{id}/cancelMediaProcessing
Content-Type: application/json
Content-Length: 62

{
  "clientContext": "clientContext-value"
}
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/call-cancelmediaprocessing-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/call-cancelmediaprocessing-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/call-cancelmediaprocessing-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cancelMediaProcessingOperation"
} -->
```http
HTTP/1.1 200 OK
Location: https://graph.microsoft.com/beta/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/operations/17e3b46c-f61d-4f4d-9635-c626ef18e6ad
Content-Type: application/json
Content-Length: 259

{
  "@odata.type": "#microsoft.graph.cancelMediaProcessingOperation",
  "status": "completed",
  "clientContext": "3b63716b-2b19-4884-b07d-2d10f2b4de39",
  "id": "17e3b46c-f61d-4f4d-9635-c626ef18e6ad"
}
```

##### Notification - Operation canceled for recordResponse.

```http
POST https://bot.contoso.com/api/calls
Content-Type: application/json
```

<!-- {
  "blockType": "example",
  "@odata.type": "microsoft.graph.commsNotifications"
}-->
```json
{
  "@odata.type": "#microsoft.graph.commsNotifications",
  "value": [
    {
      "@odata.type": "#microsoft.graph.commsNotification",
      "changeType": "deleted",
      "resourceUrl": "/communications/calls/4e1f0b00-4d1f-45bb-92bd-6b379e4f54c7/operations/fb8c7fa0-44c4-4244-b4f0-43fd56842c85",
      "resource": "/app/calls/4e1f0b00-4d1f-45bb-92bd-6b379e4f54c7/operations/fb8c7fa0-44c4-4244-b4f0-43fd56842c85",
      "resourceData": {
        "@odata.type": "#microsoft.graph.recordOperation",
        "status": "failed",
        "clientContext": "55178b4b-3b9f-4f71-9976-e1e031e386e1",
        "resultInfo": {
          "@odata.type": "#microsoft.graph.resultInfo",
          "code": 400,
          "subcode": 8508,
          "message": "Action falied, the operation was cancelled.",
          "subcode": 8508
        },
        "id": "fb8c7fa0-44c4-4244-b4f0-43fd56842c85"
      }
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "call: cancelMediaProcessing",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
