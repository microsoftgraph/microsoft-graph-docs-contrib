---
title: "federatedTokenValidationPolicy resource type"
description: "Represents a policy to control enabling/disabling federation token auth validation - matching on-prem federated account and mapped AAD account's root domains."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# federatedTokenValidationPolicy resource type (Preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy to control enabling/disabling federation token auth validation - matching on-prem federated account and mapped AAD account's root domains. If enabled AAD will reject auth request if on-prem federated account and mapped AAD account's root domains dont match.

## Scenarios

### Reject auth request if on-prem federated account and mapped AAD account's root domains dont match

This new policy will allow customers to enable the above mentioned validation. If enabled AAD will reject auth request if on-prem federated account and mapped AAD account's root domains dont match.

The APIs will allow administrators to:

1. Update the user verified root domains in AAD for which the new token validation will be applied.
2. Get the user verified domains in AAD for which the new validation is enabled.

#### Properties

| Property | Type | Description | Key | Required | ReadOnly |
| :-- | :-- | :-- | :-- | :-- | :-- |
| `validatingDomains` | `microsoft.graph.validatingDomains` | Verified AAD domains for which AAD will validate that federated account's root domain matches with mapped AAD account's root domain. | Yes | Yes | No |

## New complex types

### validatingDomains

A abstract complex type that defines verified root domains for which AAD will validate whether federated account's root domain matches with mapped AAD account's root domain.

#### Sub-Properties

| Property | Type | Description | Required | ReadOnly |
| :-- | :-- | :-- | :-- | :-- |
| `rootDomains` | `graph.rootDomains` | Defines whether the validation will apply to 'all', 'all federated', 'all managed', 'enumerated', 'all managed + enumerated', or 'no' domains. | Yes | No |

### allDomains

A derived complex type that defines that AAD will perform validation (whether federated account's root domain matches with mapped AAD account's root domain) for all root domains if root domains is 'all' or for all Managed if root domains is 'allManaged' or for all Federated if root domains is 'allFederated' or for none if root domains is 'none'.

### enumeratedDomains

A derived complex type that defines that AAD will perform validation (whether federated account's root domain matches with mapped AAD account's root domain) for all specified Azure AD domains if root domains is 'enumerated' or for all Managed and specified Azure AD domains if root domains is 'allManagedAndEnumeratedFederated'.

#### Sub-Properties

| Property | Type | Description | Required | ReadOnly |
| :-- | :-- | :-- | :-- | :-- |
| `domainNames` | `Collection(Edm.String)` | List of federated and/or managed root domains for which AAD will perform the validation. | Yes | No |

## Error conditions and messages

| Scenario | Method | Code | Message |
| :-- | :-- | :-- | :-- |
| User or application does not have the appropriate permission scope.  | All | 403 | Your account does not have access to this data. Please contact your Global Administrator to request access.           |
| User or application provides invalid user root domains as the input. | PUT | 204/201 | You can only assign this policy to verified root domains. The list you provided containes one or more invalid domain. |

## JSON Representation

The following is a JSON representation of the resource.

```json
{
"validatingDomains": {
      "@odata.type":"String",
      "rootDomains": "String",
      "domainNames": ["String"]
  }
}
```
