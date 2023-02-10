---
title: "tooManyGlobalAdminsAssignedToTenantAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# tooManyGlobalAdminsAssignedToTenantAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|**TODO: Add Description**|
|assigneeId|String|**TODO: Add Description**|
|assigneeUserPrincipalName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.tooManyGlobalAdminsAssignedToTenantAlertIncident",
  "id": "String (identifier)",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String"
}
```

