---
title: "samlOrWsFedExternalDomainFederation resource type"
description: "Represents a way to federate your Microsoft Entra tenant with an external organization whose identity provider supports the SAML or WS-Fed protocol."
author: "namkedia"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# samlOrWsFedExternalDomainFederation resource type

Namespace: microsoft.graph

Allows a Microsoft Entra tenant to federate with an external organization whose identity provider (IdP) supports either the SAML or WS-Fed protocol. This enables the Microsoft Entra tenant to allow guest users to access its resources. For more information on SAML or WS-Fed IdP federation, see [Federation with SAML or WS-Fed identity providers for guest users](/azure/active-directory/external-identities/direct-federation).

Inherits from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/samlorwsfedexternaldomainfederation-list.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) collection|Get a list of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) objects and their properties.|
|[Create](../api/samlorwsfedexternaldomainfederation-post.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Create a new [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Get](../api/samlorwsfedexternaldomainfederation-get.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Read the properties and relationships of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Update](../api/samlorwsfedexternaldomainfederation-update.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Update the properties of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Delete](../api/samlorwsfedexternaldomainfederation-delete.md)|None|Deletes a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[List domains](../api/samlorwsfedexternaldomainfederation-list-domains.md)|[externalDomainName](../resources/externaldomainname.md) collection|Get the externalDomainName resources from the domains navigation property.|
|[Create external domain name](../api/samlorwsfedexternaldomainfederation-post-domains.md)|[externalDomainName](../resources/externaldomainname.md)|Create a new externalDomainName object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the SAML or WS-Fed based IdP. Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|The identifier of the identity provider. Inherited from [entity](../resources/entity.md).|
|issuerUri|String|Issuer URI of the federation server. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|URI of the metadata exchange endpoint used for authentication from rich client applications. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|passiveSignInUri|String|URI that web-based clients are directed to when signing in to Microsoft Entra services. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|authenticationProtocol|Preferred authentication protocol. The possible values are: `wsFed`, `saml`, `unknownFutureValue`. Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|signingCertificate|String|Current certificate used to sign tokens passed to the Microsoft identity platform. The certificate is formatted as a Base64 encoded string of the public portion of the federated IdP's token signing certificate and must be compatible with the X509Certificate2 class.  <br/><br/> This property is used in the following scenarios: <ul><li> if a rollover is required outside of the autorollover update <li>a new federation service is being set up <li> if the new token signing certificate isn't present in the federation properties after the federation service certificate has been updated. </ul> <br/><br/> Microsoft Entra ID updates certificates via an autorollover process in which it attempts to retrieve a new certificate from the federation service metadata, 30 days before expiry of the current certificate. If a new certificate isn't available, Microsoft Entra ID monitors the metadata daily and will update the federation settings for the domain when a new certificate is available. <br/><br/> Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|domains|[externalDomainName](../resources/externaldomainname.md) collection|Collection of domain names of the external organizations that the tenant is federating with. Supports `$filter` (`eq`).|

## JSON representation
The following JSON representation shows the resource type.
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
