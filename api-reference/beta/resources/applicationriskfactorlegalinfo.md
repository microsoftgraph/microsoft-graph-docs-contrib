---
title: "applicationRiskFactorLegalInfo resource type"
description: "Provides legal and compliance-related details that describe how an application manages user data, intellectual property, and regulatory obligations."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationRiskFactorLegalInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents legal compliance information and data management policies for an [application](../resources/applicationtemplate.md), including data retention practices, GDPR alignment, ownership rights, and DMCA adherence.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataRetention|dataRetentionLevel|Specifies how long the application retains user or customer data after account deletion or contract termination. The possible values are: `none`, `dataRetained`, `deletedImmediately`, `deletedWithin1Month`, `deletedWithin2Weeks`, `deletedWithin3Months`, `deletedWithinMoreThan3Months`, `unknownFutureValue`.|
|gdpr|[applicationRiskFactorLegalInfoGdpr](../resources/applicationriskfactorlegalinfogdpr.md)|Provides details on the application's compliance with the General Data Protection Regulation (GDPR), including data subject rights and lawful processing bases.|
|hasDataOwnership|Boolean|Indicates whether customers maintain ownership and control of their data processed or stored by the application.|
|hasDmca|Boolean|Indicates whether the application or organization complies with the Digital Millennium Copyright Act (DMCA) or equivalent copyright protection frameworks.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskFactorLegalInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationRiskFactorLegalInfo",
  "hasDmca": "Boolean",
  "hasDataOwnership": "Boolean",
  "dataRetention": "String",
  "gdpr": {
    "@odata.type": "microsoft.graph.applicationRiskFactorLegalInfoGdpr"
  }
}
```

