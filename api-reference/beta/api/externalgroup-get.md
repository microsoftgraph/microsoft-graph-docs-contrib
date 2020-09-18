---
title: "Get externalGroup"
description: "Read the properties and relationships of an externalGroup object."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Get externalGroup

Namespace: microsoft.graph

Read the properties and relationships of an [externalGroup](../resources/externalgroup.md) object.

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
GET /connections/{connectionsId}/groups/{externalGroupId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [externalGroup](../resources/externalgroup.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_externalgroup"
}
-->

``` http
GET https://graph.microsoft.com/beta/connections/contosohr/groups/31bea3d537902000
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalGroup"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "id": "db8fac7c-ac7c-db8f-7cac-8fdb7cac8fdb",
    "displayName": "Contoso Marketing",
    "description": "String"
  }
}
```
