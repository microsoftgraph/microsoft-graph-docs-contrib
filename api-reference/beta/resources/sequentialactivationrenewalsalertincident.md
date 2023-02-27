---
title: "sequentialActivationRenewalsAlertIncident resource type"
description: "Represents an alert incident that is triggered if a user activates the same privileged role multiple times within the last 30 days."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# sequentialActivationRenewalsAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if a user activates the same privileged role multiple times within the last 30 days.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activationCount|Int32|The length of sequential activation of the same role.|
|assigneeDisplayName|String|Display name of the subject that the incident is assigned to.|
|assigneeId|String|The identifier of the subject that the incident is assigned to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident is assigned to.|
|id|String|The identifier for an alert incident. For example, it could be a role assignment id if the incident represents a role assignment Inherited from [entity](../resources/entity.md).|
|roleDefinitionId|String|The identifier for a directory role definition.|
|roleDisplayName|String|The identifier for a directory role display name.|
|roleTemplateId|String|The identifier for a directory role template.|
|sequenceEndDateTime|DateTimeOffset|End date time of the sequential-activation sequence.|
|sequenceStartDateTime|DateTimeOffset|Start date time of the sequential-activation sequence.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sequentialActivationRenewalsAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sequentialActivationRenewalsAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDisplayName": "String",
  "roleDefinitionId": "String",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String",
  "activationCount": "Integer",
  "sequenceStartDateTime": "String (timestamp)",
  "sequenceEndDateTime": "String (timestamp)"
}
```

