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

The Viva Engage async operation is an operation that trascends the lifetime of a single API request. These operations are long-running or too expensive to complete within the timeframe of their original request.

When an async operation is initiated, the method returns a 202 Accepted response code. The response will also contain an operation location header, which contains the location of the engagementAsyncOperation. Periodically check the status of the operation by making a GET request to this location; wait >30 sectonds between checks. When request completes successfully, the status will be "succeeded" and the resourceLocation will point to the created/modified resource.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
| [Get engagementAsyncOperation](../api/engagementasyncoperation-get.md) | [engagementAsyncOperation](../resources/engagementasyncoperation.md) | Read the properties and relationships of an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
| id | String | Unique operation id. |
| createdDateTime | DateTimeOffset | Time when the operation was created. |
| lastActionDateTime | DateTimeOffset | Time when the async operation was last updated. |
| operationType | [engagementAsyncOperationType](../resources/engagementasyncoperationtype) | Denotes which type of operation is being described.The possible values are: `createCommunity`. |
| resourceId | String | The ID of the object that's created or modified as result of this async operation. |
| resourceLocation |String| The location of the object that's created or modified as result of this async operation. |
| status | [engagementAsyncOperationStatus](../resources/engagementasyncoperationstatus.md) | Operation status. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|


## JSON representation
The following is a JSON representation of the resource.
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
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "resourceLocation": "String",
  "status": "String",
  "operationType": "String",
  "resourceId": "String"
}
```

