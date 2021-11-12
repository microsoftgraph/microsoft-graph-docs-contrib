---
title: "baseTask: move"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# baseTask: move
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
POST /user/tasks/alltasks/{baseTaskId}/move
POST /user/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}/move
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|destinationTaskListId|String|**TODO: Add Description**|



## Response

If successful, this action returns a `200 OK` response code and a [baseTask](../resources/basetask.md) in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "basetask_move"
}
-->
``` http
POST https://graph.microsoft.com/beta/user/tasks/alltasks/{baseTaskId}/move
Content-Type: application/json
Content-length: 41

{
  "destinationTaskListId": "String"
}
```


### Response
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
    "body": {
      "@odata.type": "microsoft.graph.itemBody"
    },
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
    "personalProperties": {
      "@odata.type": "microsoft.graph.personalTaskProperties"
    },
    "id": "String (identifier)"
  }
}
```

