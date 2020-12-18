---
title: "Update businessFlowTemplate"
description: "Update the properties of a businessFlowTemplate object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update businessFlowTemplate
Namespace: microsoft.graph

Update the properties of a [businessFlowTemplate](../resources/businessflowtemplate.md) object.

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
PATCH /businessFlowTemplates/{businessFlowTemplatesId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [businessFlowTemplate](../resources/businessflowtemplate.md) object.

The following table shows the properties that are required when you update the [businessFlowTemplate](../resources/businessflowtemplate.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [businessFlowTemplate](../resources/businessflowtemplate.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_businessflowtemplate"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/businessFlowTemplates/{businessFlowTemplatesId}
Content-Type: application/json
Content-length: 90

{
  "@odata.type": "#microsoft.graph.businessFlowTemplate",
  "displayName": "String"
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
  "@odata.type": "#microsoft.graph.businessFlowTemplate",
  "id": "24090ad4-0ad4-2409-d40a-0924d40a0924",
  "displayName": "String"
}
```

