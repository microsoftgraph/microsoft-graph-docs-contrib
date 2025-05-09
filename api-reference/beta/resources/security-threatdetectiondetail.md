---
title: "threatDetectionDetail resource type"
description: "Represents threat analysis information from Microsoft Defender for Office 365, including threat classification, confidence levels, and priority account protection status."
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# threatDetectionDetail resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents threat analysis information from Microsoft Defender for Office 365, including threat classification, confidence levels, and priority account protection status.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|confidenceLevel|String|Indicates the confidence level in the threat detection.|
|priorityAccountProtection|String|Indicates if the account has priority protection enabled.|
|threats|String|Lists the detected threats.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.threatDetectionDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.threatDetectionDetail",
  "threats": "String",
  "confidenceLevel": "String",
  "priorityAccountProtection": "String"
}
```

