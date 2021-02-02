---
title: "Update printTask"
description: "Update the properties of a printTask object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update printTask
Namespace: microsoft.graph

Update the properties of a [printTask](../resources/printtask.md) object.

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
PATCH /print/printers/{printerId}/jobs/{printJobId}/tasks/{printTaskId}
PATCH /print/printers/{printerId}/jobs/{printJobId}/tasks/{printTaskId}/definition/tasks/{printTaskId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [printTask](../resources/printtask.md) object.

The following table shows the properties that are required when you update the [printTask](../resources/printtask.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|status|[printTaskStatus](../resources/printtaskstatus.md)|**TODO: Add Description**|
|parentUrl|String|**TODO: Add Description**|



## Response

If successful, this method returns a `200 OK` response code and an updated [printTask](../resources/printtask.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_printtask"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/tasks/{printTaskId}
Content-Type: application/json
Content-length: 152

{
  "@odata.type": "#microsoft.graph.printTask",
  "status": {
    "@odata.type": "microsoft.graph.printTaskStatus"
  },
  "parentUrl": "String"
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
  "@odata.type": "#microsoft.graph.printTask",
  "id": "0f806e8f-6e8f-0f80-8f6e-800f8f6e800f",
  "status": {
    "@odata.type": "microsoft.graph.printTaskStatus"
  },
  "parentUrl": "String"
}
```

