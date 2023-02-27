---
title: "noMfaOnRoleActivationAlertIncident resource type"
description: "Represents an alert incident that is triggered if roles do not require multi-factor authentication for activation. Without multi-factor authentication, privileged roles can be activated more easily by compromised users."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# noMfaOnRoleActivationAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if roles do not require multi-factor authentication for activation. Without multi-factor authentication, privileged roles can be activated more easily by compromised users.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier for an alert incident. For example, it could be a role assignment id if the incident represents a role assignment Inherited from [entity](../resources/entity.md).|
|roleDisplayName|String|The identifier for a directory role display name.|
|roleTemplateId|String|The identifier for a directory role template.|

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

