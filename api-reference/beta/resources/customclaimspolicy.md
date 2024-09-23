---
title: "customClaimsPolicy resource type"
description: "Represents a claims policy that allows application admins to customize the claims emitted in tokens affected by this policy."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
toc.title: Custom claims policy (preview)
---

# customClaimsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a claims policy that allows application admins to customize the claims emitted in tokens affected by this policy. Learn more about this policy in the following articles:
- [Customize claims using the custom claims policy (preview)](/entra/identity-platform/claims-customization-custom-claims-policy)
- [Claims customization using a policy](/entra/identity-platform/reference-claims-customization) to learn the difference between this policy and the [claims mapping policy](../resources/claimsmappingpolicy.md)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/customclaimspolicy-get.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Read the properties and relationships of a custom claims policy object.|
|[Create or replace](../api/serviceprincipal-put-claimspolicy.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Create a new custom claims policy object if it doesn't exist, or replace an existing one.|
|[Update](../api/customclaimspolicy-update.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Update the properties of a custom claims policy object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audienceOverride|String|If specified, it overrides the content of the audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise, the audienceOverride value is ignored. The value provided must be in the format of an absolute URI.|
|claims|[customClaim](../resources/customclaim.md) collection|Defines which claims are present in the tokens affected by the policy, in addition to the basic claim and the core claim set. Inherited from [customclaimbase](../resources/customclaimbase.md).|
|id|String|Policy identifier string. Inherited from [entity](../resources/entity.md).|
|includeApplicationIdInIssuer|Boolean|Indicates whether the application ID is added to the claim. It is relevant only for SAML2.0 and if a custom signing key is used. the default value is `true`. Optional.|
|includeBasicClaimSet|Boolean|Determines whether the basic claim set is included in tokens affected by this policy. If set to `true`, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set isn't in the tokens unless they're explicitly configured in this policy.|

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
