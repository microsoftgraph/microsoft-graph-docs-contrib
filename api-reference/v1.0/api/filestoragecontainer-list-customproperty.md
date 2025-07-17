---
title: "List fileStorageContainer custom properties"
description: "List the custom properties of a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 09/26/2024
---

# List fileStorageContainer custom properties

Namespace: microsoft.graph

List the custom properties of a [fileStorageContainer](../resources/filestoragecontainer.md) object. The caller can retrieve all custom properties or get a specific property by name.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_list_customproperty" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-customproperty-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/customProperties
GET /storage/fileStorage/containers/{containerId}/customProperties/{propertyName}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Request
The following example shows how to get a custom property named `clientUniquieId`.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainer_customproperty_1"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/customProperties/clientUniqueId
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-filestoragecontainer-customproperty-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fileStorageContainerCustomPropertyValue)"
}
-->
``` http
HTTP/1.1 200 Ok
Content-type: application/json

{
  "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
  "isSearchable": true
}

```
### Request
The following example shows how to get all the custom properties of a **fileStorageContainer**.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainer_customproperty_2"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/customProperties/
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-filestoragecontainer-customproperty-2-javascript-snippets.md)]
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
Content-type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
    "isSearchable": true
  },
  "color": {
    "value": "purple"
  }
}
```
