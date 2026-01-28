---
title: "authenticationMethod resource type"
description: "An abstract type that represents an authentication method registered to a user."
ms.localizationpriority: medium
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.subservice: "entra-sign-in"
doc_type: "resourcePageType"
ms.date: 01/06/2026
---

# authenticationMethod resource type

Namespace: microsoft.graph

An abstract type that represents an authentication method registered to a user. An [authentication method](/azure/active-directory/authentication/concept-authentication-methods) is something used by a user to authenticate or otherwise prove their identity to the system. Some examples include password, phone (usable via SMS or voice call), FIDO2 security keys, and more.

The **authenticationMethod** resource type is an abstract type that's inherited by the following derived types:

+ [emailAuthenticationMethod](emailauthenticationmethod.md)
+ [externalAuthenticationMethod](externalauthenticationmethod.md)
+ [fido2AuthenticationMethod](fido2authenticationmethod.md)
+ [microsoftAuthenticatorAuthenticationMethod](microsoftauthenticatorauthenticationmethod.md)
+ [passwordAuthenticationMethod](passwordauthenticationmethod.md)
+ [phoneAuthenticationMethod](phoneauthenticationmethod.md)
+ [platformCredentialAuthenticationMethod](platformcredentialauthenticationmethod.md)
+ [softwareOathAuthenticationMethod](softwareoathauthenticationmethod.md)
+ [temporaryAccessPassAuthenticationMethod](temporaryaccesspassauthenticationmethod.md)
+ [windowsHelloForBusinessAuthenticationMethod](windowshelloforbusinessauthenticationmethod.md)

> [!IMPORTANT]
> Listing users' authentication methods only returns methods supported on this API version and registered to the user. See [Microsoft Entra authentication methods API overview](authenticationmethods-overview.md) for a list of currently supported methods.

## Methods

| Method       | Return type | Description |
|:-------------|:------------|:------------|
| [List](../api/authentication-list-methods.md) | [authenticationMethod](authenticationmethod.md) collection | Read the properties and relationships of all of a user's **authenticationMethod** objects. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|createdDateTime|DateTimeOffset|Represents the date and time when an entity was created. Read-only.|
|id|String| The identifier of this instance of an authentication method registered to this user. Read-only. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.authenticationMethod",
  "keyProperty": "id"
}-->

```json
{
  "@odata.type": "#microsoft.graph.authenticationMethod",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "authenticationMethod resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
