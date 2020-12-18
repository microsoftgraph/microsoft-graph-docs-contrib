---
title: "Update program"
description: "Update the properties of a program object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update program
Namespace: microsoft.graph

Update the properties of a [program](../resources/program.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
PATCH /programs/{programsId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [program](../resources/program.md) object.

The following table shows the properties that are required when you update the [program](../resources/program.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [program](../resources/program.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_program"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/programs/{programsId}
Content-Type: application/json
Content-length: 105

{
  "@odata.type": "#microsoft.graph.program",
  "displayName": "String",
  "description": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.program",
  "id": "b0453495-3495-b045-9534-45b0953445b0",
  "displayName": "String",
  "description": "String"
}
```

