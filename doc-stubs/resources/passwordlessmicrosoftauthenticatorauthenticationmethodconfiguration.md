---
title: "passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration resource type"
description: "**TODO: Add Description**"
author: "mmcla"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A representation of a Passwordless Phone Sign-in with Microsoft Authenticator Authentication Methods policy. Authentication Methods policies define configuration settings and users or groups that are enabled to use the authentication method.


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-get.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md)|Read the properties and relationships of a passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration object.|
|[Update](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-update.md)|[passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration.md)|Update the properties of a passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration object.|
|[Delete](../api/passwordlessmicrosoftauthenticatorauthenticationmethodconfiguration-delete.md)|None|Returns the passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration object to its default configuration.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The authentication method policy identifier.|
|state|authenticationMethodState|Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[passwordlessMicrosoftAuthenticatorAuthenticationMethodTarget](../resources/passwordlessmicrosoftauthenticatorauthenticationmethodtarget.md) collection|A collection of users or groups that are enabled to use the authentication method.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.passwordlessMicrosoftAuthenticatorAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String"
}
```

