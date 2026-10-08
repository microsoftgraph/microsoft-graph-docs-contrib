---
title: "rulesRoot resource type"
description: "Container that holds the custom detection rules in Microsoft Defender XDR."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# rulesRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Container that holds the [custom detection rules](../resources/security-detectionrule.md) configured for the tenant in Microsoft Defender XDR. Accessed as a singleton from the [security](../resources/security.md) resource through the `rules` navigation property.

## Methods

None.

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|detectionRules|[microsoft.graph.security.detectionRule](../resources/security-detectionrule.md) collection|The custom detection rules configured for the tenant.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.rulesRoot"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.rulesRoot"
}
```
