---
title: "webApplicationFirewallVerificationResult resource type"
description: "Represents the outcome of a verification operation for a domain managed by a web application firewall (WAF) provider."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# webApplicationFirewallVerificationResult resource type

Namespace: microsoft.graph



Represents the result of a [verification](../resources/webApplicationFirewallVerificationModel.md) operation performed against a host or domain with a web application firewall (WAF) provider.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|errors|[genericError](../resources/genericerror.md) collection|List of errors encountered during the verification process. |
|status|webApplicationFirewallVerificationStatus|Overall status of the verification operation. The possible values are: `success` (verification passed), `warning` (verification completed with warnings), `failure` (verification failed), `unknownFutureValue`.|
|verifiedOnDateTime|DateTimeOffset|UTC timestamp when the verification was performed or last updated. This indicates when the verification result was produced.|
|warnings|[genericError](../resources/genericerror.md) collection|List of warnings produced during verification.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.webApplicationFirewallVerificationResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.webApplicationFirewallVerificationResult",
  "status": "String",
  "verifiedOnDateTime": "String (timestamp)",
  "errors": [
    {
      "@odata.type": "microsoft.graph.genericError"
    }
  ],
  "warnings": [
    {
      "@odata.type": "microsoft.graph.genericError"
    }
  ]
}
```