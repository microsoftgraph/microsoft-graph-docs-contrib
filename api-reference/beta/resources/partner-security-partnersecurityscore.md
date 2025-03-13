---
title: "partnerSecurityScore resource type"
description: "Represents the security score for a partner which helps them understand their security posture"
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
ms.date: 08/30/2024
---

# partnerSecurityScore resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the security score for the partner which helps Cloud Solution Provider (CSP) partners understand their security posture and their customer's security posture. The score includes an aggregate score along with history of score changes, detailed customer insights, and requirement score information.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/partner-security-partnersecurityscore-get.md)|[microsoft.graph.partner.security.partnerSecurityScore](../resources/partner-security-partnersecurityscore.md)|Read the properties and relationships of a [partnerSecurityScore](../resources/partner-security-partnersecurityscore.md) object.|
|[List customer insights](../api/partner-security-partnersecurityscore-list-customerinsights.md)|[microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) collection|Get a list of the **customerInsight** data to learn more about the partner's customer security posture.|
|[List history](../api/partner-security-partnersecurityscore-list-history.md)|[microsoft.graph.partner.security.securityScoreHistory](../resources/partner-security-securityscorehistory.md) collection|Lists the history of security score changes for the partner..|
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
|customerInsights|[microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) collection|Contains customer-specific information for certain requirements.|
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
  "updatedDateTime": "String (timestamp)",
  "lastRefreshDateTime": "String (timestamp)",
  "currentScore": "Single",
  "maxScore": "Single"
}
```

