---
title: "collectInvestigationPackageIncidentTaskResponseAction resource type"
description: "Represents an action to collect device logs and investigation package from a device in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 06/25/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# collectInvestigationPackageIncidentTaskResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action to collect device logs and investigation package from a device in Microsoft Defender XDR. This package contains system information that helps investigate security incidents on the device.

Inherits from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifierValue|String|Required. The identifier of the device from which to collect the investigation package. Inherited from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.collectInvestigationPackageIncidentTaskResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.collectInvestigationPackageIncidentTaskResponseAction",
  "identifierValue": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
