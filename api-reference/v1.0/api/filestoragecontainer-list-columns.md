---
title: " List columns in fileStorageContainer"
description: "List columns in a fileStorageContainer."
author: "harmoneddie"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 12/10/2024
---

# List columns in fileStorageContainer

Namespace: microsoft.graph

Get the collection of columns represented as [columnDefinition](../resources/columndefinition.md) resources in a  [fileStorageContainer](../resources/filestoragecontainer.md).  

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-list-columns-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-list-columns-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /storage/fileStorage/containers/{containerId}/columns
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [columnDefinition](../resources/columndefinition.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_columndefinition"
}
-->

``` http
GET https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/columns
```
### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.columnDefinition)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "description": "",
      "displayName": "Title",
      "hidden": false,
      "id": "99ddcf45-e2f7-4f17-82b0-6fba34445103",
      "indexed": false,
      "name": "Title",
      "readOnly": false,
      "required": false,
      "text": {
        "allowMultipleLines": false,
        "appendChangesToExistingText": false,
        "linesForEditing": 0,
        "maxLength": 255
      }
    },
    {
      "description": "",
      "displayName": "Address",
      "id": "11dfef35-e2f7-4f17-82b0-6fba34445103",
      "indexed": false,
      "name": "Address",
      "readOnly": false,
      "required": false,
      "text": {
        "allowMultipleLines": false,
        "appendChangesToExistingText": false,
        "linesForEditing": 0,
        "maxLength": 255
      }
    }
  ]
}
```

