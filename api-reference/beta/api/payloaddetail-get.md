---
title: "Get payloadDetail"
description: "Get an attack simulation campaign payload detail for a tenant."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: apiPageType
---

# Get payloadDetail

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an attack simulation campaign payload detail for a tenant.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | AttackSimulation.Read.All                   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | AttackSimulation.Read.All                   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/attackSimulation/payloads/{payloadId}/detail
```

## Optional query parameters

This method does not currently support the [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [payloadDetail](../resources/payloaddetail.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_payloadDetail",
  "sampleKeys": ["f1b13829-3829-f1b1-2938-b1f12938b1a"]
}
-->
``` http
GET https://graph.microsoft.com/beta/security/attackSimulation/payload/f1b13829-3829-f1b1-2938-b1f12938b1a/detail
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.payloadDetail"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#security/attackSimulation/payloads/2f5548d1-0dd8-4cc8-9de0-e0d6ec7ea3dc/detail",
    "fromName": "faiza",
    "fromEmail": "faiza@contoso.com",
    "addIsExternalSender": false,
    "subject": "Payload Detail",
    "content": "<meta http-equiv=\"Content-Type\" content=\"text/html>\">",
    "phishingUrl": "http://www.widgetsinc10+.com",
    "coachMarks": [
        {
            "indicator": "URL hyperlinking",
            "description": "URL hyperlinking hides the true URL behind text; the text can also look like another link",
            "language": "en",
            "order": "0",
            "isValid": true,
            "coachmarkLocation": {
                "offset": 144,
                "length": 6,
                "type": "messageBody"
            }
        }
    ]            
}
```
