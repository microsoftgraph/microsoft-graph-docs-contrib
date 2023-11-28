---
title: "exportSuccessOperation resource type"
description: "Export operation completed successfully"
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# exportSuccessOperation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an export operation that is completed successfully


Inherits from [microsoft.graph.partners.billing.operation](../resources/partners-billing-operation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation in UTC|
|id|String|Unique identifier. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation in UTC.|
|status|operationStatus|Execution status. Possible value is: `completed`.|

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

