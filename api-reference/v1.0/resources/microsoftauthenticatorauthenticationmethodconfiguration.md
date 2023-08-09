---
title: "microsoftAuthenticatorAuthenticationMethodConfiguration resource type"
description: "Represents a Microsoft Authenticator authentication methods policy."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# microsoftAuthenticatorAuthenticationMethodConfiguration resource type
Namespace: microsoft.graph

Represents a Microsoft Authenticator authentication methods policy. Authentication methods policies define configuration settings and users or groups that are enabled to use the authentication method.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/microsoftauthenticatorauthenticationmethodconfiguration-get.md)|[microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md)|Read the properties and relationships of a microsoftAuthenticatorAuthenticationMethodConfiguration object.|
|[Update](../api/microsoftauthenticatorauthenticationmethodconfiguration-update.md)|[microsoftAuthenticatorAuthenticationMethodConfiguration](../resources/microsoftauthenticatorauthenticationmethodconfiguration.md)|Update the properties of a microsoftAuthenticatorAuthenticationMethodConfiguration object.|
|[Delete](../api/microsoftauthenticatorauthenticationmethodconfiguration-delete.md)|None|Reverts the microsoftAuthenticatorAuthenticationMethodConfiguration object to its default configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The authentication method policy identifier.|
|featureSettings|[microsoftAuthenticatorFeatureSettings](../resources/microsoftauthenticatorfeaturesettings.md)|A collection of Microsoft Authenticator settings such as application context and location context, and whether they are enabled for all users or specific users only.|
|state|authenticationMethodState|Possible values are: `enabled`, `disabled`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[microsoftAuthenticatorAuthenticationMethodTarget](../resources/microsoftauthenticatorauthenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method. Expanded by default.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.microsoftAuthenticatorAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "featureSettings": {
    "@odata.type": "microsoft.graph.microsoftAuthenticatorFeatureSettings"
  }
}
```

