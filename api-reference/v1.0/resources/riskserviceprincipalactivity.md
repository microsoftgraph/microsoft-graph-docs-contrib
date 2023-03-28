---
title: "riskServicePrincipalActivity resource type"
description: "Represents the risk activity of an Azure AD service principal as determined by Azure AD Identity Protection."
author: "ebasseri"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# riskServicePrincipalActivity resource type

Namespace: microsoft.graph

Represents the risk activity of an Azure AD service principal as determined by Azure AD Identity Protection. 

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| detail     | riskDetail  | Details of the detected risk. <br>**Note:** Details for this property are only available for Workload Identities Premium customers. Events in tenants without this license will be returned `hidden`. <br/>The possible values are: `none`, `hidden`, `adminConfirmedServicePrincipalCompromised`, `adminDismissedAllRiskForServicePrincipal`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `adminConfirmedServicePrincipalCompromised` , `adminDismissedAllRiskForServicePrincipal`.|
|riskEventType|String collection|The type of risk event detected. The possible values are: `investigationsThreatIntelligence`, `generic`, `adminConfirmedServicePrincipalCompromised`, `suspiciousSignins`, `leakedCredentials`, `anomalousServicePrincipalActivity`, `maliciousApplication`, `suspiciousApplication`.|

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

