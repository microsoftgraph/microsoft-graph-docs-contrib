---
title: "sequentialActivationRenewalsAlertConfiguration resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sequentialActivationRenewalsAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List sequentialActivationRenewalsAlertConfigurations](../api/sequentialactivationrenewalsalertconfiguration-list.md)|[sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md) collection|Get a list of the [sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md) objects and their properties.|
|[Get sequentialActivationRenewalsAlertConfiguration](../api/sequentialactivationrenewalsalertconfiguration-get.md)|[sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md)|Read the properties and relationships of a [sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md) object.|
|[Update sequentialActivationRenewalsAlertConfiguration](../api/sequentialactivationrenewalsalertconfiguration-update.md)|[sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md)|Update the properties of a [sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md) object.|
|[Delete sequentialActivationRenewalsAlertConfiguration](../api/sequentialactivationrenewalsalertconfiguration-delete.md)|None|Delete a [sequentialActivationRenewalsAlertConfiguration](../resources/sequentialactivationrenewalsalertconfiguration.md) object.|
|[List unifiedRoleManagementAlertDefinition](../api/unifiedrolemanagementalert-list-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) collection|Get the unifiedRoleManagementAlertDefinition resources from the alertDefinition navigation property.|
|[Add unifiedRoleManagementAlertDefinition](../api/sequentialactivationrenewalsalertconfiguration-post-alertdefinition.md)|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|Add alertDefinition by posting to the alertDefinition collection.|
|[Remove unifiedRoleManagementAlertDefinition](../api/sequentialactivationrenewalsalertconfiguration-delete-alertdefinition.md)|None|Remove an [unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeId|String|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeType|String|**TODO: Add Description** Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|sequentialActivationCounterThreshold|Int32|**TODO: Add Description**|
|timeIntervalBetweenActivations|Duration|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)|**TODO: Add Description** Inherited from [microsoft.graph.unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sequentialActivationRenewalsAlertConfiguration",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sequentialActivationRenewalsAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean",
  "timeIntervalBetweenActivations": "String (duration)",
  "sequentialActivationCounterThreshold": "Integer"
}
```

