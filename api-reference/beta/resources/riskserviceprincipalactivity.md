---
title: "riskServicePrincipalActivity resource type"
description: "Represents the risk activity of a Microsoft Entra service principal as determined by Microsoft Entra ID Protection."
author: "ebasseri"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# riskServicePrincipalActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Represents the risk activity of a Microsoft Entra service principal as determined by Microsoft Entra ID Protection. 

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|riskEventType|String|The type of risk event detected. The possible values are: `investigationsThreatIntelligence`, `generic`, `adminConfirmedServicePrincipalCompromised`, `suspiciousSignins`, `leakedCredentials`, `anomalousServicePrincipalActivity`, `maliciousApplication`, `suspiciousApplication`.|
| detail     | riskDetail  | Details of the detected risk. <br>**Note:** Details for this property are only available for Workload Identities Premium customers. Events in tenants without that license will be returned `hidden`. <br/>The possible values are: `none`, `hidden`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal`.|

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [ ],
  "@odata.type": "microsoft.graph.riskServicePrincipalActivity"
}-->
```json
{
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
