---
title: "samlOrWsFedExternalDomainFederation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# samlOrWsFedExternalDomainFederation resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List samlOrWsFedExternalDomainFederations](../api/samlorwsfedexternaldomainfederation-list.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) collection|Get a list of the [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) objects and their properties.|
|[Create samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-create.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Create a new [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Get samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-get.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Read the properties and relationships of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Update samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-update.md)|[samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md)|Update the properties of a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[Delete samlOrWsFedExternalDomainFederation](../api/samlorwsfedexternaldomainfederation-delete.md)|None|Deletes a [samlOrWsFedExternalDomainFederation](../resources/samlorwsfedexternaldomainfederation.md) object.|
|[List domains](../api/samlorwsfedexternaldomainfederation-list-domains.md)|[externalDomainName](../resources/externaldomainname.md) collection|Get the externalDomainName resources from the domains navigation property.|
|[Create externalDomainName](../api/samlorwsfedexternaldomainfederation-post-domains.md)|[externalDomainName](../resources/externaldomainname.md)|Create a new externalDomainName object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description** Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|id|String|**TODO: Add Description** Inherited from [identityProviderBase](../resources/identityproviderbase.md).|
|issuerUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|metadataExchangeUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|passiveSignInUri|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|
|preferredAuthenticationProtocol|authenticationProtocol|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md). The possible values are: `wsFed`, `saml`, `unknownFutureValue`.|
|signingCertificate|String|**TODO: Add Description** Inherited from [samlOrWsFedProvider](../resources/samlorwsfedprovider.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|domains|[externalDomainName](../resources/externaldomainname.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.samlOrWsFedExternalDomainFederation",
  "baseType": "Microsoft.DirectoryServices.samlOrWsFedProvider",
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

