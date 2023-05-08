---
title: "x509CertificateAuthenticationMethodConfiguration resource type"
description: "Represents the details of the Azure AD native Certificate-Based Authentication (CBA) in the tenant, including whether the authentication method is enabled or disabled and the users and groups who can register and use it."
author: "vimrang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# x509CertificateAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the Azure AD native Certificate-Based Authentication (CBA) in the tenant, including whether the authentication method is enabled or disabled and the users and groups who can register and use it.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get x509CertificateAuthenticationMethodConfiguration](../api/x509certificateauthenticationmethodconfiguration-get.md)|[x509CertificateAuthenticationMethodConfiguration](../resources/x509certificateauthenticationmethodconfiguration.md)|Read the properties and relationships of a x509CertificateAuthenticationMethodConfiguration object.|
|[Update x509CertificateAuthenticationMethodConfiguration](../api/x509certificateauthenticationmethodconfiguration-update.md)|None|Update the properties of a x509CertificateAuthenticationMethodConfiguration object.|
|[Delete x509CertificateAuthenticationMethodConfiguration](../api/x509certificateauthenticationmethodconfiguration-delete.md)|None| Delete the tenant-customized x509CertificateAuthenticationMethodConfiguration object and restore the default configuration.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationModeConfiguration|[x509CertificateAuthenticationModeConfiguration](../resources/x509certificateauthenticationmodeconfiguration.md)|Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings. |
|certificateUserBindings|[x509CertificateUserBinding](../resources/x509certificateuserbinding.md) collection|Defines fields in the X.509 certificate that map to attributes of the Azure AD user object in order to bind the certificate to the user. The **priority** of the object determines the order in which the binding is carried out. The first binding that matches will be used and the rest ignored. |
|id|String|The identifier for the authentication method policy. The value is always `X509Certificate`. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|state|authenticationMethodState|The possible values are: `enabled`, `disabled`. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
  "baseType": "microsoft.graph.authenticationMethodConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.x509CertificateAuthenticationMethodConfiguration",
  "id": "String (identifier)",
  "state": "String",
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "certificateUserBindings": [
    {
      "@odata.type": "microsoft.graph.x509CertificateUserBinding"
    }
  ],
  "authenticationModeConfiguration": {
    "@odata.type": "microsoft.graph.x509CertificateAuthenticationModeConfiguration"
  }
}
```

