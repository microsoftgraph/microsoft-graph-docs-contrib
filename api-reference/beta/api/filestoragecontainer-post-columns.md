---
title: "Create column"
description: "Create a columnDefinition in a fileStorageContainer."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Create column

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a column for a [fileStorageContainer](../resources/filestoragecontainer.md) that specifies a [columnDefinition](../resources/columndefinition.md). 

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainer-post-columns-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-post-columns-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /storageContainers/{containerId}/columns
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [columnDefinition](../resources/columndefinition.md) object.

Only the following type-related properties are supported and they're mutually exclusive; a column can only have one of them specified at a time.

|Property|Type|Description|
|:---|:---|:---|
|boolean|[booleanColumn](../resources/booleancolumn.md)|This column stores boolean values.|
|choice|[choiceColumn](../resources/choicecolumn.md)|This column stores data from a list of choices.|
|currency|[currencyColumn](../resources/currencycolumn.md)|This column stores currency values.|
|dateTime|[dateTimeColumn](../resources/datetimecolumn.md)|This column stores DateTime values.|
|hyperlinkOrPicture|[hyperlinkOrPictureColumn](../resources/hyperlinkorpicturecolumn.md)|This column stores hyperlink or picture values.|
|number|[numberColumn](../resources/numbercolumn.md)|This column stores number values.|
|personOrGroup|[personOrGroupColumn](../resources/personorgroupcolumn.md)|This column stores Person or Group values.|
|text|[textColumn](../resources/textcolumn.md)|This column stores text values.|

## Response

If successful, this method returns a `201 Created` response code and a [columnDefinition](../resources/columndefinition.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_columndefinition_for_fileStorageContainer"
}
-->
``` http
POST https://graph.microsoft.com/beta/storageContainers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/columns
Content-Type: application/json

{
  "description": "test",
  "enforceUniqueValues": false,
  "hidden": false,
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
HTTP/1.1 201 Created
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

