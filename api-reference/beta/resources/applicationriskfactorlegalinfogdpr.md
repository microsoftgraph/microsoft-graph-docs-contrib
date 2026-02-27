---
title: "applicationRiskFactorLegalInfoGdpr resource type"
description: "Provides details about an application's alignment with GDPR requirements, including user rights, data protection measures, and breach reporting obligations."
author: "HildaK-pm"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# applicationRiskFactorLegalInfoGdpr resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents information about how an [application](../resources/applicationtemplate.md) complies with the General Data Protection Regulation (GDPR), focusing on user data rights, protection mechanisms, and transparency obligations.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|dataProtection|dataProtection|Specifies the data protection mechanisms implemented by the application to comply with GDPR. The possible values are: `none`, `impactAssessments`, `officers`, `secureCrossBorderDataTransfer`, `unknownFutureValue`.|
|hasRightToErasure|Boolean|Indicates whether the application provides users with the ability to request deletion of their personal data (the right to be forgotten).|
|isReportingDataBreaches|Boolean|Indicates whether the organization reports personal data breaches to authorities and affected users in accordance with GDPR requirements.|
|statementUrl|String|Specifies the URL of the application's GDPR or privacy compliance statement, outlining how user data is handled.|
|userOwnership|userOwnership|Specifies the GDPR data subject rights supported by the application. The possible values are: `none`, `lawfulBasisForProcessing`, `rightToAccess`, `rightToBeInformed`, `rightToDataPortability`, `rightToObject`, `rightToRectification`, `rightToRestrictionOfProcessing`, `rightsRelatedToAutomatedDecisionMaking`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.applicationRiskFactorLegalInfoGdpr"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.applicationRiskFactorLegalInfoGdpr",
  "statementUrl": "String",
  "hasRightToErasure": "Boolean",
  "isReportingDataBreaches": "Boolean",
  "dataProtection": "String",
  "userOwnership": "String"
}
```

