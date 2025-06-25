---
title: "incidentTaskResponseAction resource type"
description: "Represents a base type for all incident task response actions in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 06/25/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# incidentTaskResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base type for all incident task response actions in Microsoft Defender XDR. This is an abstract type that cannot be instantiated directly but serves as the parent type for the following specific response actions that can be executed on incident tasks.

- [stopAndQuarantineFileIncidentTaskResponseAction](../resources/security-stopandquarantinefileincidenttaskresponseaction.md) - Used to stop and quarantine a file.
- {Document the rest 13 derived base types in list format)
-

Inherits from [responseAction](../resources/security-responseaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|identifierValue|String|Required. The identifier value for the response action. This value is specific to the type of action being performed.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.incidentTaskResponseAction",
  "baseType": "microsoft.graph.security.responseAction",
  "openType": false,
  "abstract": true
}
-->
```json
{
  "@odata.type": "#microsoft.graph.security.incidentTaskResponseAction",
  "identifierValue": "String"
}
```

## Derived types

The following types inherit from incidentTaskResponseAction:

- [stopAndQuarantineFileIncidentTaskResponseAction](../resources/security-incidenttask.md#stopandquarantinefileincidenttaskresponseaction)
- [disableUserIncidentTaskResponseAction](../resources/security-incidenttask.md#disableuserincidenttaskresponseaction)  
- [enableUserIncidentTaskResponseAction](../resources/security-incidenttask.md#enableuserincidenttaskresponseaction)
- [forceUserPasswordResetIncidentTaskResponseAction](../resources/security-incidenttask.md#forceuserpasswordresetincidenttaskresponseaction)
- [requireSignInIncidentTaskResponseAction](../resources/security-incidenttask.md#requiresigninincidenttaskresponseaction)
- [markUserAsCompromisedIncidentTaskResponseAction](../resources/security-incidenttask.md#markuserascompromisedincidenttaskresponseaction)
- [collectInvestigationPackageIncidentTaskResponseAction](../resources/security-incidenttask.md#collectinvestigationpackageincidenttaskresponseaction)
- [restrictAppExecutionIncidentTaskResponseAction](../resources/security-incidenttask.md#restrictappexecutionincidenttaskresponseaction)
- [unRestrictAppExecutionIncidentTaskResponseAction](../resources/security-incidenttask.md#unrestrictappexecutionincidenttaskresponseaction)
- [runAntivirusScanIncidentTaskResponseAction](../resources/security-incidenttask.md#runantivirusscanincidenttaskresponseaction)
- [hardDeleteEmailIncidentTaskResponseAction](../resources/security-incidenttask.md#harddeleteemalincidenttaskresponseaction)
- [softDeleteIncidentTaskResponseAction](../resources/security-incidenttask.md#softdeleteincidenttaskresponseaction)
- [unIsolateDeviceIncidentTaskResponseAction](../resources/security-incidenttask.md#unisolatedeviceincidenttaskresponseaction)
- [isolateDeviceIncidentTaskResponseAction](../resources/security-incidenttask.md#isolatedeviceincidenttaskresponseaction)

For details on each derived type, see the [Response Actions section in incidentTask](../resources/security-incidenttask.md#response-actions).

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
