---
title: "task: move"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# task: move
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

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
POST ** Entity URI for microsoft.graph.task not found/move
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|destinationTaskListId|String|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [baseTask](../resources/basetask.md) in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "taskthis.move"
}
-->
``` http
POST https://graph.microsoft.com/beta** Entity URI for microsoft.graph.task not found/move
Content-Type: application/json
Content-length: 41

{
  "destinationTaskListId": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.baseTask"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.baseTask",
    "id": "String (identifier)",
    "textBody": "String",
    "createdDateTime": "String (timestamp)",
    "lastModifiedDateTime": "String (timestamp)",
    "bodyLastModifiedDateTime": "String (timestamp)",
    "completedDateTime": "String (timestamp)",
    "dueDateTime": {
      "@odata.type": "microsoft.graph.dateTimeTimeZone"
    },
    "startDateTime": {
      "@odata.type": "microsoft.graph.dateTimeTimeZone"
    },
    "importance": "String",
    "recurrence": {
      "@odata.type": "microsoft.graph.patternedRecurrence"
    },
    "displayName": "String",
    "status": "String",
    "viewpoint": {
      "@odata.type": "microsoft.graph.taskViewpoint"
    }
  }
}
```

