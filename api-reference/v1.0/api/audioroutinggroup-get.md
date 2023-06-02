---
title: "Get audioRoutingGroup"
description: "Retrieve the properties and relationships of an audioRoutingGroup object."
author: "hanknguyen"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Get audioRoutingGroup

Namespace: microsoft.graph

Retrieve the properties and relationships of an [audioRoutingGroup](../resources/audioroutinggroup.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not Supported                               |
| Delegated (personal Microsoft account) | Not Supported                               |
| Application                            | Calls.JoinGroupCalls.All, Calls.InitiateGroupCalls.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /app/calls/{id}/audioRoutingGroups/{id}
GET /communications/calls/{id}/audioRoutingGroups/{id}
```
> **Note:** The `/app` path is deprecated. Going forward, use the `/communications` path.

## Optional query parameters
This method supports the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and an [audioRoutingGroup](../resources/audioroutinggroup.md) object in the response body.

## Example

### Request

The following example shows the request.
<!-- {
  "blockType": "request",
  "name": "get-audioRoutingGroup"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/communications/calls/{id}/audioRoutingGroups/{id}
```

---


### Response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.audioRoutingGroup"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 233

{
  "id": "oneToOne",
  "routingMode": "oneToOne",
  "sources": [
    "632899f8-2ea1-4604-8413-27bd2892079f"
  ],
  "receivers": [
    "550fae72-d251-43ec-868c-373732c2704f",
    "72f988bf-86f1-41af-91ab-2d7cd011db47"
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get audioRoutingGroup",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


