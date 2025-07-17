---
title: "Update custom properties of a fileStorageContainer "
description: "Update the custom properties of a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 11/12/2024
---

# Update the custom properties of a fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update one or multiple custom properties on a [fileStorageContainer](../resources/filestoragecontainer.md). Only the **value** and **isSearchable** attributes of custom properties can be updated. Only the custom properties specified in the request body are updated. If a custom property specified in the request body doesn't exist on the container, it will be created. 

Updating a custom property to a `null` value deletes the property from the container.

The application calling this API must have read and write permissions to the **fileStorageContainer** for the respective container type.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_update_customproperty" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-update-customproperty-permissions.md)]

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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_filestoragecontainer_customproperty"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/customProperties
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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-filestoragecontainer-customproperty-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

