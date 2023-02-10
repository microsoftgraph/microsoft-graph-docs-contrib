---
title: "unifiedRoleManagementAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unifiedRoleManagementAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementAlertIncidents](../api/unifiedrolemanagementalert-list-alertincidents.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) collection|Get a list of the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) objects and their properties.|
|[Get unifiedRoleManagementAlertIncident](../api/unifiedrolemanagementalertincident-get.md)|[unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md)|Read the properties and relationships of an [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) object.|
|[remediate](../api/unifiedrolemanagementalertincident-remediate.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementAlertIncident",
  "id": "String (identifier)"
}
```

