---
title: "roleManagementAlert resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# roleManagementAlert resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List alertConfigurations](../api/rolemanagementalert-list-alertconfigurations.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) collection|Get the unifiedRoleManagementAlertConfiguration resources from the alertConfigurations navigation property.|
|[List alertDefinitions](../api/rolemanagementalert-list-alertdefinitions.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|Get the unifiedRoleManagementAlertDefinition resources from the alertDefinitions navigation property.|
|[List alerts](../api/rolemanagementalert-list-alerts.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) collection|Get the unifiedRoleManagementAlert resources from the alerts navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertConfigurations|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) collection|**TODO: Add Description**|
|alertDefinitions|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|**TODO: Add Description**|
|alerts|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) collection|**TODO: Add Description**|
|operations|[longRunningOperation](../resources/longrunningoperation.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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

