---
title: "incidentTask resource type"
description: "Incident Tasks in Microsoft 365 Defender are a collection of remediation actions identified on an incident by the Defender Experts for XDR service."
author: "bealfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# incidentTask resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Incident Tasks in Microsoft 365 Defender are a collection of remediation actions identified on an incident by the Defender Experts for XDR service. Once a tenant is onboarded to Defender Experts for XDR service, it will triage and investigate incidents in Microsoft 365 Defender. In case where remediation actions are needed on an incident, these are posted to Microsoft 365 Defender for the customer to review and in some cases to action.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-security-list-incidenttasks.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md) collection|Get a list of the incidentTask objects and their properties.|
|[Create](../api/security-security-post-incidenttasks.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Create a new incidentTask object.|
|[Get](../api/security-incidenttask-get.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Read the properties and relationships of an incidentTask object.|
|[Update](../api/security-incidenttask-update.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Update the status of an incidentTask object.|
|[Delete](../api/security-security-delete-incidenttasks.md)|None|Delete an incidentTask object.|
|[executeResponseAction](../api/security-incidenttask-executeresponseaction.md)|None|Execute response action as part of incident remediation. Only supported for the following action types: collectInvestigationPackage, isolateDevice, unRestrictAppExecution, unIsolateDevice, restrictAppExecution, runAntiVirusScan, stopAndQuarantineFile, submitIocRule.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionStatus|microsoft.graph.security.incidentTaskActionStatus|The status of the action related to the incident task. The possible values are: `notStarted`, `inProgress`, `partiallyCompleted`, `completed`, `failed`, `unknownFutureValue`.|
|actionType|microsoft.graph.security.incidentTaskActionType|The type of the action related to the incident task. When creating a task, the following types are not supported: `markUserAsCompromised`, `requireSignIn`, `hardDeleteEmail`, `softDeleteEmail`. The possible values are: `text`, `isolateDevice`, `stopAndQuarantineFile`, `runAntiVirusScan`, `collectInvestigationPackage`, `restrictAppExecution`, `submitIocRule`, `forceUserPasswordReset`, `disableUser`, `markUserAsCompromised`, `requireSignIn`, `hardDeleteEmail`, `softDeleteEmail`, `unIsolateDevice`, `unRestrictAppExecution`, `enableUser`, `unknownFutureValue`.|
|createdByDisplayName|String|Creator of the incident task, or null if no creator is assigned. Free editable text.|
|createdDateTime|DateTimeOffset|Time when incident task was first created.|
|description|String|The description of the incident task.|
|displayName|String|The incident task name.|
|id|String|Unique identifier to represent the incident task. Must be a valid GUID.|
|lastModifiedByDisplayName|String|Last updater of the incident task, or null if no updater is assigned. Free editable text.|
|lastModifiedDateTime|DateTimeOffset|Time when the incident task was last updated.|
|source|microsoft.graph.security.incidentTaskSource|The source of the incident task. The possible values are: `defenderExpertsGuidedResponse`, `defenderExpertsManagedResponse`, `unknownFutureValue`.|
|status|microsoft.graph.security.incidentTaskStatus|The status of the incident task. The possible values are: `open`, `inProgress`, `completed`, `failed`, `notRelevant`, `unknownFutureValue`. This is the only property that can be updated after task creation.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|incident|[incident](../resources/security-incident.md)|Required. The incident this task is associated with. Must contain a valid incident ID.|

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
