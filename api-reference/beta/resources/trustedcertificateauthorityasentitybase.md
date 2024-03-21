---
title: "trustedCertificateAuthorityAsEntityBase resource type"
description: "An abstract base type that represents the trusted certificate authority types for the tenant."
author: "madansr7"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# trustedCertificateAuthorityAsEntityBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract base type that represents the trusted certificate authority types for the tenant.

Base type of [certificateBasedApplicationConfiguration](../resources/certificatebasedapplicationconfiguration.md).

Inherits from [directoryObject](../resources/directoryobject.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|The unique identifier of the object. Inherited from [directoryObject](../resources/directoryobject.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|trustedCertificateAuthorities|[certificateAuthorityAsEntity](../resources/certificateauthorityasentity.md) collection|Collection of trusted certificate authorities.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trustedCertificateAuthorityAsEntityBase",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustedCertificateAuthorityAsEntityBase",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)"
}
```
