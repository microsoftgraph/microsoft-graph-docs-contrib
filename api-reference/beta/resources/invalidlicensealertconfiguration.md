---
title: "invalidLicenseAlertConfiguration resource type"
description: "Represents an alert configuration that's triggered if the tenant doesn't have a valid Microsoft Entra ID P2 license that's required to use the PIM for Microsoft Entra roles feature."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Invalid license
ms.date: 09/19/2024
---

# invalidLicenseAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert configuration that's triggered if the tenant doesn't have a valid Microsoft Entra ID P2 license required to use the PIM for Microsoft Entra roles feature.

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

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|alertDefinition|[unifiedRoleManagementAlertDefinition](../resources/unifiedrolemanagementalertdefinition.md)| The definition of the alert that contains its description, impact, and measures to mitigate or prevent it. Supports `$expand`.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.invalidLicenseAlertConfiguration",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.invalidLicenseAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean"
}
```
