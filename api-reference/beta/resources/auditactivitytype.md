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

Represents an audit activity type that includes the associated Microsoft Entra service and category for a specific activity. The audit activities in the tenant are available through the [directoryAudit resource type](../resources/directoryaudit.md) and its related APIs.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/auditlogroot-list-auditactivitytypes.md)|[auditActivityType](../resources/auditactivitytype.md) collection|Get a list of the auditActivityType objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activity|String|Indicates the activity name or the operation name (for example "Create User", "Add member to group"). For a list of activities logged, refer to [Microsoft Entra audit log categories and activities](/azure/active-directory/reports-monitoring/reference-audit-activities). Supports `$filter` (`eq`).|
|category|String|Indicates which resource category that's targeted by the activity. For example: `UserManagement`, `GroupManagement`, `ApplicationManagement`, `RoleManagement`. For a list of categories for activities logged, refer to [Microsoft Entra audit log categories and activities](/azure/active-directory/reports-monitoring/reference-audit-activities). Supports `$filter` (`eq`).|
|id|String|The unique ID for the given audit activity type.|
|service|String|Indicates information on which service initiated the activity. For example: Self-service Password Management, Core Directory, B2C, Invited Users, Microsoft Identity Manager, Privileged Identity Management. Supports `$filter` (`eq`).|

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

