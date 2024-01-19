---
title: "failedOperation resource type"
description: "Represents an export operation that failed to complete."
author: "sourishdeb"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# failedOperation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents an export operation that failed to complete.

Inherits from [operation](../resources/partners-billing-operation.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [operation](../resources/partners-billing-operation.md).|
|id|String|The unique identifier for the **failedOperation**. Inherited from [operation](../resources/partners-billing-operation.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [operation](../resources/partners-billing-operation.md).|
|status|microsoft.graph.longRunningOperationStatus|The status of the operation. Supports a subset of the values for **longRunningOperationStatus**. Possible value is: `failed`. Inherited from [operation](../resources/partners-billing-operation.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|Information about the error that caused the failure.|

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
