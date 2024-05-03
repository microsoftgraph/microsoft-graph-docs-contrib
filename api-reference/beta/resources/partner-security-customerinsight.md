---
title: "customerInsight resource type"
description: "Represents a single customer of a partner"
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# customerInsight resource type

Namespace: microsoft.graph.partner.security

This entity contains insights into the security posture of a Partner's customer.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner-security-partnersecurityscore-list-customerinsights.md)|[microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) collection|Get a list of the [microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mfa|[microsoft.graph.partner.security.customerMfaInsight](../resources/partner-security-customermfainsight.md)|Details about the customer's mfa posture.|
|tenantId|String|Identifier for the customer.|

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

