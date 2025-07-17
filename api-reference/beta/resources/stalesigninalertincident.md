---
title: "staleSignInAlertIncident resource type"
description: "Represents an alert incident that is triggered if there are accounts in a privileged role that haven't signed into Microsoft Entra ID within a specified time period."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Inactive account
ms.date: 09/19/2024
---

# staleSignInAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if there are accounts in a privileged role that haven't signed into Microsoft Entra ID within a specified time period.

The threshold that triggers this alert when it's reached is defined in the [staleSignInAlertConfiguration](../resources/stalesigninalertconfiguration.md) resource type.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident applies to.|
|assigneeId|String|The identifier of the subject that the incident applies to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident applies to. Applies to user principals.|
|assignmentCreatedDateTime|DateTimeOffset|Date and time of assignment creation.|
|id|String|The identifier for an alert incident. For example, it could be a role assignment id if the incident represents a role assignment Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|lastSignInDateTime|DateTimeOffset|Date and time of last sign in.|
|roleDefinitionId|String|The identifier for the [directory role definition](unifiedroledefinition.md) that's in scope of this incident.|
|roleDisplayName|String|The display name for the [directory role](unifiedroledefinition.md).|
|roleTemplateId|String|The globally unique identifier for the [directory role](unifiedroledefinition.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.staleSignInAlertIncident",
  "baseType": "microsoft.graph.unifiedRoleManagementAlertIncident",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.staleSignInAlertIncident",
  "id": "String (identifier)",
  "roleTemplateId": "String",
  "roleDisplayName": "String",
  "roleDefinitionId": "String",
  "assigneeId": "String",
  "assigneeDisplayName": "String",
  "assigneeUserPrincipalName": "String",
  "assignmentCreatedDateTime": "String (timestamp)",
  "lastSignInDateTime": "String (timestamp)"
}
```
