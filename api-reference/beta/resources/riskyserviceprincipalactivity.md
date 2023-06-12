---
title: "riskyServicePrincipalActivity resource type"
description: author
author: "ebasseri"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# riskUserActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| eventTypes | riskEventType collection |List of risk event types. Deprecated. Use **riskEventType** instead. |
|riskEventType|string|The type of risk event detected. The possible values are `investigationsThreatIntelligence`, `suspiciousSignIns`,`leakedCredentials`, and `unknownFutureValue`.|
| detail     | riskDetail  | The possible values are `none`, `adminConfirmedSigninSafe`, `aiConfirmedSigninSafe`, `adminConfirmedSigninCompromised`, `hidden`, `unknownFutureValue`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`.

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.riskyServicePrincipalActivity"
}-->
```json
{
    "eventTypes": ["String"],
    "detail": "string"
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

