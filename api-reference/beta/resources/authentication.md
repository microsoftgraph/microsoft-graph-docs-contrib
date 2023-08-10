---
title: "authentication resource type"
description: "Exposes relationships that represent the authentication methods supported by Azure AD that can be configured for users."
author: "jpettere"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes authentication sign-in preferences and relationships that represent the authentication methods supported by Azure AD that can be configured for users.

Inherits from [entity](entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get authentication sign-in preferences](../api/authentication-get.md)|[authentication](../resources/authentication.md)|Get the authentication sign-in preferences of a user. This includes whether the user is enabled for system preferred authentication and the users preferred multi-factor authentication method.|
|[Update authentication sign-in preferences](../api/authentication-update.md)|[authentication](../resources/authentication.md)|Update the authentication sign-in preferences of a user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the **authentication**.|
|signInPreferences|[signInPreferences](../resources/signinpreferences.md)|The settings and preferences for to the sign-in experience of a user.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|emailMethods|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|Represents the email addresses registered to a user for authentication. |
|fido2Methods|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Represents the FIDO2 security keys registered to a user for authentication.|
|methods|[authenticationMethod](../resources/authenticationmethod.md) collection| Represents all authentication methods registered to a user.|
|microsoftAuthenticatorMethods|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection| The details of the Microsoft Authenticator app registered to a user for authentication. |
|passwordlessMicrosoftAuthenticatorMethods|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|Represents the Microsoft Authenticator Passwordless Phone Sign-in methods registered to a user for authentication.|
|passwordMethods|[passwordAuthenticationMethod](../resources/passwordauthenticationmethod.md) collection|Represents the details of the password authentication method registered to a user for authentication.|
|phoneMethods|[phoneAuthenticationMethod](../resources/phoneauthenticationmethod.md) collection|Represents the phone registered to a user for authentication. |
|temporaryAccessPassMethods|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) collection|Represents a Temporary Access Pass registered to a user for authentication through time-limited passcodes.|
|windowsHelloForBusinessMethods|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) collection|Represents the Windows Hello for Business authentication method registered to a user for authentication.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authentication",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authentication",
  "id": "String (identifier)",
  "signInPreferences": {
    "@odata.type": "microsoft.graph.signInPreferences"
  }
}
```
