---
title: "conditionalAccessGrantControls resource type"
description: "Represents grant controls that must be fulfilled to pass the policy."
localization_priority: Normal
author: "videor"
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# conditionalAccessGrantControls resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents grant controls that must be fulfilled to pass the policy.

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| operator | String | Defines the relationship of the grant controls. Possible values: `AND`, `OR`. |
| builtInControls | String collection | List of values of built-in controls required by the policy. Possible values: `block`, `mfa`, `compliantDevice`, `domainJoinedDevice`, `approvedApplication`, `compliantApplication`, `passwordChange`. |
| customAuthenticationFactors | String collection | List of custom controls IDs required by the policy. Learn more about custom controls here: https://docs.microsoft.com/azure/active-directory/conditional-access/controls#custom-controls-preview |
| termsOfUse | String collection | List of [terms of use](agreement.md) IDs required by the policy. |

## Special considerations when using `passwordChange` as a control

1. `passwordChange` must be accompanied with `mfa` using and `AND` operator. This combination ensures the password will be updated in a secure way.

2. `passwordChange` must be used in a policy containing `userRiskLevels`: Our goal is to empower scenarios where users must use a secure change password to reset their user risk.

3. The policy should target `all` applications, without any application excluded.

4. The policy cannot contain any other condition.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "operator",
    "builtInControls",
    "customAuthenticationFactors",
    "termsOfUse"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessGrantControls",
  "baseType": null
}-->

```json
{
  "builtInControls": ["String"],
  "customAuthenticationFactors": ["String"],
  "operator": "String",
  "termsOfUse": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessGrantControls resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->