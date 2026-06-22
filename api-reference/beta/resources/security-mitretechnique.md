---
title: "mitreTechnique resource type"
description: "Represents a MITRE Adversarial Tactics, Techniques, and Common Knowledge (ATT&CK) technique and optional subtechniques."
author: "mmekler"
ms.date: 05/25/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# mitreTechnique resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a MITRE Adversarial Tactics, Techniques, and Common Knowledge (ATT&CK) technique and optional subtechniques. This resource is configured in the **techniques** property of a [mitreTactic](../resources/security-mitretactic.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|subTechniques|String collection|The MITRE ATT&CK subtechnique identifiers that are associated with this technique, for example, `T1059.001`.|
|technique|String|The MITRE ATT&CK technique identifier, for example, `T1059`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mitreTechnique"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mitreTechnique",
  "subTechniques": [
    "String"
  ],
  "technique": "String"
}
```