---
title: "unifiedRoleManagementAlertDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unifiedRoleManagementAlertDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementAlertDefinitions](../api/unifiedrolemanagementalert-list-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|Get a list of the [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) objects and their properties.|
|[Create unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalert-post-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Create a new [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|
|[Get unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalertdefinition-get.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Read the properties and relationships of an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|
|[Update unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalertdefinition-update.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Update the properties of an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|
|[Delete unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalert-delete-alertdefinition.md)|None|Delete an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|howToPrevent|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isConfigurable|Boolean|**TODO: Add Description**|
|isRemediatable|Boolean|**TODO: Add Description**|
|mitigationSteps|String|**TODO: Add Description**|
|scopeId|String|**TODO: Add Description**|
|scopeType|String|**TODO: Add Description**|
|securityImpact|String|**TODO: Add Description**|
|severityLevel|alertSeverity|**TODO: Add Description**.The possible values are: `unknown`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "scopeType": "String",
  "scopeId": "String",
  "description": "String",
  "severityLevel": "String",
  "securityImpact": "String",
  "mitigationSteps": "String",
  "howToPrevent": "String",
  "isRemediatable": "Boolean",
  "isConfigurable": "Boolean"
}
```

