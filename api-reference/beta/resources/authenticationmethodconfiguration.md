---
title: "authenticationMethodConfigurations"
description: "authenticationMethodConfigurations object."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: "apiPageType"
---

# authenticationMethodConfiguration resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type that represents the settings for each authentication method. It has the configuration of whether a specific authentication method is enabled or disabled for the tenant and which users and groups can register and use that method.

The following authentication methods are derived from the **authenticationMethodConfiguration** resource type:
+ [emailAuthenticationMethodConfiguration](emailauthenticationmethodconfiguration.md)
+ [fido2AuthenticationMethodConfiguration](fido2authenticationmethodconfiguration.md)
+ [microsoftAuthenticatorAuthenticationMethodConfiguration](microsoftauthenticatorauthenticationmethodconfiguration.md)
+ [voiceAuthenticationMethodConfiguration](voiceauthenticationmethodconfiguration.md)
+ [smsAuthenticationMethodConfiguration](smsauthenticationmethodconfiguration.md)
+ [softwareOathAuthenticationMethodConfiguration](softwareoathauthenticationmethodconfiguration.md)
+ [temporaryAccessPassAuthenticationMethodConfiguration](smsauthenticationmethodconfiguration.md)
+ [x509CertificateAuthenticationMethodConfiguration](x509certificateauthenticationmethodconfiguration.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from a policy.|
|id|String|The policy name.|
|state|authenticationMethodState|The state of the policy. Possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ]
}
```
