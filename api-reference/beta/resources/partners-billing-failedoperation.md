---
title: "failedOperation resource type"
description: "Represents an export operation that failed to complete."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# failedOperation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an export operation that failed to complete.

Inherits from [operation](../resources/partners-billing-operation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [operation](../resources/partners-billing-operation.md).|
|id|String|The unique identifier for the **failedOperation**. Inherited from [operation](../resources/partners-billing-operation.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [operation](../resources/partners-billing-operation.md).|
|status|operationStatus|The status of the operation. Supports a subset of the values for **operationStatus**. Possible value is: `failed`. Inherited from [operation](../resources/partners-billing-operation.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|error|[publicError](../resources/publicerror.md)|Metadata for the exported files.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.failedOperation",
  "baseType": "microsoft.graph.partners.billing.operation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.failedOperation",
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String"
}
```
