---
title: "Get externalGroup"
description: "Get an externalGroup object."
author: "sacampbe-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Get externalGroup
Namespace: microsoft.graph.externalConnectors


Get an [externalGroup](../resources/externalconnectors-externalgroup.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported                               |
| Delegated (personal Microsoft account) | Not supported                               |
| Application                            | ExternalItem.ReadWrite.OwnedBy, ExternalItem.ReadWrite.All|


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /connections/{connectionsId}/groups/{externalGroupId}
```

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code with the **externalGroup** object.

## Example

### Request
<!-- {
  "blockType": "request",
  "name": "get_externalgroup"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/external/connections/contosohr/groups/31bea3d537902000
```

<!-- markdownlint-disable MD024 -->
### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalConnectors.externalGroup"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "31bea3d537902000",
  "displayName": "Contoso Marketing",
  "description": "The product marketing team"
}
```
