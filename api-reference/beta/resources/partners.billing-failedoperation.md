---
title: "failedOperation resource type"
description: "Failed export operation"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# failedOperation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an export operation that failed to complete.

Inherits from [microsoft.graph.partners.billing.operation](../resources/partners.billing.operation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation in UTC|
|id|String|Unique identifier. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation in UTC.|
|status|operationStatus|Execution status. Possible value is: `failed`.|
|status|operationStatus|Execution status. Possible value is: `failed`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|error|[publicerror](../resources/publicerror.md)|Metadata for the exported files.|

## JSON representation
The following JSON is a representation of the resource.
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
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```