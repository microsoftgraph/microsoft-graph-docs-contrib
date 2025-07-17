---
title: "certificateAuthorityAsEntity resource type"
description: "Represents a trusted certificate authority."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# certificateAuthorityAsEntity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a trusted certificate authority.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/certificatebasedapplicationconfiguration-list-trustedcertificateauthorities.md)|[certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) collection|Get a list of the [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) objects and their properties.|
|[Create](../api/certificatebasedapplicationconfiguration-post-trustedcertificateauthorities.md)|[certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md)|Create a new [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object.|
|[Get](../api/certificateauthorityasentity-get.md)|[certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md)|Read the properties and relationships of a [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object.|
|[Update](../api/certificateauthorityasentity-update.md)|[certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md)|Update the properties of a [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object.|
|[Delete](../api/certificateauthorityasentity-delete.md)|None|Delete a [certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|certificate|Binary|The trusted certificate.|
|id|String|The unique identifier for the certificate authority. Inherited from [entity](../resources/entity.md).|
|isRootAuthority|Boolean|Indicates if the certificate is a root authority. In a [certificateBasedApplicationConfiguration](../resources/certificateBasedApplicationConfiguration.md) object, at least one object in the **trustedCertificateAuthorities** collection must be a root authority. |
|issuer|String|The issuer of the trusted certificate.|
|issuerSubjectKeyIdentifier|String|The subject key identifier of the trusted certificate.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateAuthorityAsEntity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateAuthorityAsEntity",
  "certificate": "String (binary)",
  "id": "String (identifier)",
  "isRootAuthority": "Boolean",
  "issuer": "String",
  "issuerSubjectKeyIdentifier": "String"
}
```
