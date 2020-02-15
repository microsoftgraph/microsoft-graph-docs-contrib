---
title: "Get callRecord"
description: "Retrieve the properties and relationships of callrecord object."
localization_priority: Normal
author: "stephenjust"
ms.prod: "cloud-communications"
doc_type: "apiPageType"
---

# Get callRecord

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a callrecord object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | CallRecords.Read.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /communications/callRecords/{id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [callRecord](../resources/callrecords-callrecord.md) object in the response body.

## Examples

### Request

The following is an example of the request to get the basic details from a [callRecord](../resources/callrecords-callrecord.md).
<!-- {
  "blockType": "request",
  "name": "get_callrecord"
}-->

```http
GET https://graph.microsoft.com/beta/communications/callRecords/{id}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords.callRecord"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "type": "type-value",
  "modalities": [
    "modalities-value"
  ],
  "lastModifiedDateTime": "datetime-value",
  "startDateTime": "datetime-value",
  "endDateTime": "datetime-value"
}
```

### Request

The following is an example of the request to get the full details from a [callRecord](../resources/callrecords-callrecord.md), including session and segment components.
<!-- {
  "blockType": "request",
  "name": "get_callrecord"
}-->

```http
GET https://graph.microsoft.com/beta/communications/callRecords/{id}?$expand=sessions($expand=segments)
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.callRecords.callRecord"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "type": "type-value",
  "modalities": [
    "modalities-value"
  ],
  "lastModifiedDateTime": "datetime-value",
  "startDateTime": "datetime-value",
  "endDateTime": "datetime-value",
  "sessions": [
    {
      "id": "id-value",
      "segments": []
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get callRecord",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->