---
title: "microsoftAuthenticatorAuthenticationMethodTarget resource type"
description: "A collection of groups enabled to use Microsoft Authenticator authentication methods policy."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodTarget resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A collection of groups enabled to use [Microsoft Authenticator authentication methods policy](../resources/microsoftAuthenticatorAuthenticationMethodConfiguration.md) in Azure AD.  Inherits from [authenticationMethodTarget](authenticationMethodTarget.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationMode|microsoftAuthenticatorAuthenticationMode|Determines which types of notifications can be used for sign-in. The possible values are: `deviceBasedPush` (passwordless only), `push`, and `any`.|
|id|String|Object identifier of an Azure AD user or group. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md).|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md). **Not supported**. |
|targetType|authenticationMethodTargetType| Possible values are: `group`, and `unknownFutureValue`. From December 2022, targeting individual users using `user` is no longer recommended. Existing targets will remain but we recommend to move the individual users to a targeted group. Inherited from [authenticationMethodTarget](authenticationMethodTarget.md).|
|numberMatchingRequiredState (deprecated)|advancedConfigState|Requires number matching for MFA notifications. Value is ignored for phone sign-in notifications. Possible values are: `enabled`, `disabled`, `default`.|
|displayAppInformationRequiredState (deprecated)|advancedConfigState|Determines whether the user is shown additional context in their Authenticator app notification. In the body of the Authenticator notification, the user will be shown the app they are signing into along with the location that the authentication request originated from. Possible values are: `enabled`, `disabled`, `default`.|

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
  "authenticationMode": "String",
  "numberMatchingRequiredState": "String",
  "displayAppInformationRequiredState": "String"
}

```
