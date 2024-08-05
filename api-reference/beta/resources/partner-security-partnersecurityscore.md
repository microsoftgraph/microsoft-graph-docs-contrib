---
title: "partnerSecurityScore resource type"
description: "Represents an overview of the partner security score."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# partnerSecurityScore resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the aggregate security score for the partner along with history of score changes, detailed customer insights, and requirement score information.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/partner-security-partnersecurityscore-get.md)|[microsoft.graph.partner.security.partnerSecurityScore](../resources/partner-security-partnersecurityscore.md)|Read the properties and relationships of a [microsoft.graph.partner.security.partnerSecurityScore](../resources/partner-security-partnersecurityscore.md) object.|
|[List customerInsights](../api/partner-security-partnersecurityscore-list-customerinsights.md)|[microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) collection|Get the customer insight resources from the **customerInsights** navigation property.|
|[List history](../api/partner-security-partnersecurityscore-list-history.md)|[microsoft.graph.partner.security.securityScoreHistory](../resources/partner-security-securityscorehistory.md) collection|Get the security score history resources from the **history** navigation property.|
|[List requirements](../api/partner-security-partnersecurityscore-list-requirements.md)|[microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md) collection|Get the security requirement resources from the **requirements** navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|currentScore|Single|The current security score for the partner.|
|lastRefreshDateTime|DateTimeOffset|The last time the data was checked.|
|maxScore|Single|The maximum score possible.|
|updatedDateTime|DateTimeOffset|The last time the security score or related properties changed.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customerInsights|[microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) collection|Contains customer specific information for certain requirements.|
|history|[microsoft.graph.partner.security.securityScoreHistory](../resources/partner-security-securityscorehistory.md) collection|Contains a list of recent score changes.|
|requirements|[microsoft.graph.partner.security.securityRequirement](../resources/partner-security-securityrequirement.md) collection|Contains the list of security requirements that make up the score.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.partnerSecurityScore",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.partnerSecurityScore",
  "updatedDateTime": "2024-01-17T00:00:00Z",
  "lastRefreshDateTime":"2024-02-28T00:00:00Z",
  "currentScore": 14.29,
  "maxScore": 100.0
}
```

