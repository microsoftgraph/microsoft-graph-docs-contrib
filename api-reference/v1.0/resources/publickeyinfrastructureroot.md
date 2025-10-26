---
title: "publicKeyInfrastructureRoot resource type"
description: "The collection of public key infrastructure instances."
author: "vimranga"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/23/2025
---

# publicKeyInfrastructureRoot resource type

Namespace: microsoft.graph

The collection of public key infrastructure instances over different Microsoft Entra features.


Inherits from [entity](../resources/entity.md).


## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the PublicKeyInfrastructure entity. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|certificateBasedAuthConfigurations|[certificateBasedAuthPki](../resources/certificatebasedauthpki.md) collection|The collection of public key infrastructure instances for the certificate-based authentication feature for users.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.publicKeyInfrastructureRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.publicKeyInfrastructureRoot",
  "id": "String (identifier)"
}
```