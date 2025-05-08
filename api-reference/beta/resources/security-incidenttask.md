---
title: "incidentTask resource type"
description: "An incident task in Microsoft 365 Defender represents a remediation action that Defender Experts for XDR service identifies and assigns to an incident."
author: "bealfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# incidentTask resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

When the Defender Experts for XDR service identifies remediation actions for an incident, it creates incident tasks in Microsoft 365 Defender. These tasks require customer review and action. You can manage these tasks through the portal or by using this API.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-security-list-incidenttasks.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md) collection|Get a list of incident task objects and their properties.|
|[Create](../api/security-security-post-incidenttasks.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Create a new incident task object.|
|[Get](../api/security-incidenttask-get.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Read the properties and relationships of an incident task object.|
|[Update](../api/security-incidenttask-update.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Update the status of an incident task object.|
|[Delete](../api/security-security-delete-incidenttasks.md)|None|Delete an incident task object.|
|[executeResponseAction](../api/security-incidenttask-executeresponseaction.md)|None|Execute a supported remediation action for an incident task. Only specific action types are supported.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionStatus|microsoft.graph.security.incidentTaskActionStatus|The execution status of the task's action. Possible values: `notStarted`, `inProgress`, `partiallyCompleted`, `completed`, `failed`, `unknownFutureValue`.|
|actionType|microsoft.graph.security.incidentTaskActionType|The type of action to perform. When creating a task, these types are not supported: `markUserAsCompromised`, `requireSignIn`, `hardDeleteEmail`, `softDeleteEmail`. Possible values: `text`, `isolateDevice`, `stopAndQuarantineFile`, `runAntiVirusScan`, `collectInvestigationPackage`, `restrictAppExecution`, `submitIocRule`, `forceUserPasswordReset`, `disableUser`, `markUserAsCompromised`, `requireSignIn`, `hardDeleteEmail`, `softDeleteEmail`, `unIsolateDevice`, `unRestrictAppExecution`, `enableUser`, `unknownFutureValue`.|
|createdByDisplayName|String|Name of the user or service that created the task. Read-only.|
|createdDateTime|DateTimeOffset|The date and time when the task was created. Read-only.|
|description|String|Description of what the task does.|
|displayName|String|Display name of the task.|
|id|String|The unique identifier of the task. Must be a valid GUID.|
|lastModifiedByDisplayName|String|Name of the user or service that last modified the task. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the task was last modified. Read-only.|
|source|microsoft.graph.security.incidentTaskSource|Source of the task. Possible values: `defenderExpertsGuidedResponse`, `defenderExpertsManagedResponse`, `unknownFutureValue`.|
|status|microsoft.graph.security.incidentTaskStatus|The current status of the task. This is the only property you can update after creation. Possible values: `open`, `inProgress`, `completed`, `failed`, `notRelevant`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|incident|[incident](../resources/security-incident.md)|Required. The incident associated with this task. Must contain a valid incident ID.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.incidentTask",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.incidentTask",
  "id": "String (identifier)",
  "status": "String",
  "source": "String",
  "displayName": "String",
  "description": "String",
  "createdDateTime": "String (timestamp)",
  "createdByDisplayName": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedByDisplayName": "String",
  "actionStatus": "String",
  "actionType": "String",
  "incident": {
    "@odata.type": "microsoft.graph.security.incident",
    "id": "String"
  }
}
