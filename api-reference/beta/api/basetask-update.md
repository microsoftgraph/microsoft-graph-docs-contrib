---
title: "Update baseTask"
description: "Update the properties of a baseTask object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Update baseTask
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [baseTask](../resources/basetask.md) object.

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
PATCH /user/tasks/alltasks/{baseTaskId}
PATCH /user/tasks/lists/{baseTaskListId}/tasks/{baseTaskId}
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
|body|[itemBody](../resources/itembody.md)|**TODO: Add Description** Optional.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|bodyLastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Required.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Optional.|
|dueDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description** Optional.|
|startDateTime|[dateTimeTimeZone](../resources/datetimetimezone.md)|**TODO: Add Description** Optional.|
|importance|importance|**TODO: Add Description**. The possible values are: `low`, `normal`, `high`. Required.|
|recurrence|[patternedRecurrence](../resources/patternedrecurrence.md)|**TODO: Add Description** Optional.|
|displayName|String|**TODO: Add Description** Optional.|
|status|taskStatus_v2|**TODO: Add Description**. The possible values are: `notStarted`, `inProgress`, `completed`, `unknownFutureValue`. Required.|
|personalProperties|[personalTaskProperties](../resources/personaltaskproperties.md)|**TODO: Add Description** Required.|



## Response

If successful, this method returns a `200 OK` response code and an updated [baseTask](../resources/basetask.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "update_basetask"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/user/tasks/alltasks/{baseTaskId}
Content-Type: application/json
Content-length: 634

{
  "@odata.type": "#microsoft.graph.baseTask",
  "body": {
    "@odata.type": "microsoft.graph.itemBody"
  },
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
  }
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
  "id": "992ac181-c181-992a-81c1-2a9981c12a99"
}
```

