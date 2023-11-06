---
title: "federatedTokenValidationPolicy resource type"
description: "Represents a policy to control enabling/disabling federation token auth validation - matching on-prem federated account and mapped Entra Id account's root domains."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# federatedTokenValidationPolicy resource type (Preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a policy to control enabling/disabling federation token auth validation - matching on-prem federated account and mapped Entra Id account's root domains. If enabled Entra Id rejects auth request if on-prem federated account and mapped Entra Id account's root domains don't match.

## Scenarios

### Reject auth request if on-prem federated account and mapped Entra Id account's root domains do not match

This new policy allows the admin to control the federated token validation behaviour. If enabled Entra Id rejects auth request if on-prem federated account and mapped Entra Id account's root domains do not match.

The APIs allows administrators to:

1. Update the user verified root domains in Entra Id for which the new token validation is applied.
2. Get the user verified domains in Entra Id for which the new validation is enabled.

#### Properties

| Property | Type | Description | Key | Required | ReadOnly |
| :-- | :-- | :-- | :-- | :-- | :-- |
| `validatingDomains` | `microsoft.graph.validatingDomains` | Verified Entra Id domains for which Entra Id validates that federated account's root domain matches with mapped Entra Id account's root domain. | Yes | Yes | No |

## New complex types

### validatingDomains

An abstract complex type that defines verified root domains for which Entra Id validates whether federated account's root domain matches with mapped Entra Id account's root domain.

#### Sub-Properties

| Property | Type | Description | Required | ReadOnly |
| :-- | :-- | :-- | :-- | :-- |
| `rootDomains` | `graph.rootDomains` | Defines whether the validation applies to 'all', 'all federated', 'all managed', 'enumerated', 'all managed + enumerated', or 'no' domains. | Yes | No |

### allDomains

A derived complex type which defines that Entra Id performs validation for all root domains if root domain is 'all' or for all managed if root domain is 'allManaged' or for all Federated if root domain is 'allFederated' or for none if root domain is 'none'.
When enabled, Entra Id will validate whether federated account's root domain matches with mapped Entra Id account's root domain.

### enumeratedDomains

A derived complex type which defines that Entra Id performs validation for all specified Azure AD domains if root domain is 'enumerated' or for all managed and specified Azure AD domains if root domain is 'allManagedAndEnumeratedFederated'.
When enabled, Entra Id will validate whether federated account's root domain matches with mapped Entra Id account's root domain.

#### Sub-Properties

| Property | Type | Description | Required | ReadOnly |
| :-- | :-- | :-- | :-- | :-- |
| `domainNames` | `Collection(Edm.String)` | List of federated and/or managed root domains for which Entra Id performs the validation. | Yes | No |

## Error conditions and messages

| Scenario | Method | Code | Message |
| :-- | :-- | :-- | :-- |
| User or application does not have the appropriate permission scope.  | All | 403 | Your account does not have access to this data. Contact your Global Administrator to request access.           |
| User or application provides invalid user root domains as the input. | PUT | 204/201 | You can only assign this policy to verified root domains. The list you provided contains one or more invalid domains. |

## JSON Representation

JSON representation of the resource:

```json
{
"validatingDomains": {
      "@odata.type":"String",
      "rootDomains": "String",
      "domainNames": ["String"]
  }
}
```
