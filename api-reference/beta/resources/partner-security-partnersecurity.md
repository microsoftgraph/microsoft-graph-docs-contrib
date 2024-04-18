---
title: "partnerSecurity resource type"
description: "Represents the root for various types of partner security entities."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# partnerSecurity resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the root for various types of partner security entities.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|securityAlerts|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner-security-partnersecurityalert.md) collection|The security alerts or a vulnerability of a CSP partner's customer that the partner must be made aware of for further action.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "ignore",
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

