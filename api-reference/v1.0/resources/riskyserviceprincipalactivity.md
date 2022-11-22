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

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
|riskEventType|String|The type of risk event detected. The possible values are: `investigationsThreatIntelligence`, `generic`, `adminConfirmedServicePrincipalCompromised`, `suspiciousSignins`, `leakedCredentials`, `anomalousServicePrincipalActivity`, `maliciousApplication`, `suspiciousApplication`.|
| detail     | riskDetail  | Details of the detected risk. <br>**Note:** Details for this property are only available for Entra Workload Identity Premium customers. Regular customers will be returned `hidden`. <br/>The possible values are: `none`, `hidden`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal`.|

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

