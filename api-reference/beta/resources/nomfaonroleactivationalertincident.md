---
title: "noMfaOnRoleActivationAlertIncident resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# noMfaOnRoleActivationAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|roleDisplayName|String|**TODO: Add Description**|
|roleTemplateId|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.noMfaOnRoleActivationAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.noMfaOnRoleActivationAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDisplayName": "String"
}
```

