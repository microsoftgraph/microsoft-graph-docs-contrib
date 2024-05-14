---
title: "certificateBasedApplicationConfiguration resource type"
description: "Represents a configuration of trusted certificate authorities for certificates that can be assigned to apps and service principals in the tenant."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# certificateBasedApplicationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a configuration of trusted certificate authorities for certificates that can be assigned to apps and service principals in the tenant.

Inherits from [trustedCertificateAuthorityAsEntityBase](../resources/trustedcertificateauthorityasentitybase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List certificateBasedApplicationConfigurations](../api/certificateauthoritypath-list-certificatebasedapplicationconfigurations.md)|[certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) collection|Get a list of the [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) objects and their properties.|
|[Create certificateBasedApplicationConfiguration](../api/certificateauthoritypath-post-certificatebasedapplicationconfigurations.md)|[certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md)|Create a new [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.|
|[Get certificateBasedApplicationConfiguration](../api/certificatebasedapplicationconfiguration-get.md)|[certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md)|Read the properties and relationships of a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.|
|[Update certificateBasedApplicationConfiguration](../api/certificatebasedapplicationconfiguration-update.md)|[certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md)|Update the properties of a [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [trustedCertificateAuthorityAsEntityBase](../resources/trustedcertificateauthorityasentitybase.md).|
|description|String|The description of the trusted certificate authorities.|
|displayName|String|The display name of the trusted certificate authorities.|
|id|String|The unique identifier for the trusted certificate authorities. Inherited from [trustedCertificateAuthorityAsEntityBase](../resources/trustedcertificateauthorityasentitybase.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|trustedCertificateAuthorities|[certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) collection|The collection of certificate authorities and their configuration. Inherited from [trustedCertificateAuthorityAsEntityBase](../resources/trustedcertificateauthorityasentitybase.md). Supports `$expand`. <br/><br/> A maximum of 10 trusted authorities are allowed in this collection.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.certificateBasedApplicationConfiguration",
  "baseType": "microsoft.graph.trustedCertificateAuthorityAsEntityBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.certificateBasedApplicationConfiguration",
  "deletedDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)"
}
```
