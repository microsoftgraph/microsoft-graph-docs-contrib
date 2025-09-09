---
title: "auditActivityType resource type"
description: "Represents an audit activity type."
ms.date: 08/18/2025
author: "cumansfi"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# auditActivityType resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an audit activity type which includes the associated Microsoft Entra service and category for a specific activity. The audit activities in the tenant are available through the [directoryAudit resource type](../resources/directoryaudit.md) and its related APIs.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/auditlogroot-list-auditactivitytypes.md)|[auditActivityType](../resources/auditactivitytype.md) collection|Get a list of the auditActivityType objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|String|The specific audit activity name.|
|category|String|The category that an audit activity belongs to.|
|id|String|The unique ID for the given audit activity type.|
|service|String|The service that emits the audit log for a given audit activity.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.auditActivityType",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.auditActivityType",
  "id": "String (identifier)",
  "category": "String",
  "service": "String",
  "activity": "String"
}
```

