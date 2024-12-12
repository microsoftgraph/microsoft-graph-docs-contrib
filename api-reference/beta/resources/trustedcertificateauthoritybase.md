---
title: "trustedCertificateAuthorityBase resource type"
description: "An abstract type that represents a list of Certificate Authorities (CAs) that are permitted to issue certificates for authentication."
author: "atastrophic"
ms.localizationpriority: medium
ms.date: 11/24/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# trustedCertificateAuthorityBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a list of Certificate Authorities (CAs) that are permitted to issue certificates for authentication.

Inherits from [directoryObject](../resources/directoryobject.md).

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|certificateAuthorities|[certificateAuthority](../resources/certificateauthority.md) collection | Multi-value property that represents a list of trusted certificate authorities.|
|deletedDateTime|DateTimeOffset|Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|Inherited from [directoryObject](../resources/directoryobject.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trustedCertificateAuthorityBase",
  "baseType": "microsoft.graph.directoryObject",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trustedCertificateAuthorityBase",
  "certificateAuthorities": [{"@odata.type": "microsoft.graph.certificateAuthority"}],
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)"
}
```
