---
title: "scoreEvidence resource type"
description: "Represents evidence that contributes to security scoring in Microsoft security services."
author: "palakagrawaljk"
ms.subservice: security
ms.localizationpriority: medium
doc_type: resourcePageType
toc.title: "Score evidence"
---
# scoreEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents evidence that contributes to security scoring in Microsoft security services. This resource captures specific data points, findings, or observations that are used to calculate security scores, such as those in Microsoft Secure Score or other security assessment frameworks. Score evidence provides detailed information about why specific security scores were assigned, helping organizations understand their security posture and prioritize improvement actions.


Inherits from [microsoft.graph.security.auditData](../resources/security-auditdata.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.scoreEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.scoreEvidence"
}
```

