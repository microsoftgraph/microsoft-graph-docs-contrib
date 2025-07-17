---
title: "riskUserActivity resource type"
description: author
author: "tracyshi"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 03/07/2024
---

# riskUserActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| detail     | riskDetail  | The possible values are `none`, `adminGeneratedTemporaryPassword`, `userPerformedSecuredPasswordChange`, `userPerformedSecuredPasswordReset`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `userPassedMFADrivenByRiskBasedPolicy`, `adminDismissedAllRiskForUser`, `adminConfirmedSigninCompromised`, `hidden`, `adminConfirmedUserCompromised`, `unknownFutureValue`.  |
| riskEventTypes | String collection | The type of risk event detected. The possible values are: `anonymizedIPAddress`, `investigationsThreatIntelligence`, `investigationsThreatIntelligenceSigninLinked`,`leakedCredentials`, `maliciousIPAddress`, `maliciousIPAddressValidCredentialsBlockedIP`, `malwareInfectedIPAddress`, `mcasImpossibleTravel`, `mcasSuspiciousInboxManipulationRules`, `suspiciousAPITraffic`, `suspiciousIPAddress`,   `unfamiliarFeatures`, `unlikelyTravel`. <br/>For more information about each value, see [Risk types and detection](/entra/id-protection/concept-identity-protection-risks#risk-types-and-detection). |
| eventTypes (deprecated) | riskEventType collection |List of risk event types. Deprecated. Use **riskEventType** instead. |

## Relationships
None.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.riskUserActivity"
}-->
```json
{
    "eventTypes": ["String"],
    "riskEventTypes": ["String"],
    "detail": "String"
}
```
<!--
{
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "",
  "tocPath": "",
  "suppressions": []
}
-->


