---
title: "justifyAction resource type"
description: "Indicates that a justification is required for the specified operation."
author: "tommoser"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# justifyAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates that a justification is required for the specified operation. The [evaluateApplication](../api/security-sensitivitylabel-evaluateapplication.md), [evaluateClassificationResults](../api/security-sensitivitylabel-evaluateclassificationresults.md), or [evaluateRemoval](../api/security-sensitivitylabel-evaluateremoval.md) APIs might return the **justifyAction**. Justification is provided via [labelingOptions](../resources/security-labelingoptions.md). The previous call should be repeated, but with the **downgradeJustification** property of **labelingOptions** set with a justification message, provided via user input or application logic.

Inherits from [informationProtectionAction](../resources/security-informationprotectionaction.md).

## Properties

None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.justifyAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.justifyAction"
}
```

