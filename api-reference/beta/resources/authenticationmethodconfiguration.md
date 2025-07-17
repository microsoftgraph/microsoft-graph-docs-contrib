---
title: "authenticationMethodConfigurations"
description: "An abstract type that represents the settings for each authentication method."
author: "jpettere"
ms.reviewer: intelligentaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/01/2024
---

# authenticationMethodConfiguration resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the settings for each authentication method. It has the configuration of whether a specific authentication method is enabled or disabled for the tenant and which users and groups can register and use that method.

The following authentication methods are derived from the **authenticationMethodConfiguration** resource type:
+ [emailAuthenticationMethodConfiguration](emailauthenticationmethodconfiguration.md)
+ [externalAuthenticationMethodConfiguration](externalauthenticationmethodconfiguration.md)
+ [fido2AuthenticationMethodConfiguration](fido2authenticationmethodconfiguration.md)
+ [hardwareOathAuthenticationMethodConfiguration](hardwareoathauthenticationmethodconfiguration.md)
+ [microsoftAuthenticatorAuthenticationMethodConfiguration](microsoftauthenticatorauthenticationmethodconfiguration.md)
+ [smsAuthenticationMethodConfiguration](smsauthenticationmethodconfiguration.md)
+ [softwareOathAuthenticationMethodConfiguration](softwareoathauthenticationmethodconfiguration.md)
+ [temporaryAccessPassAuthenticationMethodConfiguration](temporaryaccesspassauthenticationmethodconfiguration.md)
+ [voiceAuthenticationMethodConfiguration](voiceauthenticationmethodconfiguration.md)
+ [x509CertificateAuthenticationMethodConfiguration](x509certificateauthenticationmethodconfiguration.md)
+ [qrCodePinAuthenticationMethodConfiguration](qrcodepinauthenticationmethodconfiguration.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from a policy.|
|id|String|The policy name.|
|state|authenticationMethodState|The state of the policy. Possible values are: `enabled`, `disabled`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
