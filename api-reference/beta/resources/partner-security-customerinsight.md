---
title: "customerInsight resource type"
description: "Represents insights into the security score for a partner's customer."
author: "evandontje-ms"
ms.localizationpriority: medium
ms.subservice: "partner-customer-administration"
doc_type: resourcePageType
---

# customerInsight resource type

Namespace: microsoft.graph.partner.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This entity contains insights into the security posture of a partner's customer.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/partner-security-partnersecurityscore-list-customerinsights.md)|[microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) collection|Get a list of the [microsoft.graph.partner.security.customerInsight](../resources/partner-security-customerinsight.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|mfa|[microsoft.graph.partner.security.customerMfaInsight](../resources/partner-security-customermfainsight.md)|Details about the customer's mfa posture.|
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
  "tenantId": "87f425b5-498a-a5a9-bbb0-10791a36cfc2",
  "mfa": {
    "@odata.type": "microsoft.graph.partner.security.customerMfaInsight",
    "compliantAdminsCount": 53,
    "compliantNonAdminsCount": 11,
    "totalUsersCount": 6852,
    "securityDefaultsStatus": "disabled",
    "mfaConditionalAccessPolicyStatus": "enabled",
    "legacyPerUserMfaStatus": "enabled"
  }
}
```

