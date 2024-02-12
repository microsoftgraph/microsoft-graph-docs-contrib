---
title: "operation resource type"
description: "Represents an operation to export the billing data of a partner."
author: "sourishdeb"
ms.localizationpriority: medium
ms.prod: "reports"
doc_type: resourcePageType
---

# operation resource type

Namespace: microsoft.graph.partners.billing

[!INCLUDE [alerts-callout-csp-partner-only](../includes/alerts-callout-csp-partner-only.md)]

Represents an operation to export the billing data of a partner.

Base type of [exportSuccessOperation](../resources/partners-billing-exportsuccessoperation.md), [failedOperation](../resources/partners-billing-failedoperation.md), and [runningOperation](../resources/partners-billing-runningoperation.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get operation](../api/partners-billing-operation-get.md)|[microsoft.graph.partners.billing.operation](../resources/partners-billing-operation.md)|Read the properties and relationships of an [operation](../resources/partners-billing-operation.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The start time of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|id|String|The unique identifier for the **operation**. Inherited from [entity](../resources/partners-billing-operation.md).|
|lastActionDateTime|DateTimeOffset|The time of the last action of the operation. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|status|microsoft.graph.longRunningOperationStatus|The status of the operation. Possible values are: `notStarted`, `running`, `completed`, `failed`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "lastActionDateTime": "String (timestamp)",
  "status": "String"
}
```
