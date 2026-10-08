---
title: "mitreTactic resource type"
description: "Represents a MITRE ATT&CK tactic and the techniques used within it."
author: "mmekler"
ms.date: 05/25/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# mitreTactic resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a MITRE ATT&CK tactic and the techniques used within it. This resource is configured in the **tactics** property of an [alertTemplate](../resources/security-alerttemplate.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|tactic|String|The MITRE tactic identifier, for example, `Exploit`.|
|techniques|[microsoft.graph.security.mitreTechnique](../resources/security-mitretechnique.md) collection|The techniques observed within this tactic.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.mitreTactic"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.mitreTactic",
  "tactic": "String",
  "techniques": [
    {
      "@odata.type": "microsoft.graph.security.mitreTechnique"
    }
  ]
}
```