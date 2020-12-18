---
title: "Create program"
description: "Create a new program object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create program
Namespace: microsoft.graph

Create a new program object.

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
POST /programControls/{programControlsId}/program
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [program](../resources/program.md) object.

The following table shows the properties that are required when you create the [program](../resources/program.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [program](../resources/program.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_program_from_programs"
}
-->
``` http
POST https://graph.microsoft.com/beta/programControls/{programControlsId}/program
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
  "truncated": true,
  "@odata.type": "microsoft.graph.program"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.program",
  "id": "b0453495-3495-b045-9534-45b0953445b0",
  "displayName": "String",
  "description": "String"
}
```

