---
title: "x509CertificateAuthenticationMethodConfiguration resource type"
description: "Represents the details of the Microsoft Entra native Certificate-Based Authentication (CBA) in the tenant, including whether the authentication method is enabled or disabled and the users and groups who can register and use it."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
toc.title: X509 certificate
toc.keywords: [ certificate-based authentication, CBA ]
ms.date: 03/10/2025
---

# x509CertificateAuthenticationMethodConfiguration resource type

Namespace: microsoft.graph

Represents the details of the Microsoft Entra native Certificate-Based Authentication (CBA) in the tenant, including whether the authentication method is enabled or disabled and the users and groups who can register and use it.

Inherits from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/x509certificateauthenticationmethodconfiguration-get.md)|[x509CertificateAuthenticationMethodConfiguration](../resources/x509certificateauthenticationmethodconfiguration.md)|Read the properties and relationships of a x509CertificateAuthenticationMethodConfiguration object.|
|[Update](../api/x509certificateauthenticationmethodconfiguration-update.md)|[x509CertificateAuthenticationMethodConfiguration](../resources/x509certificateauthenticationmethodconfiguration.md)|Update the properties of a x509CertificateAuthenticationMethodConfiguration object.|
|[Delete](../api/x509certificateauthenticationmethodconfiguration-delete.md)|None| Delete the tenant-customized x509CertificateAuthenticationMethodConfiguration object and restore the default configuration.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationModeConfiguration|[x509CertificateAuthenticationModeConfiguration](../resources/x509certificateauthenticationmodeconfiguration.md)|Defines strong authentication configurations. This configuration includes the default authentication mode and the different rules for strong authentication bindings. |
|certificateUserBindings|[x509CertificateUserBinding](../resources/x509certificateuserbinding.md) collection|Defines fields in the X.509 certificate that map to attributes of the Microsoft Entra user object in order to bind the certificate to the user. The **priority** of the object determines the order in which the binding is carried out. The first binding that matches will be used and the rest ignored. |
|crlValidationConfiguration|[x509CertificateCRLValidationConfiguration](../resources/x509certificatecrlvalidationconfiguration.md)|Determines whether certificate based authentication should fail if the issuing CA doesn't have a valid certificate revocation list configured. |
|excludeTargets|[excludeTarget](../resources/excludetarget.md) collection|Groups of users that are excluded from the policy.|
|id|String|The identifier for the authentication method policy. The value is always `X509Certificate`. Inherited from
|state|authenticationMethodState|The possible values are: `enabled`, `disabled`. Inherited from [authenticationMethodConfiguration](../resources/authenticationmethodconfiguration.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|includeTargets|[authenticationMethodTarget](../resources/authenticationmethodtarget.md) collection|A collection of groups that are enabled to use the authentication method.|

The following JSON representation shows the resource type.
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
  "authenticationModeConfiguration": {
    "@odata.type": "microsoft.graph.x509CertificateAuthenticationModeConfiguration"
  },
  "certificateUserBindings": [
    {
      "@odata.type": "microsoft.graph.x509CertificateUserBinding"
    }
  ],
  "crlValidationConfiguration": {
    "@odata.type": "microsoft.graph.x509CertificateCRLValidationConfiguration"
  },
  "excludeTargets": [
    {
      "@odata.type": "microsoft.graph.excludeTarget"
    }
  ],
  "id": "String (identifier)",
  "state": "String"
}
```
