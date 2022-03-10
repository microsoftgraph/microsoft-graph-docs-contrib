---
title: "internalDomainFederation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# internalDomainFederation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

*A resource that allows an Azure Active Directory (Azure AD) tenant to set up federation with an on-premises environment. An on-premises environment can be federated with Azure AD and the federation can be used for authentication and authorization. For more information on federation, see [What is federation with Azure AD?](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-fed)*


Inherits from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create internalDomainFederation](../api/domain-post-federationconfiguration.md)|[internalDomainFederation](../resources/internaldomainfederation.md)|Create a new [internalDomainFederation](../resources/internaldomainfederation.md) object.|
|[Get internalDomainFederation](../api/internaldomainfederation-get.md)|[internalDomainFederation](../resources/internaldomainfederation.md)|Read the properties and relationships of an [internalDomainFederation](../resources/internaldomainfederation.md) object.|
|[Update internalDomainFederation](../api/internaldomainfederation-update.md)|[internalDomainFederation](../resources/internaldomainfederation.md)|Update the properties of an [internalDomainFederation](../resources/internaldomainfederation.md) object.|
|[Delete internalDomainFederation](../api/internaldomainfederation-delete.md)|None|Deletes an [internalDomainFederation](../resources/internaldomainfederation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeSignInUri|String|URL of the end point used by active clients when authenticating with domains set up for single sign-on in Azure Active Directory (AAD). Single sign-on is also known as identity federation. Referred to as ActiveLogOnUri in MSOnline PowerShell cmdlets.|
|displayName|String|URI that clients are redirected to when they sign out of AAD services. Referred to as LogOffUri in MSOnline PowerShell cmdlets. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|federatedIdpMfaBehavior|federatedIdpMfaBehavior|Determines whether Azure AD accepts the MFA performed by the identity provider. The possible values are: <br> `acceptIfMfaDoneByFederatedIdp`: accepts MFA if performed by identity provider. If not, triggers Azure MFA. <br> `enforceMfaByFederatedIdp` : accepts MFA if performed by identity provider. If not, redirects request to identity provider to perform MFA. <br> `rejectMfaByFederatedIdp` : rejects MFA if performed by identity provider. Always triggers Azure MFA.<br>**Note**<br> `federatedIdpMfaBehavior` is an evolved version of [`SupportsMfa`](https://docs.microsoft.com/en-us/powershell/module/msonline/set-msoldomainfederationsettings?view=azureadps-1.0) property (supported by MSOnline V1 PowerShell module). Switching between `federatedIdpMfaBehavior` and `SupportsMfa` is not supported. Once `federatedIdpMfaBehavior` property is set to any of the possible values, Azure AD will start ignoring the `SupportsMfa` setting. If the `federatedIdpMfaBehavior` property is never set, Azure AD will continue to honor the `SupportsMfa` setting. If neither `federatedIdpMfaBehavior` nor `SupportsMfa` is set, Azure AD by default will accept MFA performed by identity provider and if not performed, will trigger Azure MFA.|
|id|String|The identifier of the identity provider. Inherited from [entity](../resources/entity.md).|
|isSignedAuthenticationRequestRequired|Boolean|If true, when SAML authentication requests are sent to the federated SAML IDP, Azure AD will sign those requests using the OrgID signing key. If false (default), the SAML authentication requests sent to the federated IDP are not signed.|
|issuerUri|String|Issuer URI of the federation server. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|nextSigningCertificate|String|Next token signing certificate that is used to sign tokens when the primary signing certificate expires. Formatted as Base64 encoded strings of the public portion of the federated IDP's token signing certificate. Needs to be compatible with the X509Certificate2 class. Much like the signingCertificate, the nextSigningCertificate property is used if a rollover is required outside of the auto-rollover update, a new federation service is being set up, or if the new token signing certificate is not present in the federation properties after the federation service certificate has been updated.|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to Azure AD services. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|authenticationProtocol|Preferred authentication protocol. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).The possible values are: `wsFed`, `saml`.|
|promptLoginBehavior|promptLoginBehavior|Sets the preferred behavior for the sign in prompt. This value can set fresh authentication and authentication method and the prompt=login field to the IDP to display a UI for authentication. The possible values are: `translateToFreshPasswordAuthentication`, `nativeSupport`, `disabled`.|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class. <br>This property is used in the following scenarios: <br> - if a rollover is required outside of the autorollover update <br> - a new federation service is being set up <br> - if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated.<br>Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificateUpdateStatus|[signingCertificateUpdateStatus](../resources/signingcertificateupdatestatus.md)|Update status of the signing certificate and the next signing certificate. Formatted as Base64 encoded strings of the public portion of the federated IDP's token signing certificate. Should be compatible with the X509Certificate2 class.|
|signOutUri|String|URI that clients are redirected to when they sign out of AAD services. Referred to as LogOffUri in MSOnline PowerShell cmdlets.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|domains|Collection(microsoft.graph.domain)|Collection of domains that correspond to the  internal federation configuration.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.internalDomainFederation",
  "baseType": "microsoft.graph.samlOrWsFedProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.internalDomainFederation",
  "id": "String (identifier)",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String",
  "activeSignInUri": "String",
  "signOutUri": "String",
  "promptLoginBehavior": "String",
  "isSignedAuthenticationRequestRequired": "Boolean",
  "nextSigningCertificate": "String",
  "signingCertificateUpdateStatus": {
    "@odata.type": "microsoft.graph.signingCertificateUpdateStatus"
  },
  "federatedIdpMfaBehavior": "String"
}
```

