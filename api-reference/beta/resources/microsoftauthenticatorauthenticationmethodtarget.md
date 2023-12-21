---
title: "microsoftAuthenticatorAuthenticationMethodTarget resource type"
description: "A collection of groups enabled to use Microsoft Authenticator authentication methods policy."
author: "mjsantani"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodTarget resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups enabled to use [Microsoft Authenticator authentication methods policy](../resources/microsoftAuthenticatorAuthenticationMethodConfiguration.md) in Microsoft Entra ID.  Inherits from [authenticationMethodTarget](authenticationMethodTarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMode|microsoftAuthenticatorAuthenticationMode|Determines which types of notifications can be used for sign-in. The possible values are: `deviceBasedPush` (passwordless only), `push`, and `any`.|
|id|String|Object identifier of a Microsoft Entra user or group. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md).|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md). **Not supported**. |
|targetType|authenticationMethodTargetType| Possible values are: `group`, and `unknownFutureValue`. From December 2022, targeting individual users using `user` is no longer recommended. Existing targets remain but we recommend moving the individual users to a targeted group. Inherited from [authenticationMethodTarget](authenticationMethodTarget.md).|
|numberMatchingRequiredState (deprecated)|advancedConfigState|Requires number matching for MFA notifications. Value is ignored for phone sign-in notifications. Possible values are: `enabled`, `disabled`, `default`.|
|displayAppInformationRequiredState (deprecated)|advancedConfigState|Determines whether the user is shown more context in their Authenticator app notification. In the body of the Authenticator notification, the user is shown the app they're signing into along with the location that the authentication request originated from. Possible values are: `enabled`, `disabled`, `default`.|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
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
  "authenticationMode": "String",
  "numberMatchingRequiredState": "String",
  "displayAppInformationRequiredState": "String"
}

```
