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
|[List roleManagementAlerts](../api/identitygovernance-list-rolemanagementalerts.md)|[roleManagementAlert](../resources/rolemanagementalert.md) collection|Get a list of the [roleManagementAlert](../resources/rolemanagementalert.md) objects and their properties.|
|[Create roleManagementAlert](../api/identitygovernance-post-rolemanagementalerts.md)|[roleManagementAlert](../resources/rolemanagementalert.md)|Create a new [roleManagementAlert](../resources/rolemanagementalert.md) object.|
|[Get roleManagementAlert](../api/rolemanagementalert-get.md)|[roleManagementAlert](../resources/rolemanagementalert.md)|Read the properties and relationships of a [roleManagementAlert](../resources/rolemanagementalert.md) object.|
|[Update roleManagementAlert](../api/rolemanagementalert-update.md)|[roleManagementAlert](../resources/rolemanagementalert.md)|Update the properties of a [roleManagementAlert](../resources/rolemanagementalert.md) object.|
|[Delete roleManagementAlert](../api/identitygovernance-delete-rolemanagementalerts.md)|None|Delete a [roleManagementAlert](../resources/rolemanagementalert.md) object.|
|[List alertConfigurations](../api/unifiedrolemanagementalert-list-alertconfiguration.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) collection|Get the unifiedRoleManagementAlertConfiguration resources from the alertConfigurations navigation property.|
|[Create unifiedRoleManagementAlertConfiguration](../api/rolemanagementalert-post-alertconfigurations.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|Create a new unifiedRoleManagementAlertConfiguration object.|
|[List alertDefinitions](../api/unifiedrolemanagementalert-list-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|Get the unifiedRoleManagementAlertDefinition resources from the alertDefinitions navigation property.|
|[Add unifiedRoleManagementAlertDefinition](../api/rolemanagementalert-post-alertdefinitions.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Add alertDefinitions by posting to the alertDefinitions collection.|
|[Remove alertDefinitions](../api/rolemanagementalert-delete-alertdefinitions.md)|None|Remove an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|
|[List alerts](../api/rolemanagementalert-list-alerts.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) collection|Get the unifiedRoleManagementAlert resources from the alerts navigation property.|
|[Create unifiedRoleManagementAlert](../api/rolemanagementalert-post-alerts.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md)|Create a new unifiedRoleManagementAlert object.|
|[List operations](../api/authentication-list-operations.md)|[longRunningOperation](../resources/longrunningoperation.md) collection|Get the longRunningOperation resources from the operations navigation property.|
|[Create longRunningOperation](../api/rolemanagementalert-post-operations.md)|[longRunningOperation](../resources/longrunningoperation.md)|Create a new longRunningOperation object.|

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

