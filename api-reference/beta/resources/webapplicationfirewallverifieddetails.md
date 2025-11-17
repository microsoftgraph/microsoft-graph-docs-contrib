---
title: "webApplicationFirewallVerifiedDetails resource type"
description: "Abstract type that represents detailed findings and evidence produced by a verification operation for a domain managed by a web application firewall (WAF) provider."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webApplicationFirewallVerifiedDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents [verification](../resources/webApplicationFirewallVerificationModel.md) findings and evidence for a host or domain after a verification operation with a web application firewall (WAF) provider.

This is an abstract type. The following types inherit from **webApplicationFirewallVerifiedDetails**:

- [cloudFlareVerifiedDetailsModel](cloudflareverifieddetailsmodel.md)
- [akamaiVerifiedDetailsModel](akamaiverifieddetailsmodel.md)


## Properties
|Property|Type|Description|
|:---|:---|:---|
|dnsConfiguration|[webApplicationFirewallDnsConfiguration](../resources/webapplicationfirewalldnsconfiguration.md)|DNS-related details discovered during verification for the host, such as the DNS record name, record type, record value, whether the record is proxied through the provider, and whether the domain is verified.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webApplicationFirewallVerifiedDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webApplicationFirewallVerifiedDetails",
  "dnsConfiguration": {
    "@odata.type": "microsoft.graph.webApplicationFirewallDnsConfiguration"
  }
}
```