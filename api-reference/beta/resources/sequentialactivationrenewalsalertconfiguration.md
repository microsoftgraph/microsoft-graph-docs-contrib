---
title: "sequentialActivationRenewalsAlertConfiguration resource type"
description: "Represents an alert configuration that is triggered if a user activates the same privileged role multiple times within the last 30 days."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Sequential activation
ms.date: 09/19/2024
---

# sequentialActivationRenewalsAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert configuration that is triggered if a user activates the same privileged role multiple times within the last 30 days.

Inherits from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|The identifier of an alert definition. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md). Supports `$filter` (`eq`, `ne`).|
|id|String|The identifier of the alert configuration. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|`true` if the alert is enabled. Setting it to `false` disables PIM scanning the tenant to identify instances that trigger this alert. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|scopeId|String|The identifier of the scope to which the alert is related. Only `/` is supported to represent the tenant scope. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md). Supports `$filter` (`eq`, `ne`).|
|scopeType|String|The type of scope where the alert is created. `DirectoryRole` is the only currently supported scope type for Microsoft Entra roles. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).|
|sequentialActivationCounterThreshold|Int32|The minimum number of activations within the timeIntervalBetweenActivations period to trigger an alert.|
|timeIntervalBetweenActivations|Duration|Time interval between activations to trigger an alert.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)| The definition of the alert that contains its description, impact, and measures to mitigate or prevent it. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
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
