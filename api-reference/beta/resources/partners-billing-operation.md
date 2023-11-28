---
title: "operation resource type"
description: "Export operation status"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# operation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an operation to export partner's billing data.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get operation](../api/partners-billing-operation-get.md)|[operation](../resources/partners-billing-operation.md)|Read the properties and relationships of an [operation](../resources/partners-billing-operation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation in UTC|
|id|String|Unique identifier. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation in UTC.|
|status|operationStatus|Execution status. Possible values are: `notStarted`, `running`, `completed`, `failed`.|

## Relationships
None.

## JSON representation
The following JSON is a representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.operation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.operation",
  "id": "String (identifier)",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)"
}
```

