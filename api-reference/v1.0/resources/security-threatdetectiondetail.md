---
title: "threatDetectionDetail resource type"
description: "Represents threat analysis information from Microsoft Defender for Office 365, including threat classification, confidence levels, and priority account protection status."
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 05/27/2026
---

# threatDetectionDetail resource type

Namespace: microsoft.graph.security


Represents threat analysis information from Microsoft Defender for Office 365, including threat classification, confidence levels, and priority account protection status. It's returned in the **threatDetectionDetails** property of [analyzedEmail](../resources/security-analyzedemail.md).


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

