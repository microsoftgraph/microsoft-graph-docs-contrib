---
title: "redundantAssignmentAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# redundantAssignmentAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List redundantAssignmentAlertIncidents](../api/redundantassignmentalertincident-list.md)|[redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md) collection|Get a list of the [redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md) objects and their properties.|
|[Get redundantAssignmentAlertIncident](../api/redundantassignmentalertincident-get.md)|[redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md)|Read the properties and relationships of a [redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md) object.|
|[Update redundantAssignmentAlertIncident](../api/redundantassignmentalertincident-update.md)|[redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md)|Update the properties of a [redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md) object.|
|[Delete redundantAssignmentAlertIncident](../api/redundantassignmentalertincident-delete.md)|None|Delete a [redundantAssignmentAlertIncident](../resources/redundantassignmentalertincident.md) object.|
|[remediate](../api/redundantassignmentalertincident-remediate.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|**TODO: Add Description**|
|assigneeId|String|**TODO: Add Description**|
|assigneeUserPrincipalName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastActivationDateTime|DateTimeOffset|**TODO: Add Description**|
|roleDefinitionId|String|**TODO: Add Description**|
|roleDisplayName|String|**TODO: Add Description**|
|roleTemplateId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.redundantAssignmentAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.redundantAssignmentAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDefinitionId": "String",
  "roleDisplayName": "String",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String",
  "lastActivationDateTime": "String (timestamp)"
}
```

