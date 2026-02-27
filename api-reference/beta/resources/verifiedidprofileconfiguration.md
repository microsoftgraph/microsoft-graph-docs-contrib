---
title: "verifiedIdProfileConfiguration resource type"
description: "Profile configuration defining set of properties of a specific Verified ID credential. "
author: "tilarso"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# verifiedIdProfileConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Verified ID profile configuration defining set of properties of a specific Verified ID credential. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acceptedIssuer|String|Trusted Verified ID issuer.|
|claimBindings|[claimBinding](../resources/claimbinding.md) collection| Claim bindings from Verified ID to source attributes.|
|claimBindingSource|claimBindingSource| Source to validate against Verified ID claims. The possible values are: `directory`, `unknownFutureValue`.|
|type|String|Verified ID type.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.verifiedIdProfileConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.verifiedIdProfileConfiguration",
  "type": "String",
  "acceptedIssuer": "String",
  "claimBindingSource": "String",
  "claimBindings": [
    {
      "@odata.type": "microsoft.graph.claimBinding"
    }
  ]
}
```

