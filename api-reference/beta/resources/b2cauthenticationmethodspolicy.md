---
title: "b2cAuthenticationMethodsPolicy resource type"
description: "Represents a local account authentication method registered to a user configured in a B2C tenant."
localization_priority: Priority
author: "namkedia"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# b2cAuthenticationMethodsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Azure AD B2C allows tenant admins to choose a mechanism for letting end customers register via local accounts. Local accounts are the accounts where the identity assertion is being done by Azure AD. As opposed to federated identity providers where assertion is made by Google, Facebook etc.

The Local accounts in Azure AD B2C do not follow the settings or paradigms from AAD. The methods set by Azure AD authentication methods policy are not used or enforced by AAD B2C. AAD B2C stores these settings in a different policy and these settings are consumed by user flows.

In the Azure portal they are called Local Accounts. As of now we do not have plans to change the portal naming.

## Methods

| Method       | Return type | Description |
|:-------------|:------------|:------------|
| [Get b2cAuthenticationMethodsPolicy](../api/b2cauthenticationmethodspolicy-get.md) | [b2cauthenticationmethodspolicy](b2cauthenticationmethodspolicy.md) | Read the properties of an **b2cauthenticationmethodspolicy** object. |
| [Update b2cAuthenticationMethodsPolicy](../api/b2cauthenticationmethodspolicy-update.md) | None | Update the properties of an **b2cauthenticationmethodspolicy** objects. |

## Properties

| Property     | Type        | Description |Key	|Required |	Read Only|
|:-------------|:------------|:------------|:---|:--------|:---------|
|id|String|The id of the B2C authentication methods policy|Yes|No|Yes|
|isPhoneOneTimePasswordAuthenticationEnabled|Boolean|This property lets the tenant admin configure if the phone one time password authentication method is enabled|No|No|No|
|isEmailPasswordAuthenticationEnabled|Boolean|This property lets the tenant admin configure if the email and password authentication method is enabled|No|No|No|
|isUserNameAuthenticationEnabled|Boolean|This property lets the tenant admin configure if the user name and password authentication method is enabled|No|No|No|
## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.b2cAuthenticationMethodsPolicy",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
    "id": "String",
    "isPhoneOneTimePasswordAuthenticationEnabled": false,
    "isEmailPasswordAuthenticationEnabled": false,
    "isUserNameAuthenticationEnabled": false
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
