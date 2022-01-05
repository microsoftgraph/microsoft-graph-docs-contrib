---
title: "samlOrWsFedExternalDomainFederation resource type"
description: "Represents SAML/WS-Fed federation set up with an Azure Active Directory (Azure AD) tenant"
author: "namkedia"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# samlOrWsFedExternalDomainFederation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource that allows an Azure Active Directory (Azure AD) tenant to set up federation with another organization whose identity provider (IdP) supports either the SAML or WS-Fed protocol. This enables the Azure AD tenant to allow guest users to access its resources. For more information on SAML/WS-Fed IdP federation, see [Federation with SAML/WS-Fed identity providers for guest users](/azure/active-directory/external-identities/direct-federation).

Inherits from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List samlOrWsFedExternalDomainFederations](../api/samlorwsfedexternaldomainfederation-list.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) collection|Get a list of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) objects and their properties.|
|[Create samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-post.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Create a new [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Get samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-get.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Read the properties and relationships of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Update samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-update.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Update the properties of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Delete samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-delete.md)|None|Deletes a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[List domains](../api/samlorwsfedexternaldomainfederation-list-domains.md)|[externalDomainName](../resources/externaldomainname.md) collection|Get the externalDomainName resources from the domains navigation property.|
|[Create externalDomainName](../api/samlorwsfedexternaldomainfederation-post-domains.md)|[externalDomainName](../resources/externaldomainname.md)|Create a new externalDomainName object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the SAML or WS-Fed based IdP. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [entity](../resources/entity.md).|
|issuerUri|String|Issuer URI of the federation server. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to Azure AD services. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|String|Preferred authentication protocol. Supported values include `saml` or `wsfed`. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class.  <br/><br/> This property is used in the following scenarios: <ul><li> if a rollover is required outside of the autorollover update <li>a new federation service is being set up <li> if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated. </ul> <br/><br/> Azure AD updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Azure AD monitors the metadata daily and will update the federation settings for the domain when a new certificate is available. <br/><br/> Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|domains|[externalDomainName](../resources/externaldomainname.md) collection|Collection of domain names of the external organizations that the tenant is federating with. Supports `$filter` (`eq`).|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.samlOrWsFedExternalDomainFederation",
  "baseType": "microsoft.graph.samlOrWsFedProvider",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.samlOrWsFedExternalDomainFederation",
  "id": "String (identifier)",
  "displayName": "String",
  "issuerUri": "String",
  "metadataExchangeUri": "String",
  "signingCertificate": "String",
  "passiveSignInUri": "String",
  "preferredAuthenticationProtocol": "String"
}
```
