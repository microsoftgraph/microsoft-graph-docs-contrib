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

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
