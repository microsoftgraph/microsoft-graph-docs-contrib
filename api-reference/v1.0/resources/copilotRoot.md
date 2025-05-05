---
title: "copilotRoot resource type"
description: "A container for Microsoft 365 Copilot admin controls."
author: "bkeerthivasa"
ms.localizationpriority: medium
ms.subservice: "meetings-copilot"
doc_type: resourcePageType
ms.date: 05/4/2025
---

# copilotRoot resource type

Namespace: microsoft.graph

A container for Microsoft 365 Copilot admin controls.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|interactionHistory|[aiInteractionHistory](../resources/aiinteractionhistory.md)|The history of interactions between AI agents and users.|
|users|[aiUser](../resources/aiuser.md) collection|The list of AI users or agents. Read-only. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.copilotRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.copilotRoot"
}
```