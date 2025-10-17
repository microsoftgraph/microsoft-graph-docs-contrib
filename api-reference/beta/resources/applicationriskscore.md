---
title: "applicationRiskScore resource type"
description: "Represents the numerical risk score assessment for an application"
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.service: applications
doc_type: resourcePageType
---

# applicationRiskScore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of numerical scores that quantify the overall risk posture of an application. Each score reflects a specific dimension—security, compliance, legal, and provider reputation—aggregated into a total composite score ranging from 0 (high risk) to 10 (low risk).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|compliance|Single|Specifies the compliance risk score based on the application's alignment with regulatory standards and industry certifications (0-10 range).|
|legal|Single|Specifies the legal risk score based on data protection practices, privacy policy transparency, and jurisdictional compliance (0-10 range).|
|provider|Single|Specifies the provider risk score based on vendor credibility, operational maturity, and trustworthiness (0-10 range).|
|security|Single|Specifies the security risk score based on authentication strength, encryption, vulnerability management, and overall security hygiene (0-10 range).|
|total|Single|Represents the overall composite risk score derived from all risk categories (0-10 range).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskScore"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationRiskScore",
  "total": "Single",
  "security": "Single",
  "provider": "Single",
  "compliance": "Single",
  "legal": "Single"
}
```
