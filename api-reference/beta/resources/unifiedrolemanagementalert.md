---
title: "unifiedRoleManagementAlert resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unifiedRoleManagementAlert resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementAlerts](../api/rolemanagementalert-list-alerts.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) collection|Get a list of the [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) objects and their properties.|
|[Get unifiedRoleManagementAlert](../api/unifiedrolemanagementalert-get.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md)|Read the properties and relationships of an [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) object.|
|[Update unifiedRoleManagementAlert](../api/unifiedrolemanagementalert-update.md)|[unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md)|Update the properties of an [unifiedRoleManagementAlert](../resources/unifiedrolemanagementalert.md) object.|
|[refresh](../api/unifiedrolemanagementalert-refresh.md)|None|**TODO: Add Description**|
|[refresh](../api/unifiedrolemanagementalert-refresh.md)|None|**TODO: Add Description**|
|[List alertIncidents](../api/unifiedrolemanagementalert-list-alertincidents.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Get the unifiedRoleManagementAlertIncident resources from the alertIncidents navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|incidentCount|Int32|**TODO: Add Description**|
|isActive|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|lastScannedDateTime|DateTimeOffset|**TODO: Add Description**|
|scopeId|String|**TODO: Add Description**|
|scopeType|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertConfiguration|[unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|**TODO: Add Description**|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|**TODO: Add Description**|
|alertIncidents|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlert",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlert",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeId": "String",
  "scopeType": "String",
  "incidentCount": "Integer",
  "isActive": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "lastScannedDateTime": "String (timestamp)"
}
```

