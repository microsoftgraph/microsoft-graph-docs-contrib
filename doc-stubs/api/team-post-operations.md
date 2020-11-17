---
title: "Create operations"
description: "Create a new teamsAsyncOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create operations
Namespace: microsoft.graph

Create a new teamsAsyncOperation object.

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
POST /teams/{teamsId}/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) object.

The following table shows the properties that are required when you create the [teamsAsyncOperation](../resources/teamsasyncoperation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|operationType|teamsAsyncOperationType|**TODO: Add Description**. Possible values are: `invalid`, `cloneTeam`, `archiveTeam`, `unarchiveTeam`, `createTeam`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|status|teamsAsyncOperationStatus|**TODO: Add Description**. Possible values are: `invalid`, `notStarted`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|
|lastActionDateTime|DateTimeOffset|**TODO: Add Description**|
|attemptsCount|Int32|**TODO: Add Description**|
|targetResourceId|String|**TODO: Add Description**|
|targetResourceLocation|String|**TODO: Add Description**|
|error|[operationError](../resources/operationerror.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [teamsAsyncOperation](../resources/teamsasyncoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_teamsasyncoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{teamsId}/operations
Content-Type: application/json
Content-length: 346

{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamsAsyncOperation",
  "operationType": "String",
  "status": "String",
  "lastActionDateTime": "String (timestamp)",
  "attemptsCount": "Integer",
  "targetResourceId": "String",
  "targetResourceLocation": "String",
  "error": {
    "@odata.type": "microsoft.graph.operationError"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Microsoft.Teams.GraphSvc.teamsAsyncOperation"
}
-->
``` http
HTTP/1.1 201 Created

Content-Type: application/json
{
  "@odata.type": "#Microsoft.Teams.GraphSvc.teamsAsyncOperation",
  "id": "c9df69e0-69e0-c9df-e069-dfc9e069dfc9",
  "operationType": "String",
  "createdDateTime": "String (timestamp)",
  "status": "String",
  "lastActionDateTime": "String (timestamp)",
  "attemptsCount": "Integer",
  "targetResourceId": "String",
  "targetResourceLocation": "String",
  "error": {
    "@odata.type": "microsoft.graph.operationError"
  }
}
```

