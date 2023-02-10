---
title: "unifiedRoleManagementAlertConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unifiedRoleManagementAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementAlertConfigurations](../api/rolemanagementalert-list-alertconfigurations.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) collection|Get a list of the [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) objects and their properties.|
|[Get unifiedRoleManagementAlertConfiguration](../api/unifiedrolemanagementalertconfiguration-get.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|Read the properties and relationships of an [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object.|
|[Update unifiedRoleManagementAlertConfiguration](../api/unifiedrolemanagementalertconfiguration-update.md)|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|Update the properties of an [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description**|
|scopeId|String|**TODO: Add Description**|
|scopeType|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean"
}
```

