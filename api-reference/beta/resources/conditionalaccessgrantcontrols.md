---
title: "conditionalAccessGrantControls resource type"
description: "Represents grant controls that must be fulfilled to pass the policy."
ms.localizationpriority: medium
author: "davidspooner"
ms.prod: "identity-and-sign-in"
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
| builtInControls | conditionalAccessGrantControl collection | List of values of built-in controls required by the policy. Possible values: `block`, `mfa`, `compliantDevice`, `domainJoinedDevice`, `approvedApplication`, `compliantApplication`, `passwordChange`, `unknownFutureValue`. |
| customAuthenticationFactors | String collection | List of custom controls IDs required by the policy. To learn more about custom control, see [Custom controls (preview)](/azure/active-directory/conditional-access/controls#custom-controls-preview). |
| termsOfUse | String collection | List of [terms of use](agreement.md) IDs required by the policy. |

### Special considerations when using `passwordChange` as a control

Consider the following when you use the `passwordChange` control: 

- `passwordChange` must be accompanied by `mfa` using an `AND` operator. This combination ensures that the password will be updated in a secure way.
- `passwordChange` must be used in a policy containing `userRiskLevels`. This is designed to enable scenarios where users must use a secure change password to reset their user risk.
- The policy should target `all` applications, and not exclude any applications.
- The policy cannot contain any other condition.

### Known issue when using when using `authenticationStrength` control

You can create or update a Conditional Access policy with `authenticationStrength` grant control. However, when reading the policy, the `authenticationStrength` information might be missing from the response.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
| authenticationStrength | [authenticationStrengthPolicy](authenticationstrengthpolicy.md) | The authentication strength required by the conditional access policy. Optional.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "operator",
    "builtInControls",
    "customAuthenticationFactors",
    "termsOfUse",
    "authenticationStrength"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessGrantControls",
  "baseType": null
}-->

```json
{
  "builtInControls": ["String"],
  "customAuthenticationFactors": ["String"],
  "operator": "String",
  "termsOfUse": ["String"],
  "authenticationStrength": {"@odata.type": "microsoft.graph.authenticationStrengthPolicy"}
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


