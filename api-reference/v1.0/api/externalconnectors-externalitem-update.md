---
title: "Update externalItem"
description: "Update the properties of an externalItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update externalItem
Namespace: microsoft.graph.externalConnectors



Update the properties of an [externalItem](../resources/externalconnectors-externalitem.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not applicable|
|Delegated (personal Microsoft account)|Not applicable|
|Application| ExternalItem.ReadWrite.All|

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /external/connections/{connection-id}/items/{item-id}
```

## Path parameters

| Parameter     | Type   | Description                                         |
|:--------------|:-------|:----------------------------------------------------|
| connection-id | string | The `id` property of the containing [externalConnection](../resources/externalconnection.md) |
| item-id       | string | The developer-provided `id` property of the [externalItem](../resources/externalitem.md). |

## Request headers

| Name          | Description                 |
|:--------------|:----------------------------|
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties (excluding properties inside the `properties` object) that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed. The following properties can be updated.

| Property   | Type                                  | Description               |
|:-----------|:--------------------------------------|:--------------------------|
| acl        | [acl](../resources/acl.md) collection | An array of access control entries. Each entry specifies the access granted to a user or group. |
| content    | [externalItemContent](../resources/externalitemcontent.md) | A plain-text representation of the contents of the item. The text in this property is full-text indexed. |
| properties | Object                                | A property bag with the properties of the item. The properties MUST conform to the [schema](../resources/schema.md) defined for the [externalConnection](../resources/externalconnection.md). |

### Updating the acl collection

If the `acl` property is included in an update request, the existing ACL collection is overwritten with the collection included in the request.

### Updating the properties object

If the `properties` property is included in an update request, the existing property bag is overwritten with the value included in the request.

## Response

If successful, this method returns a `200 OK` response code and an updated [externalItem](../resources/externalitem.md) object in the response body.

## Examples

### Request

The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_externalitem"
}-->

```http
PATCH https://graph.microsoft.com/beta/connections/contosohr/items/TSP228082938
Content-type: application/json  

{
  "acl": [
    {
      "type": "everyone",
      "value": "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
      "accessType": "grant",
      "identitySource": "azureActiveDirectory"
    }
  ]
}
``` 

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_externalitem"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/connections/{connectionsId}/items/{externalItemId}
Content-Type: application/json
Content-length: 360

{
  "@odata.type": "#microsoft.graph.externalConnectors.externalItem",
  "properties": {
    "@odata.type": "microsoft.graph.externalConnectors.properties"
  },
  "content": {
    "@odata.type": "microsoft.graph.externalConnectors.externalItemContent"
  },
  "acl": [
    {
      "@odata.type": "microsoft.graph.externalConnectors.acl"
    }
  ]
}
```


### Response
The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.externalItem"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "TSP228082938",
  "acl": [
    {
      "type": "user",
      "value": "49103559-feac-4575-8b94-254814dfca72",
      "accessType": "grant",
      "identitySource": "azureActiveDirectory"
    }
  ],
  "properties": {
    "title": "Error in the payment gateway",
    "priority": 1,
    "assignee": "john@contoso.com"
  },
  "content": {
    "value": "<h1>Error in payment gateway</h1><p>Error details...</p>",
    "type": "html"
  }
}
```
