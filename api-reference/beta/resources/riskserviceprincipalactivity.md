---
title: "riskServicePrincipalActivity resource type"
description: "Represents the risk activity of a Microsoft Entra service principal as determined by Microsoft Entra ID Protection."
author: "ebasseri"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 11/27/2025
---

# riskServicePrincipalActivity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the risk activity of a Microsoft Entra service principal as determined by Microsoft Entra ID Protection. 

## Properties

| Property       | Type    |Description|
|:---------------|:--------|:----------|
| riskEventTypes|String collection|The type of risk event detected. The possible values are: `investigationsThreatIntelligence`, `generic`, `adminConfirmedServicePrincipalCompromised`, `suspiciousSignins`, `leakedCredentials`, `anomalousServicePrincipalActivity`, `maliciousApplication`, `suspiciousApplication`.|
| detail     | [riskDetail](../resources/riskdetail.md)  | Details of the detected risk. <br>**Note:** Details for this property are only available for Workload Identities Premium customers. Events in tenants without that license will be returned `hidden`. |

## Relationships
None.

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
