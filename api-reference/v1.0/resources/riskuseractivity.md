---
title: "riskUserActivity resource type"
description: "riskUserActivity detections"
author: "tracyshi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# riskUserActivity resource type

Namespace: microsoft.graph

Represents the risk activities of a Microsoft Entra user as determined by Microsoft Entra ID Protection.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detail|riskDetail|Details of the detected risk. Possible values are: `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`. <br/>For more information about each value, see [Risk types and detection](/entra/id-protection/concept-identity-protection-risks#risk-types-and-detection).|
|riskEventTypes|String collection|The type of risk event detected.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.riskUserActivity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.riskUserActivity",
  "riskEventTypes": [
    "String"
  ],
  "detail": "String"
}
```
