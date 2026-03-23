---
title: "cloudPcPoolReprovisionOperation resource type"
description: "Represents a reprovision operation on a Cloud PC pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPoolReprovisionOperation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a reprovision operation on a Cloud PC pool.

Inherits from [cloudPcPoolOperation](../resources/cloudpcpooloperation.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcpool-list-operations.md)|[cloudPcPoolOperation](../resources/cloudpcpooloperation.md) collection|List the operations of a [cloudPcPool](../resources/cloudpcpool.md).|
|[Create](../api/cloudpcpool-post-operations.md)|[cloudPcPoolOperation](../resources/cloudpcpooloperation.md)|Create a new operation for a [cloudPcPool](../resources/cloudpcpool.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time when the operation was created. Read-only. Inherited from [cloudPcPoolOperation](../resources/cloudpcpooloperation.md).|
|errorCode|[cloudPcPoolOperationErrorCode](../resources/enums.md#cloudpcpooloperationerrorcodevalues)|The error code if the operation failed. The possible values are: `none`, `internalServerError`, `operationTimeout`, `operationConflict`, `unknownFutureValue`. Read-only. Inherited from [cloudPcPoolOperation](../resources/cloudpcpooloperation.md).|
|errorMessage|String|The error message if the operation failed. Read-only. Inherited from [cloudPcPoolOperation](../resources/cloudpcpooloperation.md).|
|id|String|The unique identifier for the operation. Read-only. Inherited from [entity](../resources/entity.md).|
|reservePercentage|Int32|The percentage of Cloud PCs to keep in reserve during reprovisioning. Valid value is 0-99.|
|status|[cloudPcPoolOperationStatus](../resources/enums.md#cloudpcpooloperationstatusvalues)|The current status of the operation. The possible values are: `pending`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`. Read-only. Inherited from [cloudPcPoolOperation](../resources/cloudpcpooloperation.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcPoolReprovisionOperation",
  "baseType": "microsoft.graph.cloudPcPoolOperation",
  "openType": false
} -->
```json
{
  "@odata.type": "#microsoft.graph.cloudPcPoolReprovisionOperation",
  "createdDateTime": "String (timestamp)",
  "errorCode": "String",
  "errorMessage": "String",
  "id": "String (identifier)",
  "reservePercentage": "Int32",
  "status": "String"
}
```
