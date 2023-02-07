---
title: "noMfaOnRoleActivationAlertConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# noMfaOnRoleActivationAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List noMfaOnRoleActivationAlertConfigurations](../api/nomfaonroleactivationalertconfiguration-list.md)|[noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md) collection|Get a list of the [noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md) objects and their properties.|
|[Get noMfaOnRoleActivationAlertConfiguration](../api/nomfaonroleactivationalertconfiguration-get.md)|[noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md)|Read the properties and relationships of a [noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md) object.|
|[Update noMfaOnRoleActivationAlertConfiguration](../api/nomfaonroleactivationalertconfiguration-update.md)|[noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md)|Update the properties of a [noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md) object.|
|[Delete noMfaOnRoleActivationAlertConfiguration](../api/nomfaonroleactivationalertconfiguration-delete.md)|None|Delete a [noMfaOnRoleActivationAlertConfiguration](../resources/nomfaonroleactivationalertconfiguration.md) object.|
|[List unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalert-list-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|Get the unifiedRoleManagementAlertDefinition resources from the alertDefinition navigation property.|
|[Add unifiedRoleManagementAlertDefinition](../api/nomfaonroleactivationalertconfiguration-post-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Add alertDefinition by posting to the alertDefinition collection.|
|[Remove unifiedRoleManagementAlertDefinition](../api/nomfaonroleactivationalertconfiguration-delete-alertdefinition.md)|None|Remove an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
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
  "@odata.type": "microsoft.graph.noMfaOnRoleActivationAlertConfiguration",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.noMfaOnRoleActivationAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean"
}
```

