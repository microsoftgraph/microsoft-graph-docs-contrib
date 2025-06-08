---
title: "incidentTask resource type"
description: "An incident task in Microsoft Defender XDR represents a remediation action identified by Defender Experts for XDR."
author: "BenAlfasi"
ms.date: 05/07/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# incidentTask resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a remediation action for an incident. When Defender Experts for XDR identifies a needed action, it creates a task in Microsoft Defender XDR. Review and take action on these tasks through the portal or using this API.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-list-incidenttasks.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md) collection|Get incident task objects and their properties.|
|[Get](../api/security-incidenttask-get.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Read properties and relationships of an incident task.|
|[Update](../api/security-incidenttask-update.md)|[microsoft.graph.security.incidentTask](../resources/security-incidenttask.md)|Update the status of an incident task.|
|[executeResponseAction](../api/security-incidenttask-executeresponseaction.md)|None|Execute a remediation action on an incident task. Limited to supported action types.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionStatus|microsoft.graph.security.incidentTaskActionStatus|The execution status of the action. Values: `notStarted`, `inProgress`, `partiallyCompleted`, `completed`, `failed`, `unknownFutureValue`.|
|actionType|microsoft.graph.security.incidentTaskActionType|The remediation action to perform. When creating tasks, these types aren't supported: `markUserAsCompromised`, `requireSignIn`, `hardDeleteEmail`, `softDeleteEmail`. Values: `text`, `isolateDevice`, `stopAndQuarantineFile`, `runAntiVirusScan`, `collectInvestigationPackage`, `restrictAppExecution`, `submitIocRule`, `forceUserPasswordReset`, `disableUser`, `markUserAsCompromised`, `requireSignIn`, `hardDeleteEmail`, `softDeleteEmail`, `unIsolateDevice`, `unRestrictAppExecution`, `enableUser`, `unknownFutureValue`.|
|createdByDisplayName|String|Name of the entity that created the task. Read-only.|
|createdDateTime|DateTimeOffset|Creation time of the task. Read-only.|
|description|String|Description of the remediation action.|
|displayName|String|Title of the task.|
|id|String|Unique GUID identifier for the task.|
|lastModifiedByDisplayName|String|Name of the entity that last updated the task. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Last update time of the task. Read-only.|
|source|microsoft.graph.security.incidentTaskSource|Origin of the task. Values: `defenderExpertsGuidedResponse`, `defenderExpertsManagedResponse`, `unknownFutureValue`.|
|status|microsoft.graph.security.incidentTaskStatus|Current task status. This is the only property you can update. Values: `open`, `inProgress`, `completed`, `failed`, `notRelevant`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|incident|[microsoft.graph.security.incident](../resources/security-incident.md)|Required. The incident that contains this task. Must contain a valid incident ID.|

## JSON representation
The following JSON shows the resource type structure.
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
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
