---
title: "Create externalItem"
description: "Create a new externalItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create externalItem
Namespace: microsoft.graph.externalConnectors



Create a new [externalItem](../resources/externalconnectors-externalitem.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not applicable|
|Delegated (personal Microsoft account)|Not applicable|
|Application| ExternalItem.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /connections/{connectionsId}/items
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [externalItem](../resources/externalconnectors-externalitem.md) object.

The following table shows the properties that are required when you create the [externalItem](../resources/externalconnectors-externalitem.md).

|Property|Type| Required (Y/N) | Description|
|:---|:---|:---|:---|
|id|String|Y|The item ID|
|properties|[properties](../resources/externalconnectors-properties.md)|Y|The item properties. The `properties` object must contain at least one property. All `DateTime` type properties must be in ISO 8601 format.|
|content|[externalItemContent](../resources/externalconnectors-externalitemcontent.md)|N|The external item content|
|acl|[acl](../resources/externalconnectors-acl.md) collection|Y|The access control list|

Properties on an `externalItem` should use type specifiers in the payload in the following scenarios:

- For `String` type properties, if the value contains non-ASCII characters.

    ```json
    "description@odata.type": "String",
    "description": "Kandierte Äpfel"
    ```

- For all collection types.

    ```json
    "categories@odata.type": "Collection(String)"
    "categories": [
      "red",
      "blue"
    ]
    ```

    > [!IMPORTANT]
    > When including a property of type `Collection(DateTime)`, you must use the type specifier `Collection(DateTimeOffset)`.

## Response 

If successful, this method returns `200 OK` response code.

## Examples

### Example: Create a custom item

### Request
<!-- {
  "blockType": "request",
  "name": "create_externalitem_from_externalConnections"
}
-->
``` http
PUT https://graph.microsoft.com/beta/connections/contosohr/items/TSP228082938
Content-type: application/json

{
  "acl": [
    {
      "type": "user",
      "value": "e811976d-83df-4cbd-8b9b-5215b18aa874",
      "accessType": "grant",
      "identitySource": "azureActiveDirectory"
    },
    {
      "type": "group",
      "value": "14m1b9c38qe647f6a",
      "accessType": "deny",
      "identitySource": "external"
    }
  ],
  "properties": {
    "title": "Error in the payment gateway",
    "priority": 1,
    "assignee": "john@contoso.com"
  },
  "content": {
    "value": "Error in payment gateway...",
    "type": "text"
  }
}
```


### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 200 OK
```

