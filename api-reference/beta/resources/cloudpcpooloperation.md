---
title: "cloudPcPoolOperation resource type"
description: "Represents a long-running operation on a Cloud PC pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPoolOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a long-running operation on a Cloud PC pool.

This is an abstract type. Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcpool-list-operations.md)|[cloudPcPoolOperation](../resources/cloudpcpooloperation.md) collection|List the operations of a [cloudPcPool](../resources/cloudpcpool.md).|
|[Create](../api/cloudpcpool-post-operations.md)|[cloudPcPoolOperation](../resources/cloudpcpooloperation.md)|Create a new operation for a [cloudPcPool](../resources/cloudpcpool.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the operation was created. Read-only.|
|errorCode|[cloudPcPoolOperationErrorCode](../resources/enums.md#cloudpcpooloperationerrorcodevalues)|The error code if the operation failed. The possible values are: `none`, `internalServerError`, `operationTimeout`, `operationConflict`, `unknownFutureValue`. Read-only.|
|errorMessage|String|The error message if the operation failed. Read-only.|
|id|String|The unique identifier for the operation. Read-only. Inherited from [entity](../resources/entity.md).|
|status|[cloudPcPoolOperationStatus](../resources/enums.md#cloudpcpooloperationstatusvalues)|The current status of the operation. The possible values are: `pending`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcPoolOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
} -->
```json
{
  "@odata.type": "#microsoft.graph.cloudPcPoolOperation",
  "createdDateTime": "String (timestamp)",
  "errorCode": "String",
  "errorMessage": "String",
  "id": "String (identifier)",
  "status": "String"
}
```
