---
title: "Update custom properties of a fileStorageContainer "
description: "Update the custom properties of a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Update the custom properties of a fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update one or multiple custom properties on a [fileStorageContainer](../resources/filestoragecontainer.md). Only the **value** and **isSearchable** attributes of custom properties can be updated. Only the custom properties specified in the request body are updated. If a custom property specified in the request body doesn't exist on the container, it will be created. 

Updating a custom property to a `null` value deletes the property from the container.

The application calling this API must have read/write permissions to the **fileStorageContainer** for the respective container type.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Delegated (personal Microsoft account)|Not supported.|
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
In the request body, supply the custom properties to be updated and the new values for the relevant fields. 

The following properties on custom properties can be modified.

|Property|Type|Description|
|:---|:---|:---|
|value|String|The value of the custom property.|
|isSearchable|Boolean|Indicates whether the property is searchable.|

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following example updates the `value` property of the custom properties `clientUniqeId` and `color`. Note that `isSearchable` for `clientUniqueId` was set to `true` before calling this API.
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainer_customproperty"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/customProperties
Content-type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b"
  },
  "color": {
    "value": "green"
  }
}
```
### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.fileStorageContainerCustomPropertyDictionary"
}
-->
``` http
HTTP/1.1 200 Ok

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
    "isSearchable": true
  },
  "color": {
    "value": "green",
    "isSearchable": false
  }
}
```

