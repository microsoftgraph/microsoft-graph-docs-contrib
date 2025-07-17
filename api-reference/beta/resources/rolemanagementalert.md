---
title: "roleManagementAlert resource type"
description: "Represents an alert singleton that exposes security alerts, definitions, and configurations in PIM for Microsoft Entra roles."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# roleManagementAlert resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert singleton that exposes security alerts, definitions, and configurations in PIM for Microsoft Entra roles.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of an alert. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertConfigurations|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) collection|The various configurations of an alert for Microsoft Entra roles. The configurations are predefined and can't be created or deleted, but some of the configurations can be modified.|
|alertDefinitions|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection| Defines an alert, its impact, and measures to mitigate or prevent it.|
|alerts|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) collection|Represents the alert entity.|
|operations|[longRunningOperation](../resources/longrunningoperation.md) collection|Represents operations on resources that take a long time to complete and can run in the background until completion. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.roleManagementAlert",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.roleManagementAlert",
  "id": "String (identifier)"
}
```
