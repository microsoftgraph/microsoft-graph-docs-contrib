---
title: "partnerSecurity resource type"
description: "Represents the root for partner security entities."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# partnerSecurity resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root for partner security entities.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|securityAlerts|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) collection|The security alerts or a vulnerability of a Cloud Solution Provider (CSP) partner's customer that the partner must be made aware of for further action.|
|securityScore|[microsoft.graph.partner.security.securityScore](../resources/partner-security-partnerSecurityScore.md) singleton|The security score calculated for the CSP partner and their customers.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.partner.security.partnerSecurity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.partnerSecurity"
}
```

