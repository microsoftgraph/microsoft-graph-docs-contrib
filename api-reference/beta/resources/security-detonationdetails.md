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
|compromiseIndicators|[microsoft.graph.security.compromiseIndicator](../resources/security-compromiseindicator.md) collection|Represents indicators and its associated verdict that suggests whether an email is compromised.|
|detonationChain|[microsoft.graph.security.detonationChain](../resources/security-detonationchain.md)|The chain of detonation.|
|detonationObservables|[microsoft.graph.security.detonationObservables](../resources/security-detonationobservables.md)|All observables in the detonation tree.|
|detonationVerdict|String|The verdict of the detonation.|
|detonationVerdictReason|String|The reason for the verdict of the detonation.|
|detonationBehaviourDetailsV2|String|Shows the exact events that took place during detonation, and problematic or benign observations that contain URLs, IPs, domains, and files that were found during detonation in a JSON format.|
|detonationScreenshotUri|String|Show any screenshots that were captured during detonation. No screenshots are captured if the URL opens into a link that directly downloads a file. However, you see the downloaded file in the detonation chain.|
|entityMetadata|String|Additional metadata about the entity in JSON format.|
|mitreTechniques|String|The attack techniques, as aligned with the MITRE ATT&CK framework.|
|staticAnalysis|String|The results of static analysis performed on the file or URL.|
|submissionSource|String|The source of the submission.|
|detonationBehaviourDetails (deprecated)|[microsoft.graph.security.detonationBehaviourDetails](../resources/security-detonationbehaviourdetails.md)| Shows the exact events that took place during detonation, and problematic or benign observations that contain URLs, IPs, domains, and files that were found during detonation. This property is deprecated and still stop returning data in March 2026. Use the **detonationBehaviourDetailsV2** property instead.|


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
  "detonationBehaviourDetailsV2": "String",
  "detonationScreenshotUri": "String",
  "compromiseIndicators": [
    {
      "@odata.type": "microsoft.graph.security.compromiseIndicator"
    }
  ],
  "submissionSource": "String",
  "entityMetadata": "String",
  "staticAnalysis": "String",
  "mitreTechniques": "String"
}
```

