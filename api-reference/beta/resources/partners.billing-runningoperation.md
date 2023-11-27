---
title: "runningOperation resource type"
description: "Export operation that is still running."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# runningOperation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export operation that is still running and files are not yet ready.

Inherits from [microsoft.graph.partners.billing.operation](../resources/partners.billing-operation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation in UTC|
|id|String|Unique identifier. Inherited from [entity](../resources/entity.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation in UTC.|
|status|operationStatus|Execution status. Possible value is: `notStarted`, `running`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partners.billing.runningOperation",
  "baseType": "microsoft.graph.partners.billing.operation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partners.billing.runningOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String"
}
```

