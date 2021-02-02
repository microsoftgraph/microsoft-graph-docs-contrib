---
title: "Create printDocument"
description: "Create a new printDocument object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create printDocument
Namespace: microsoft.graph

Create a new printDocument object.

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
POST /print/printers/{printerId}/jobs/{printJobId}/documents
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [printDocument](../resources/printdocument.md) object.

The following table shows the properties that are required when you create the [printDocument](../resources/printdocument.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|contentType|String|**TODO: Add Description**|
|size|Int64|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [printDocument](../resources/printdocument.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_printdocument_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/documents
Content-Type: application/json
Content-length: 133

{
  "@odata.type": "#microsoft.graph.printDocument",
  "displayName": "String",
  "contentType": "String",
  "size": "Integer"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printDocument"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.printDocument",
  "id": "2f55b8f7-b8f7-2f55-f7b8-552ff7b8552f",
  "displayName": "String",
  "contentType": "String",
  "size": "Integer"
}
```

