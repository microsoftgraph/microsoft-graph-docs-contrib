---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type"
description: "A collection of users or groups enabled to use Passwordless Phone Sign-in with Microsoft Authenticator authentication methods policy."
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of users or groups enabled to use Passwordless Phone Sign in with Microsoft Authenticator as part of the [Authentication Method Policy](../resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration.md) in Azure AD.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object Id of an Azure AD user or group.|
|isRegistrationRequired|Boolean|Determines if the user is enforced to register the authentication method.|
|shownContext|authenticatorAppContextType|Possible values are: `location`, `app`.|
|targetType|authenticationMethodTargetType|Possible values are: `user`, `group`.|
|useForSignIn|Boolean|Determines if the authentication method can be used to sign in to Azure AD.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget",
  "id": "String (identifier)",
  "targetType": "String",
  "isRegistrationRequired": "Boolean",
  "useForSignIn": "Boolean",
  "shownContext": "String"
}
```
