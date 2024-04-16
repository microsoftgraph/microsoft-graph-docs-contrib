---
title: "partnerSecurity resource type"
description: "Represent the root for various type of partner security entities."
author: "manusidd"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# partnerSecurity resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity is the root for various partner security entities.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.

## Properties

None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|securityAlerts|[microsoft.graph.partner.security.partnerSecurityAlert](../resources/partner.security-partnersecurityalert.md) collection|This property represents security alert(s) or a vulnerability of a CSP partner's customer that the partner has to be made aware of for further action.|

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

