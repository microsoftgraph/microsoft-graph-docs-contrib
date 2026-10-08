---
title: "teamsAsyncOperation resource type"
description: "A Microsoft Teams async operation transcends the lifetime of a single API request. "
author: "MSFTRickyCastaneda"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# teamsAsyncOperation resource type

Namespace: microsoft.graph



A Microsoft Teams async operation is an operation that transcends the lifetime of a single API request. 
These operations are long-running or too expensive to complete within the timeframe of their originating request.

When an async operation is initiated, the method returns a 202 Accepted response code. 
The response will also contain a Location header, which contains the location of the teamsAsyncOperation. 
Periodically check the status of the operation by making a GET request to this location; wait >30 seconds between checks.
When the request completes successfully, the status will be "succeeded" and the targetResourceLocation will point to the created/modified resource.

## Properties

| Property | Type	| Description |
|:---------------|:--------|:----------|
|attemptsCount|Int32|Number of times the operation was attempted before being marked successful or failed.|
|createdDateTime|DateTimeOffset |Time when the operation was created.|
|error|[operationError](operationerror.md)|Any error that causes the async operation to fail.|
|id|string |Unique operation ID.|
|lastActionDateTime|DateTimeOffset |Time when the async operation was last updated.|
|operationType|[teamsAsyncOperationType](teamsasyncoperationtype.md) |Denotes the type of operation described. The possible values are: `invalid`, `cloneTeam`, `archiveTeam`, `unarchiveTeam`, `createTeam`, `unknownFutureValue`, `teamifyGroup`, `createChannel`, `archiveChannel`, `unarchiveChannel`. Use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `teamifyGroup`, `createChannel`, `archiveChannel`, `unarchiveChannel`. |
|status|[teamsAsyncOperationStatus](teamsasyncoperationstatus.md)| Operation status.|
|targetResourceId|String |The ID of the object that's created or modified as result of this async operation, typically a [team](../resources/team.md).|
|targetResourceLocation|string|The location of the object that's created or modified as result of this async operation. This URL should be treated as an opaque value and not parsed into its component paths.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAsyncOperation"
}-->

```json
{
  "attemptsCount": "Int32",
  "createdDateTime": "String (timestamp)",
  "error": { "@odata.type": "microsoft.graph.operationError" },
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "operationType": "String",
  "status": "String",
  "targetResourceId": "String",
  "targetResourceLocation": "String"
}
```

<!-- uuid: 20fd7863-9545-40d4-ae8f-fee2d115a690
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teams async operation resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

