---
title: "noMfaOnRoleActivationAlertIncident resource type"
description: "Represents the details of an alert incident that is triggered if roles don't require multi-factor authentication for activation."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# noMfaOnRoleActivationAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an alert incident that is triggered if roles don't require multi-factor authentication for activation.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier for an alert incident. For example, it could be a role assignment ID if the incident represents a role assignment. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|roleDisplayName|String|The name of the Microsoft Entra ID [directory role](unifiedroledefinition.md).|
|roleTemplateId|String|The globally unique identifier for a [directory role](unifiedroledefinition.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
