---
title: "authentication resource type"
description: "Exposes authentication method states for users and relationships that represent the authentication methods supported by Microsoft Entra ID."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Authentication method states
---

# authentication resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Exposes authentication method states for users and relationships that represent the authentication methods supported by Microsoft Entra ID. The following authentication methods states are supported:

- A user's sign-in preferences (system-preferred MFA)
- A users's MFA state (per-user MFA)

Inherits from [entity](entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/authentication-get.md)|[authentication](../resources/authentication.md)|Get the authentication states for a user, such as their sign-in preferences and their MFA state.|
|[Update](../api/authentication-update.md)|[authentication](../resources/authentication.md)|Update the authentication states for a user, such as their sign-in preferences and their MFA state.|
|[List hardwareOathMethods](../api/authentication-list-hardwareoathmethods.md)|[hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) collection|List all hardware tokens assigned to a user|
|[Create hardwareOathAuthenticationMethod](../api/authentication-post-hardwareoathmethods.md)|[hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md)|Assign a hardware token to a user without activation.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier. Read-only.|
|requirements|[strongAuthenticationRequirements](../resources/strongauthenticationrequirements.md)|The settings and preferences for per-user Microsoft Entra multifactor authentication.|
|signInPreferences|[signInPreferences](../resources/signinpreferences.md)|The settings and preferences for the sign-in experience of a user. Use this property to configure the user's default multifactor authentication (MFA) method.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|emailMethods|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|Represents the email addresses registered to a user for authentication. |
|fido2Methods|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Represents the FIDO2 security keys registered to a user for authentication.|
|hardwareOathMethods|[hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) collection|The hardware OATH time-based one-time password (TOTP) devices assigned to a user for authentication.|
|methods|[authenticationMethod](../resources/authenticationmethod.md) collection| Represents all authentication methods registered to a user.|
|microsoftAuthenticatorMethods|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection| The details of the Microsoft Authenticator app registered to a user for authentication. |
|operations|[longRunningOperation](../resources/longrunningoperation.md) collection|Represents the status of a long-running operation, such as a password reset operation.|
|passwordlessMicrosoftAuthenticatorMethods|[passwordlessMicrosoftAuthenticatorAuthenticationMethod](../resources/passwordlessmicrosoftauthenticatorauthenticationmethod.md) collection|Represents the Microsoft Authenticator Passwordless Phone Sign-in methods registered to a user for authentication.|
|passwordMethods|[passwordAuthenticationMethod](../resources/passwordauthenticationmethod.md) collection|Represents the details of the password authentication method registered to a user for authentication.|
|phoneMethods|[phoneAuthenticationMethod](../resources/phoneauthenticationmethod.md) collection|Represents the phone registered to a user for authentication. |
|softwareOathMethods|[softwareOathAuthenticationMethod](../resources/softwareoathauthenticationmethod.md) collection|The software OATH time-based one-time password (TOTP) applications registered to a user for authentication.|
|temporaryAccessPassMethods|[temporaryAccessPassAuthenticationMethod](../resources/temporaryaccesspassauthenticationmethod.md) collection|Represents a Temporary Access Pass registered to a user for authentication through time-limited passcodes.|
|windowsHelloForBusinessMethods|[windowsHelloForBusinessAuthenticationMethod](../resources/windowshelloforbusinessauthenticationmethod.md) collection|Represents the Windows Hello for Business authentication method registered to a user for authentication.|

## JSON representation

The following JSON representation shows the resource type.
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
  },
  "requirements": {
    "@odata.type": "microsoft.graph.strongAuthenticationRequirements"
  }
}
```
