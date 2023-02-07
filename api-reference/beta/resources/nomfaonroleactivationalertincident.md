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

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List noMfaOnRoleActivationAlertIncidents](../api/nomfaonroleactivationalertincident-list.md)|[noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md) collection|Get a list of the [noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md) objects and their properties.|
|[Get noMfaOnRoleActivationAlertIncident](../api/nomfaonroleactivationalertincident-get.md)|[noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md)|Read the properties and relationships of a [noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md) object.|
|[Update noMfaOnRoleActivationAlertIncident](../api/nomfaonroleactivationalertincident-update.md)|[noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md)|Update the properties of a [noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md) object.|
|[Delete noMfaOnRoleActivationAlertIncident](../api/nomfaonroleactivationalertincident-delete.md)|None|Delete a [noMfaOnRoleActivationAlertIncident](../resources/nomfaonroleactivationalertincident.md) object.|
|[remediate](../api/nomfaonroleactivationalertincident-remediate.md)|None|**TODO: Add Description**|

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

