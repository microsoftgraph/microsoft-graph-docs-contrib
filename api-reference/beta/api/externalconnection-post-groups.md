---
title: "Create externalGroup"
description: "Create a new externalGroup object."
author: "snlraju-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# Create groups

Namespace: microsoft.graph

Create a new externalGroup object.

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
POST /connections/{connectionsId}/groups
```

## Request headers

| Name          | Description                 |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [externalGroup](../resources/externalgroup.md) object.

The following table shows the properties that are required when you create the [externalGroup](../resources/externalgroup.md).

| Property    | Type   | Description                                                                                                              |
|:------------|:-------|:-------------------------------------------------------------------------------------------------------------------------|
| id          | String | The unique `id` of the external group within a connection. It must be alphanumeric and can be up to 128 characters long. |
| displayName | String | The friendly name of the external group (Optional)                                                                       |
| description | String | The description of the external group (Optional)                                                                         |

## Response

If successful, this method returns a `201 Created` response code and an [externalGroup](../resources/externalgroup.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_externalgroup_from_connection"
}
-->

``` http
POST https://graph.microsoft.com/beta/connections/contosohr/groups
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalGroup",
  "id": "31bea3d537902000",
  "displayName": "Contoso Marketing",
  "description": "The product marketing team"
}
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.externalGroup",
  "id": "31bea3d537902000",
  "displayName": "Contoso Marketing",
  "description": "The product marketing team"
}
```
