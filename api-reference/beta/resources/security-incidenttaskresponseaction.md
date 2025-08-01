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
- [collectInvestigationPackageIncidentTaskResponseAction](../resources/security-collectinvestigationpackageincidenttaskresponseaction.md) - Used to collect device logs for investigation.
- [disableUserIncidentTaskResponseAction](../resources/security-disableuserincidenttaskresponseaction.md) - Used to temporarily disable a user account.
- [enableUserIncidentTaskResponseAction](../resources/security-enableuserincidenttaskresponseaction.md) - Used to re-enable a previously disabled user account.
- [forceUserPasswordResetIncidentTaskResponseAction](../resources/security-forceuserpasswordresetincidenttaskresponseaction.md) - Used to force a user to reset their password.
- [hardDeleteEmailIncidentTaskResponseAction](../resources/security-harddeleteemailincidenttaskresponseaction.md) - Used to permanently delete an email message.
- [isolateDeviceIncidentTaskResponseAction](../resources/security-isolatedeviceincidenttaskresponseaction.md) - Used to isolate a device from the network.
- [markUserAsCompromisedIncidentTaskResponseAction](../resources/security-markuserascompromisedincidenttaskresponseaction.md) - Used to mark a user account as compromised.
- [requireSignInIncidentTaskResponseAction](../resources/security-requiresigninincidenttaskresponseaction.md) - Used to require a user to sign in again.
- [restrictAppExecutionIncidentTaskResponseAction](../resources/security-restrictappexecutionincidenttaskresponseaction.md) - Used to restrict application execution on a device.
- [runAntivirusScanIncidentTaskResponseAction](../resources/security-runantivirusscanincidenttaskresponseaction.md) - Used to initiate an antivirus scan on a device.
- [softDeleteIncidentTaskResponseAction](../resources/security-softdeleteincidenttaskresponseaction.md) - Used to move an email message to the deleted items folder.
- [unIsolateDeviceIncidentTaskResponseAction](../resources/security-unisolatedeviceincidenttaskresponseaction.md) - Used to remove network isolation from a device.
- [unRestrictAppExecutionIncidentTaskResponseAction](../resources/security-unrestrictappexecutionincidenttaskresponseaction.md) - Used to remove application execution restrictions from a device.

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

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
