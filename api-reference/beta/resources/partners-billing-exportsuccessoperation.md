---
title: "exportSuccessOperation resource type"
description: "Represents an export operation that is completed successfully."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# exportSuccessOperation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an export operation that is completed successfully.

Inherits from [operation](../resources/partners-billing-operation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|Unique identifier. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|status|operationStatus|The status of the operation. Possible value is: `completed`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|resourceLocation|[microsoft.graph.partners.billing.manifest](../resources/partners-billing-manifest.md)|Metadata for the exported files.|

## JSON representation

The following JSON is a representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.exportSuccessOperation",
  "baseType": "microsoft.graph.partners.billing.operation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.exportSuccessOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String",
  "resourceLocation": {
    "@odata.type": "#microsoft.graph.partners.billing"
  }  
}
```

