---
title: "Add custom properties to a fileStorageContainer"
description: "Add custom properties to a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Add custom properties to a fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Add custom properties to a fileStorageContainer. 

The application calling this API must have write permissions to fileStorageContainers for the respective container type.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Application|FileStorageContainer.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containers/{containerId}/customProperties
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md), which is a map with string keys and [fileStorageContainerCustomPropertyValue](../resources/filestoragecontainercustompropertyvalue.md) values.

You can specify the following properties when creating a custom property.

|Property|Type|Description|
|:---|:---|:---|
|value|String|Value of the custom property. Required.|
|isSearchable|Boolean|Flag to indicate if the property is searchable. Optional. Default False.|

## Response

If successful, this action returns either a `200 Created` or `201 Created` response code.

## Examples

### Request
The following example shows how to create a custom property called "clientUniqueId" for a container.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.add-customproperty"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/customProperties
Content-Type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b"
  }
}
```

### Response
The following example shows the response. By default, the property isn't searchable.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 Created
Content-type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
    "isSearchable": false
  }
}
```

### Request
The following example shows how to create a searchable custom property called "clientUniqueId" for a container.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.add-customproperty"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/customProperties
Content-Type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
    "isSearchable": true
  }
}
```
### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 Created
Content-type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
     "isSearchable": true
  }
}
```

### Request
The following example shows how to create multiple custom properties for a container.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.add-customproperty"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/customProperties
Content-Type: application/json

{
  "property1": {
    "value": "valueOfProperty1",
    "isSearchable": true
  },
  "property2": {
    "value": "valueOfProperty2",
    "isSearchable": false
  }
}
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
Content-type: application/json

{
  "property1": {
    "value": "valueOfProperty1",
    "isSearchable": true
  },
  "property2": {
    "value": "valueOfProperty2",
    "isSearchable": false
  }
}
```


