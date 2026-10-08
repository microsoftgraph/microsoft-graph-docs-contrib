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

Contains settings for a specific credential in a [Verified ID profile](../resources/verifiedidprofile.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|acceptedIssuer|String|Trusted Verified ID issuer. Required.|
|claimBindings|[claimBinding](../resources/claimbinding.md) collection| Claim bindings from Verified ID to source attributes. Required.|
|claimBindingSource|claimBindingSource| Source to validate against Verified ID claims. The possible values are: `directory`, `unknownFutureValue`. Required.|
|claimValidation|[claimValidation](../resources/claimvalidation.md)|Validation settings for claim processing. Required.|
|manifestUrl|String|The URL where the credential issuer's manifest can be found. The manifest defines the credential schema and issuer details. Optional.|
|methodType|verifiedIdMethodType|The method used to configure the Verified ID profile. When omitted, null, or set to `notConfigured`, the effective method type is `identityVerificationPartner`. The possible values are: `identityVerificationPartner`, `tenantCustomCredential`, `verifiedEmployee`, `unknownFutureValue`, `notConfigured`. Use the `Prefer: include-unknown-enum-members` request header to get the following value from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `notConfigured`. The default value is `identityVerificationPartner`. Optional.|
|type|String|Verified ID type. Required.|

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
  "methodType": "String",
  "type": "String",
  "manifestUrl": "String",
  "acceptedIssuer": "String",
  "claimBindingSource": "String",
  "claimBindings": [
    {
      "@odata.type": "microsoft.graph.claimBinding"
    }
  ],
  "claimValidation": {
    "@odata.type": "microsoft.graph.claimValidation"
  }
}
```

