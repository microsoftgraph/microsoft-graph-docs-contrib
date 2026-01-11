---
title: "Add custom properties to a fileStorageContainer"
description: "Add custom properties to a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 11/14/2024
---

# Add custom properties to a fileStorageContainer

Namespace: microsoft.graph

Add custom properties to a [fileStorageContainer](../resources/filestoragecontainer.md) object. 

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_post_customproperty" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-customproperty-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of a [fileStorageContainerCustomPropertyDictionary](../resources/filestoragecontainercustompropertydictionary.md), which is a map with string keys and [fileStorageContainerCustomPropertyValue](../resources/filestoragecontainercustompropertyvalue.md) values.

You can specify the following properties when you create a custom property.

|Property|Type|Description|
|:---|:---|:---|
|value|String|The value of the custom property. Required.|
|isSearchable|Boolean|A flag to indicate whether the property is searchable. Optional. The default value is `false`.|

## Response

If successful, this method returns a `201 Created` response code.

## Examples

### Example 1: Create a custom property

#### Request
The following example shows how to create a custom property called `clientUniqueId` for a container.

<!-- {
  "blockType": "request",
  "name": "post_filestoragecontainer_customproperty_1"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/storage/fileStorage/containers/{containerId}/customProperties
Content-Type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b"
  }
}
```

---

#### Response
The following example shows the response. By default, the property isn't searchable.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
```
### Example 2: Create a custom searchable property

#### Request
The following example shows how to create a searchable custom property called `clientUniqueId` for a container.

<!-- {
  "blockType": "request",
  "name": "post_filestoragecontainer_customproperty_2"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/customProperties
Content-Type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
    "isSearchable": true
  }
}
```

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 201 Created
```
