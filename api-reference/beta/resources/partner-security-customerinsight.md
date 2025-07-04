---
title: "customerInsight resource type"
description: "Represents insights into the security score for a partner's customer."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
ms.date: 08/30/2024
---

# customerInsight resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents insights into the security score for a partner's customer.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner-security-partnersecurityscore-list-customerinsights.md)|[microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) collection|Get a list of the [customerInsight](../resources/partner-security-customerinsight.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mfa|[microsoft.graph.partner.security.customerMfaInsight](../resources/partner-security-customermfainsight.md)|Details of the customer's Entra tenant MFA policy configuration and usage.|
|tenantId|String|The unique identifier for the customer.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "tenantId",
  "@odata.type": "microsoft.graph.partner.security.customerInsight",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.partner.security.customerInsight",
  "tenantId": "String (identifier)",
  "mfa": {
    "@odata.type": "microsoft.graph.partner.security.customerMfaInsight"
  }
}
```

