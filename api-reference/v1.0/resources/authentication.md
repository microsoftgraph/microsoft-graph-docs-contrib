---
title: "authentication resource type"
description: "Exposes authentication method states for users and relationships that represent the authentication methods supported by Microsoft Entra ID."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: Authentication states
ms.date: 07/22/2024
---

# authentication resource type

Namespace: microsoft.graph

Exposes authentication method states for users and relationships that represent the authentication methods supported by Microsoft Entra ID.

Inherits from [entity](entity.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|emailMethods|[emailAuthenticationMethod](../resources/emailauthenticationmethod.md) collection|The email address registered to a user for authentication. |
|fido2Methods|[fido2AuthenticationMethod](../resources/fido2authenticationmethod.md) collection|Represents the FIDO2 security keys registered to a user for authentication.|
|methods|[authenticationMethod](../resources/authenticationmethod.md) collection| Represents all authentication methods registered to a user.|
|microsoftAuthenticatorMethods|[microsoftAuthenticatorAuthenticationMethod](../resources/microsoftauthenticatorauthenticationmethod.md) collection| The details of the Microsoft Authenticator app registered to a user for authentication. |
|operations|[longRunningOperation](../resources/longrunningoperation.md) collection|Represents the status of a long-running operation, such as a password reset operation.|
|passwordMethods|[passwordAuthenticationMethod](../resources/passwordauthenticationmethod.md) collection|Represents the password registered to a user for authentication. For security, the password itself is never returned in the object, but action can be taken to reset a password.|
|phoneMethods|[phoneAuthenticationMethod](../resources/phoneauthenticationmethod.md) collection|The phone numbers registered to a user for authentication.|
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
  "@odata.type": "#microsoft.graph.authentication"
}
```
