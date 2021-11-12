---
title: "Create baseTaskList"
description: "Create a new baseTaskList object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create baseTaskList
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [baseTaskList](../resources/basetasklist.md) object.

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
POST /user/tasks/lists
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [baseTaskList](../resources/basetasklist.md) object.

You can specify the following properties when creating a **baseTaskList**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `201 Created` response code and a [baseTaskList](../resources/basetasklist.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_basetasklist_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/user/tasks/lists
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
  "truncated": true,
  "@odata.type": "microsoft.graph.baseTaskList"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.baseTaskList",
  "displayName": "String",
  "id": "9d5b47ac-47ac-9d5b-ac47-5b9dac475b9d"
}
```

