---
title: "engagementAsyncOperation resource type"
description: "The Engagement async operation is an operation that transcends the lifetime of a single API request. "
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: resourcePageType
---

# engagementAsyncOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Viva Engage async operation is an operation that transcends the lifetime of a single API request. These operations are long-running or too expensive to complete within the timeframe of their original request.

When an async operation is initiated, the method returns a 202 Accepted response code and an operation location header, which contains the location of the engagementAsyncOperation. Periodically check the status of the operation by making a GET request to this location; wait >30 seconds between checks. When request completes successfully, the operation status will be "succeeded" and the resourceLocation will point to the created/modified resource.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
| [Get engagementAsyncOperation](../api/engagementasyncoperation-get.md) | [engagementAsyncOperation](../resources/engagementasyncoperation.md) | Read the properties and relationships of an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
| createdDateTime | DateTimeOffset | Date and time when the operation was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| id | String | The unique identifier for the operation. |
| lastActionDateTime | DateTimeOffset | Date and time when the async operation was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| operationType | [engagementAsyncOperationType](../resources/engagementasyncoperation.md#engagementasyncoperationtype-values) | The type of long-running operation. The possible values are: `createCommunity`, `unknownFutureValue`. |
| resourceId | String | The ID of the object that's created or modified as result of this async operation. |
| resourceLocation |String| The location of the object that's created or modified as result of this async operation. |
| status | [engagementAsyncOperationStatus](../resources/engagementasyncoperation.md#engagementasyncoperationstatus-values) | The status of the operation. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|

### engagementAsyncOperationStatus values

| Member | Description |
|:---------------|:----------|
| invalid | Invalid value. |
| notStarted | The operation hasn't started. |
| inProgress | The operation is running. |
| succeeded | The operation succeeded. |
| failed | The operation failed. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

### engagementAsyncOperationType values

| Member | Description |
|:---------------|:----------|
| createCommunity | Operation to create a Viva Engage community. |
| unknownFutureValue | Evolvable enumeration sentinel value. Do not use.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.engagementAsyncOperation",
  "baseType": "microsoft.graph.longRunningOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.engagementAsyncOperation",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "operationType": "String",
  "resourceId": "String",
  "resourceLocation": "String",
  "status": "String"
}
```
