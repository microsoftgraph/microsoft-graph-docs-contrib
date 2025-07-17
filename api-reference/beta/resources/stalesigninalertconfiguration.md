---
title: "staleSignInAlertConfiguration resource type"
description: "Represents an alert configuration that is triggered if there are accounts in a privileged role that haven't signed into Microsoft Entra ID within a specified period."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Inactive account
ms.date: 09/19/2024
---

# staleSignInAlertConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert configuration that is triggered if there are accounts in a privileged role that haven't signed into Microsoft Entra ID within a specified period. These accounts might be service or shared accounts that aren't being maintained and are vulnerable to security threats.

Inherits from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|alertDefinitionId|String|The identifier of an alert definition. Inherited from [unifiedRoleManagementAlertConfiguration](../resources/unifiedrolemanagementalertconfiguration.md). Supports `$filter` (`eq`, `ne`).|
|duration|Duration|The number of days to look back from current timestamp within which the account hasn't signed in.|
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
  "@odata.type": "microsoft.graph.staleSignInAlertConfiguration",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.staleSignInAlertConfiguration",
  "id": "String (identifier)",
  "alertDefinitionId": "String",
  "scopeType": "String",
  "scopeId": "String",
  "isEnabled": "Boolean",
  "duration": "String (duration)"
}
```
