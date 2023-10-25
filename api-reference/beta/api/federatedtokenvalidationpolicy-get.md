---
title: "Get federatedTokenValidation Policy"
description: "Gets verified domains for which AAD will validate whether federated account's root domain matches with mapped AAD account's root domain."
author: "rahul-nagraj"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# GET federatedTokenValidation Policy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [federatedTokenValidationPolicy](../resources/federatedTokenValidationPolicy.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### API re-uses existing Graph permissions

| Permissions | Type | Entities/APIs covered |
| :-- | :-- | :-- |
| `Policy.Read.All` | Delegated   | All |
| `Policy.Read.All` | Application | All |

### New permission scopes

| ScopeName | DisplayName | Description | Type | Admin Consent? | Entities/APIs covered |
| :-- | :-- | :-- | :-- | :-- | :-- |
| `Policy.ReadWrite.FedTokenValidation` | Read and write Federated Token Validation Policy | This role can read and write Federated Token Validation Policy that determines which domains have enabled the validation | Delegated | Yes | All |
| `Policy.ReadWrite.FedTokenValidation` | Read and write Federated Token Validation Policy | This role can read and write Federated Token Validation Policy that determines which domains have enabled the validation | Yes | All |

### Actions

| Permission | Action | Description |
| :-- | :-- | :-- |
| `Policy.ReadWrite.FedTokenValidation` | `/policies/federatedTokenValidationPolicy` | Update verified domains for which AAD will perform validation (matching federated account's root domain matches with mapped AAD account's root domain) before granting access. |
| `Policy.Read.All`                           | `/policies/federatedTokenValidationPolicy` | Get verified domains for which AAD will perform validation (matching federated account's root domain matches with mapped AAD account's root domain) before granting access.    |

## HTTP request

Get the verified managed or federated root domains for which AAD will perform validation (matching federated account's root domain matches with mapped AAD account's root domain) before granting access.

```http
GET /policies/federatedTokenValidationPolicy/
```

## Request headers

|Name|Description|
|:---|:---|
|Content-Type|application/json. Required.|

## Response

If successful, this method returns a `200 OK` response code and a [federatedTokenValidationPolicy](../resources/federatedTokenValidationPolicy.md) object in the response body.

[!Note]:
> In case a GET is executed on the policy before the policy is created using a POST this method returns a `404 Not Found` response code with a message `Resource does not exist or one of its queried reference-property objects are not present`.
