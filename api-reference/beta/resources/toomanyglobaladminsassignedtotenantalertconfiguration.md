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

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List tooManyGlobalAdminsAssignedToTenantAlertConfigurations](../api/toomanyglobaladminsassignedtotenantalertconfiguration-list.md)|[tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md) collection|Get a list of the [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md) objects and their properties.|
|[Get tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../api/toomanyglobaladminsassignedtotenantalertconfiguration-get.md)|[tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md)|Read the properties and relationships of a [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md) object.|
|[Update tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../api/toomanyglobaladminsassignedtotenantalertconfiguration-update.md)|[tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md)|Update the properties of a [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md) object.|
|[Delete tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../api/toomanyglobaladminsassignedtotenantalertconfiguration-delete.md)|None|Delete a [tooManyGlobalAdminsAssignedToTenantAlertConfiguration](../resources/toomanyglobaladminsassignedtotenantalertconfiguration.md) object.|
|[List unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalert-list-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|Get the unifiedRoleManagementAlertDefinition resources from the alertDefinition navigation property.|
|[Add unifiedRoleManagementAlertDefinition](../api/toomanyglobaladminsassignedtotenantalertconfiguration-post-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Add alertDefinition by posting to the alertDefinition collection.|
|[Remove unifiedRoleManagementAlertDefinition](../api/toomanyglobaladminsassignedtotenantalertconfiguration-delete-alertdefinition.md)|None|Remove an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|

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

