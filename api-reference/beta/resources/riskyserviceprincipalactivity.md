---
title: "riskyServicePrincipalActivity resource type"
description: author
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# riskyServicePrincipalActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Represents the risk activity of an Azure AD service principal as determined by Azure AD Identity Protection. 

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|riskEventType|String|The type of risk event detected. The possible values are `investigationsThreatIntelligence`, `suspiciousSignIns`,`leakedCredentials`, and `unknownFutureValue`.|
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

