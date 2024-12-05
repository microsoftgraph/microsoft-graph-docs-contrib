---
title: "detonationDetails resource type"
description: Represents detonation details specific to email attachments and URLs.
author: MishraSoumyaMS
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# detonationDetails resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents detonation details specific to email attachments and URLs. These details include the detonation chain, detonation summary, and observed behavior details to help customers understand the reason the attachment or URL is deemed malicious and detonated.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|analysisDateTime|DateTimeOffset|The time of detonation.|
|detonationChain|[microsoft.graph.security.detonationChain](../resources/security-detonationchain.md)|The chain of detonation.|
|detonationObservables|[microsoft.graph.security.detonationObservables](../resources/security-detonationobservables.md)|All observables in the detonation tree.|
|detonationVerdict|String|The verdict of the detonation.|
|detonationVerdictReason|String|The reason for the verdict of the detonation.|
|detonationBehaviourDetails|[microsoft.graph.security.detonationBehaviourDetails](../resources/security-detonationbehaviourdetails.md)|**TODO: Add Description**|
|detonationScreenshotUri|String|**TODO: Add Description**|
|compromiseIndicators|[microsoft.graph.security.compromiseIndicator](../resources/security-compromiseindicator.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationDetails",
  "analysisDateTime": "String (timestamp)",
  "detonationVerdict": "String",
  "detonationVerdictReason": "String",
  "detonationChain": {
    "@odata.type": "microsoft.graph.security.detonationChain"
  },
  "detonationObservables": {
    "@odata.type": "microsoft.graph.security.detonationObservables"
  },
  "detonationBehaviourDetails": {
    "@odata.type": "microsoft.graph.security.detonationBehaviourDetails"
  },
  "detonationScreenshotUri": "String",
  "compromiseIndicators": [
    {
      "@odata.type": "microsoft.graph.security.compromiseIndicator"
    }
  ]
}
```

