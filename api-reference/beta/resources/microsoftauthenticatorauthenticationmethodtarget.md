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
|featureSettings|authenticatorAppFeatureSettings|Determines what additional settings should be applied to Microsoft Authenticator. The possible values are: `requireNumberMatching` (Requires number matching for MFA notifications. Value is ignored for phone sign-in notifications). Nullable.|
|id|String|Object identifier of an Azure AD user or group. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md).|
|isRegistrationRequired|Boolean|Determines whether the user is enforced to register the authentication method. Inherited from [authenticationMethodTarget](authenticationmethodtarget.md). *Not supported*. |
|targetType|authenticationMethodTargetType| The possible values are: `user`, `group`, and `unknownFutureValue`. Inherited from [authenticationMethodTarget](authenticationMethodTarget.md).|
<!--
|numberMatchingRequiredState|advancedConfigState|Requires number matching for MFA notifications. Value is ignored for phone sign-in notifications. Possible values are: `enabled`, `disabled`, `default`.|
|displayLocationInformationRequiredState|advancedConfigState|Determines whether the location of the sign-in should be shown to the user in the body of the notification. Possible values are: `enabled`, `disabled`, `default`.|
|displayAppInformationRequiredState|advancedConfigState|Determines whether the app the user is signing into should be shown to the user in the body of the notification. Possible values are: `enabled`, `disabled`, `default`.|
-->

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
  "featureSettings": "String"
}

```
