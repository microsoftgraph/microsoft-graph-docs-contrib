---
title: "softDeleteIncidentTaskResponseAction resource type"
description: "Represents an action to move an email message to the deleted items folder in Microsoft Defender XDR."
author: "BenAlfasi"
ms.date: 06/25/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# softDeleteIncidentTaskResponseAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action to move an email message to the deleted items folder in Microsoft Defender XDR. This action provides a way to remove potentially harmful emails from a user's inbox while retaining them for further investigation if needed.

Inherits from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|identifierValue|String|Required. The identifier of the email message to be moved to the deleted items folder (such as the message ID or network message ID). Inherited from [microsoft.graph.security.incidentTaskResponseAction](../resources/security-incidenttaskresponseaction.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.softDeleteIncidentTaskResponseAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.softDeleteIncidentTaskResponseAction",
  "identifierValue": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "namespace": "microsoft.graph.security"
}
-->
