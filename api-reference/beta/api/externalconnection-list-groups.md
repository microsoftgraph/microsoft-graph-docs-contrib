---
title: "List externalGroups"
description: "Get the externalGroup resources from the groups navigation property."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# List externalGroups

Namespace: microsoft.graph

Get the externalGroup resources from the groups navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from most to least privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported                               |
| Delegated (personal Microsoft account) | Not supported                               |
| Application                            | ExternalItem.ReadWrite.All                  |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /connections/{connectionsId}/groups
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [externalGroup](../resources/externalgroup.md) objects in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_externalgroup"
}
-->

``` http
GET https://graph.microsoft.com/beta/connections/contosohr/groups
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.externalGroup)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "31bea3d537902000",
      "displayName": "Contoso Marketing",
      "description": "The product marketing team"
    },
    {
      "id": "044e0bfc8bcbe5de",
      "displayName": "Contoso Support",
      "description": "Tier 1 customer support team"
    }
  ]
}
```
