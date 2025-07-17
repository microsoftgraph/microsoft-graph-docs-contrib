---
title: "Get column"
description: "Get a column from a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 05/20/2024
---

# Get column

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of a column represented as a [columnDefinition](../resources/columndefinition.md) in a [fileStorageContainer](../resources/filestoragecontainer.md).  

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-get-columns-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-get-columns-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /storageContainers/{containerId}/columns/{column-id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|


## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [columnDefinition](../resources/columndefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_columndefinition_for_fileStorageContainer"
}
-->
``` http
GET https://graph.microsoft.com/beta/storageContainers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.columnDefinition"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "description": "test",
  "displayName": "Title",
  "enforceUniqueValues": false,
  "hidden": false,
  "id": "99ddcf45-e2f7-4f17-82b0-6fba34445103",
  "indexed": false,
  "name": "Title",
  "text": {
    "allowMultipleLines": false,
    "appendChangesToExistingText": false,
    "linesForEditing": 0,
    "maxLength": 255
  }
}
```

