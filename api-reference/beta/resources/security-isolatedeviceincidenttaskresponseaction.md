---
title: "isolateDeviceIncidentTaskResponseAction resource type"
description: "Represents an action to isolate a device from the network in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 06/25/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# isolateDeviceIncidentTaskResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action to isolate a device from the network in Microsoft Defender XDR. This action restricts a potentially compromised device's network connectivity to prevent lateral movement or data exfiltration while allowing for investigation and remediation.

Inherits from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifierValue|String|Required. The identifier of the device to isolate (such as device ID or computer name). Inherited from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).|
|isolationType|microsoft.graph.security.isolationType|Required. The type of network isolation to apply. The possible values are: `full` (complete network isolation), `selective` (allows access to specific network resources), `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.isolateDeviceIncidentTaskResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.isolateDeviceIncidentTaskResponseAction",
  "identifierValue": "String",
  "isolationType": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
