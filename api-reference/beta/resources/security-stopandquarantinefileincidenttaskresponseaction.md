---
title: "stopAndQuarantineFileIncidentTaskResponseAction resource type"
description: "Represents an action to stop and quarantine a potentially malicious file in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 06/25/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# stopAndQuarantineFileIncidentTaskResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action to stop and quarantine a potentially malicious file in Microsoft Defender XDR. This action halts any running instances of the file and moves it to a secure location where it cannot harm the system, allowing for further investigation of the threat.

Inherits from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceId|String|Optional. The identifier of the device where the file is located. This property allows targeting the action to a specific device when the same file exists on multiple devices.|
|identifierValue|String|Required. The identifier (such as SHA1 hash) of the file to be stopped and quarantined. Inherited from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.stopAndQuarantineFileIncidentTaskResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.stopAndQuarantineFileIncidentTaskResponseAction",
  "identifierValue": "String",
  "deviceId": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
