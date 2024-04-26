---
title: "customClaimsPolicy resource type"
description: "Represents a claims policy which allows application admins the ability to customize the claims emitted in tokens affected by this policy."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.service: entra-id
doc_type: resourcePageType
---

# customClaimsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a claims policy which allows application admins the ability to customize the claims emitted in tokens affected by this policy.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get customClaimsPolicy](../api/claimspolicy-get.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Read the properties and relationships of a [customClaimsPolicy](../resources/customclaimspolicy.md) object.|
|[Create/Replace customClaimsPolicy](../api/claimspolicy-create.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Create a new [customClaimsPolicy](../resources/customclaimspolicy.md) object or replace an existing [customClaimsPolicy](../resources/customclaimspolicy.md) object.|
|[Update customClaimsPolicy](../api/claimspolicy-update.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Update the properties of a [customClaimsPolicy](../resources/customclaimspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audienceOverride|String|If specified, it overrides the content of the audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise, the audienceOverride value is ignored. The value provided must be in the format of an absolute URI.|
|claims|[customClaim](../resources/customclaim.md) collection|This property defines which claims are present in the tokens affected by the policy, in addition to the basic claim set and the core claim set. Inherited from [customclaimbase](../resources/customclaimbase.md).|
|id|String|Policy identifier string. Inherited from [entity](../resources/entity.md).|
|includeApplicationIdInIssuer|Boolean|If set to `true`, the application ID is added to the issuer claim. It is relevant only for SAML2.0 and if a custom signing key is used.|
|includeBasicClaimSet|Boolean|This property determines whether the basic claim set is included in tokens affected by this policy. If set to `true`, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set isn't in the tokens, unless they're explicitly configured in this policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.customClaimsPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.customClaimsPolicy",
  "id": "String (identifier)",
  "includeBasicClaimSet": "Boolean",
  "includeApplicationIdInIssuer": "Boolean",
  "audienceOverride": "String",
  "groupFilter": {
    "@odata.type": "microsoft.graph.groupClaimFilterBase"
  },
  "claims": [
    {
      "@odata.type": "microsoft.graph.customClaim"
    }
  ]
}
```
