---
title: "customClaimsPolicy resource type"
description: "A claims policy allows application admins the ability to customize the claims that is emitted in tokens affected by this policy."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# customClaimsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A claims policy allows application admins the ability to customize the claims that is emitted in tokens affected by this policy.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List customClaimsPolicy objects](../api/policyroot-list-claimspolicy.md)|[customClaimsPolicy](../resources/customclaimspolicy.md) collection|Get a list of the [customClaimsPolicy](../resources/customclaimspolicy.md) objects and their properties.|
|[Create customClaimsPolicy](../api/policyroot-post-claimspolicy.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Create a new [customClaimsPolicy](../resources/customclaimspolicy.md) object.|
|[Get customClaimsPolicy](../api/customclaimspolicy-get.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Read the properties and relationships of a [customClaimsPolicy](../resources/customclaimspolicy.md) object.|
|[Update customClaimsPolicy](../api/customclaimspolicy-update.md)|[customClaimsPolicy](../resources/customclaimspolicy.md)|Update the properties of a [customClaimsPolicy](../resources/customclaimspolicy.md) object.|
|[Delete customClaimsPolicy](../api/policyroot-delete-claimspolicy.md)|None|Delete a [customClaimsPolicy](../resources/customclaimspolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audienceOverride|String|If specified overrides the content of the Audience claim for WS-Federation and SAML2 protocols. A custom signing key must be used for audienceOverride to be applied, otherwise audienceOverride value is ignored. The value provided must be in the format of an absolute URI.|
|id|String|Policy identifier string. Inherited from [entity](../resources/entity.md).|
|includeApplicationIdInIssuer|Boolean|If set to true then the application id is added to the Issuer claim. Relevant only for SAML2.0 and if custom signing key is used.|
|includeBasicClaimSet|Boolean|This property determines whether the basic claim set is included in tokens affected by this policy. If set to True, all claims in the basic claim set are emitted in tokens affected by the policy. By default the basic claim set aren't in the tokens, unless they'e explicitly configured in this policy.|

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
