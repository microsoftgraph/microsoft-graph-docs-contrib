---
title: "b2cAuthenticationMethodsPolicy resource type"
description: "Represents a local account authentication method registered to a user configured in an Azure Active Directory (Azure AD) B2C tenant."
ms.localizationpriority: high
author: "namkedia"
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 07/22/2024
---

# b2cAuthenticationMethodsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure Active Directory (Azure AD) B2C allows tenant admins to choose a mechanism for letting end users register via local accounts. Local accounts are the accounts where Microsoft Entra ID does the identity assertion, as opposed to a federated identity provider such as Google or Facebook etc.

The local accounts in Azure AD B2C do not follow the settings or paradigms from Microsoft Entra ID. The Microsoft Entra authentication methods policy isn't used or enforced by Azure AD B2C. Azure AD B2C stores these settings in a different policy, which is consumed by user flows.

## Methods

| Method       | Return type | Description |
|:-------------|:------------|:------------|
| [Get](../api/b2cauthenticationmethodspolicy-get.md) | [b2cauthenticationmethodspolicy](b2cauthenticationmethodspolicy.md) | Read the properties of a **b2cauthenticationmethodspolicy** object. |
| [Update](../api/b2cauthenticationmethodspolicy-update.md) | None | Update the properties of a **b2cauthenticationmethodspolicy** objects. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The ID of the B2C authentication methods policy. This is a read only property and the key.|
|isEmailPasswordAuthenticationEnabled|Boolean|The tenant admin can configure local accounts using email if the email and password authentication method is enabled.|
|isUserNameAuthenticationEnabled|Boolean|The tenant admin can configure local accounts using username if the username and password authentication method is enabled.|
|isPhoneOneTimePasswordAuthenticationEnabled|Boolean|The tenant admin can configure local accounts using phone number if the phone number and one-time password authentication method is enabled.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.b2cAuthenticationMethodsPolicy",
  "keyProperty": "id"
}-->

```json
{
    "id": "b2CAuthenticationMethodsPolicy",
    "isEmailPasswordAuthenticationEnabled": true,
    "isUserNameAuthenticationEnabled": false,
    "isPhoneOneTimePasswordAuthenticationEnabled": true
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "b2cAuthenticationMethodsPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
