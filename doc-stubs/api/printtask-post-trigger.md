---
title: "Add printTaskTrigger"
description: "Add trigger by posting to the trigger collection."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Add printTaskTrigger
Namespace: microsoft.graph

Add trigger by posting to the trigger collection.

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
POST /print/printers/{printerId}/jobs/{printJobId}/tasks/{printTaskId}/trigger/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [printTaskTrigger](../resources/printtasktrigger.md) object.

The following table shows the properties that are required when you create the [printTaskTrigger](../resources/printtasktrigger.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|event|printEvent|**TODO: Add Description**. Possible values are: `jobStarted`, `unknownFutureValue`.|



## Response

If successful, this method returns a `204 No Content` response code and a [printTaskTrigger](../resources/printtasktrigger.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_printtasktrigger_from_"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/print/printers/{printerId}/jobs/{printJobId}/tasks/{printTaskId}/trigger/$ref
Content-Type: application/json
Content-length: 80

{
  "@odata.type": "#microsoft.graph.printTaskTrigger",
  "event": "String"
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printTaskTrigger"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.printTaskTrigger",
  "id": "77cd4a13-4a13-77cd-134a-cd77134acd77",
  "event": "String"
}
```

