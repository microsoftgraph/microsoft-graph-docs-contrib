---
title: "microsoftAuthenticatorAuthenticationMethodTarget resource type"
description: "A collection of users or groups enabled to use Microsoft Authenticator authentication methods policy."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodTarget resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of users or groups enabled to use [Microsoft Authenticator authentication methods policy](../resources/microsoftAuthenticatorAuthenticationMethodConfiguration.md) in Azure AD.  Inherits from [authenticationMethodTarget](authenticationMethodTarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMode|microsoftAuthenticatorAuthenticationMode|Determines which types of notifications can be used for sign-in. The possible values are: `deviceBasedPush` (passwordless only), `push`, and `any`.|
|id|String|Object identifier of an Azure AD user or group. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md).|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md). *Not supported*. |
|targetType|authenticationMethodTargetType| The possible values are: `user`, `group`, and `unknownFutureValue`. Inherited from [authenticationMethodTarget](authenticationMethodTarget.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "baseType": "microsoft.graph.authenticationMethodTarget",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodTarget",
  "targetType": "String",
  "id": "String (identifier)",
  "isRegistrationRequired": "Boolean",
  "authenticationMode": "String"
}

```
