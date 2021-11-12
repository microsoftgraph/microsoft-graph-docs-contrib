---
title: "Update baseTaskList"
description: "Update the properties of a baseTaskList object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update baseTaskList
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [baseTaskList](../resources/basetasklist.md) object.

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
PATCH /user/tasks/lists/{baseTaskListId}
PATCH /user/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/parentList
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



## Response

If successful, this method returns a `200 OK` response code and an updated [baseTaskList](../resources/basetasklist.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_basetasklist"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/tasks/lists/{baseTaskListId}
Content-Type: application/json
Content-length: 82

{
  "@odata.type": "#microsoft.graph.baseTaskList",
  "displayName": "String"
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
  "@odata.type": "#microsoft.graph.baseTaskList",
  "displayName": "String",
  "id": "9d5b47ac-47ac-9d5b-ac47-5b9dac475b9d"
}
```

