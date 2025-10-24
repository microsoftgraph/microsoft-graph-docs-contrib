---
title: "applicationRiskScore resource type"
description: "Represents the Microsoft-generated numerical risk score assessment for an application."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationRiskScore resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a set of Microsoft-generated numerical scores that quantify the overall risk posture of an application. Each score reflects a specific dimension—security, compliance, legal, and provider reputation—aggregated into a total composite score ranging from 0 (high risk) to 10 (low risk). For more information, see [Find your cloud app and calculate risk scores](/defender-cloud-apps/risk-score).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|compliance|Single|Specifies the compliance risk score based on the application's alignment with regulatory standards and industry certifications such as HIPAA, CSA, and PCI-DSS.|
|legal|Single|Specifies the legal risk score based on data protection practices, privacy policy transparency, and jurisdictional compliance to regulations and policies such as DMCA and data retention policy.|
|provider|Single|Specifies the provider risk score based on vendor credibility, operational maturity, and trustworthiness.|
|security|Single|Specifies the security risk score based on authentication strength, encryption, vulnerability management, and overall security hygiene.|
|total|Single|Represents the composite risk score derived from all risk categories.|

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
  "total": "Double",
  "security": "Double",
  "provider": "Double",
  "compliance": "Double",
  "legal": "Double"
}
```
