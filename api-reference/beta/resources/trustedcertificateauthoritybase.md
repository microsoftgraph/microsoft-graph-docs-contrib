---
title: "trustedCertificateAuthorityBase resource type"
description: "An abstract type that represents a list of certificate authorities (CAs) that are permitted to issue certificates for authentication."
author: "atastrophic"
ms.localizationpriority: medium
ms.date: 12/31/2024
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# trustedCertificateAuthorityBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a list of certificate authorities (CAs) that are permitted to issue certificates for authentication.

Inherits from [directoryObject](../resources/directoryobject.md).

## Methods
None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|certificateAuthorities|[certificateAuthority](../resources/certificateauthority.md) collection | Multi-value property that represents a list of trusted certificate authorities.|
|deletedDateTime|DateTimeOffset|Date and time when this object was deleted. Always `null` when the object hasn't been deleted. Inherited from [directoryObject](../resources/directoryobject.md).|
|id|String|The unique identifier for the **trustedCertificateAuthorityBase** object. Inherited from [directoryObject](../resources/directoryobject.md).|

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
