---
title: "staleSignInAlertIncident resource type"
description: "Represents an alert incident that is triggered if there are accounts in a privileged role that have not signed into Azure AD within a specified time period."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# staleSignInAlertIncident resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an alert incident that is triggered if there are accounts in a privileged role which have not signed in to Azure AD within a specified time period. These accounts might be service or shared accounts that are not being maintained and are vulnerable to security threats.

Inherits from [unifiedRoleManagementAlertIncident](../resources/unifiedrolemanagementalertincident.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assigneeDisplayName|String|Display name of the subject that the incident is assigned to.|
|assigneeId|String|The identifier of the subject that the incident is assigned to.|
|assigneeUserPrincipalName|String|User principal name of the subject that the incident is assigned to.|
|assignmentCreatedDateTime|DateTimeOffset|Date and time of assignment creation.|
|id|String|The identifier for an alert incident. For example, it could be a role assignment id if the incident represents a role assignment Inherited from [entity](../resources/entity.md).|
|lastSignInDateTime|DateTimeOffset|Date and time of last sign in.|
|roleDefinitionId|String|The identifier for a directory role definition.|
|roleDisplayName|String|The identifier for a directory role display name.|
|roleTemplateId|String|The identifier for a directory role template.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

