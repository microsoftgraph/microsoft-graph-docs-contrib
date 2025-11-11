---
title: "applicationRiskFactors resource type"
description: "Represents key risk factor categories for an application, including general, legal, security and compliance-related information used in overall risk scoring and evaluation."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationRiskFactors resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of risk factor categories that describe different aspects of an [application's](../resources/applicationtemplate.md) trust and compliance posture. These factors are used to evaluate the overall security, operational, and legal risk level of the application.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compliance|[applicationSecurityCompliance](../resources/applicationsecuritycompliance.md)|Provides information about the application's adherence to security frameworks, certifications, and industry compliance standards.|
|general|[applicationRiskFactorGeneralInfo](../resources/applicationriskfactorgeneralinfo.md)|Contains general business, operational, and data handling details that influence the application's risk assessment.|
|legal|[applicationRiskFactorLegalInfo](../resources/applicationriskfactorlegalinfo.md)|Provides legal and regulatory compliance information, including data ownership, retention, and GDPR adherence.|
|security|[applicationRiskFactorSecurityInfo](../resources/applicationriskfactorsecurityinfo.md)|Contains information related to the application's security posture, such as encryption, authentication, and vulnerability management practices.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskFactors"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.applicationRiskFactors",
  "general": {
    "@odata.type": "microsoft.graph.applicationRiskFactorGeneralInfo"
  },
  "security": {
    "@odata.type": "microsoft.graph.applicationRiskFactorSecurityInfo"
  },
  "compliance": {
    "@odata.type": "microsoft.graph.applicationSecurityCompliance"
  },
  "legal": {
    "@odata.type": "microsoft.graph.applicationRiskFactorLegalInfo"
  }
}
```