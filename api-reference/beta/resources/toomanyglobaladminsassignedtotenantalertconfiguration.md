---
title: "tooManyGlobalAdminsAssignedToTenantAlertConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# tooManyGlobalAdminsAssignedToTenantAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|globalAdminCountThreshold|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|percentageOfGlobalAdminsOutOfRolesThreshold|Int32|**TODO: Add Description**|
|scopeId|String|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeType|String|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|**TODO: Add Description** Inherited from [microsoft.graph.unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean",
  "globalAdminCountThreshold": "Integer",
  "percentageOfGlobalAdminsOutOfRolesThreshold": "Integer"
}
```

