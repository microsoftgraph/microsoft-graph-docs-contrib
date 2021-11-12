---
title: "Update checklistItem"
description: "Update the properties of a checklistItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update checklistItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [checklistItem](../resources/checklistitem.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /user/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/checklistItems/{checklistItemId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|checkedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|isChecked|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [checklistItem](../resources/checklistitem.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_checklistitem"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/checklistItems/{checklistItemId}
Content-Type: application/json
Content-length: 154

{
  "@odata.type": "#microsoft.graph.checklistItem",
  "displayName": "String",
  "checkedDateTime": "String (timestamp)",
  "isChecked": "Boolean"
}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.checklistItem",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "checkedDateTime": "String (timestamp)",
  "isChecked": "Boolean",
  "id": "12a189c4-89c4-12a1-c489-a112c489a112"
}
```

