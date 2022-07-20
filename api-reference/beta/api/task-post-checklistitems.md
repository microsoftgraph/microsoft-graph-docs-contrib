---
title: "Create checklistItem"
description: "Create a new checklistItem object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Create checklistItem
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new checklistItem object.

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
POST /users/{usersId}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/checklistItems
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [checklistItem](../resources/checklistitem.md) object.

You can specify the following properties when creating a **checklistItem**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|checkedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|isChecked|Boolean|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [checklistItem](../resources/checklistitem.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_checklistitem_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/checklistItems
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
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.checklistItem"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.checklistItem",
  "id": "2f7420e3-c687-23a0-00a6-b01bcfec48ab",
  "displayName": "String",
  "createdDateTime": "String (timestamp)",
  "checkedDateTime": "String (timestamp)",
  "isChecked": "Boolean"
}
```

