---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type"
description: "A collection of groups enabled to use Microsoft Authenticator Passwordless Phone Sign-in authentication methods policy."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget resource type (deprecated)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups enabled to use Microsoft Authenticator Passwordless Phone Sign-in authentication methods policy](../resources/passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration.md) in Microsoft Entra ID.

> [!CAUTION]
> The Microsoft Authenticator Passwordless Phone Sign-in authentication method policy API is deprecated and stopped returning results on December 31, 2020. Please use the new [Microsoft Authenticator authentication method policy](../resources/microsoftAuthenticatorAuthenticationMethodConfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Object ID of a Microsoft Entra user or group.|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method.|
|targetType|authenticationMethodTargetType|Possible values are: `user`, `group`.|
|useForSignIn|Boolean|Determines whether the authentication method can be used to sign in to Microsoft Entra ID.|

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
  "useForSignIn": "Boolean"
  }
```
