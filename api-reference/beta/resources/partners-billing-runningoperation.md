---
title: "runningOperation resource type"
description: "Represents an export operation that is still running, which indicates that the files aren't ready yet."
author: "abhishek-singh-ms"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: resourcePageType
---

# runningOperation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents an export operation that is still running, which indicates that the files aren't ready yet.

Inherits from [operation](../resources/partners-billing-operation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [operation](../resources/partners-billing-operation.md).|
|id|String|The unique identifier for the **runningOperation**. Inherited from [operation](../resources/partners-billing-operation.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [operation](../resources/partners-billing-operation.md).|
|status|microsoft.graph.longRunningOperationStatus|The status of the operation. Supports a subset of the values for **longRunningOperationStatus**. Possible values are: `notStarted`, `running`. Inherited from [operation](../resources/partners-billing-operation.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String"
}
```
