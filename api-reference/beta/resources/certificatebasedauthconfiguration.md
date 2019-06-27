---
title: "certificateBasedAuthConfiguration resource type"
description: "Represents a collection of certificate authorities."
localization_priority: Normal
author: "eketo-msft"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# certificateBasedAuthConfiguration resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of certificate authorities. The certificate authorities are used to establish a trusted certificate chain which enables clients to be authenticated by Azure Active Directory with a client certificate.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get certificateBasedAuthConfiguration](../api/certificatebasedauthconfiguration-get.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Read properties and relationships of certificateBasedAuthConfiguration object. |
| [Update](../api/certificatebasedauthconfiguration-update.md) | [certificateBasedAuthConfiguration](certificatebasedauthconfiguration.md) | Update certificateBasedAuthConfiguration object. |
| [Delete](../api/certificatebasedauthconfiguration-delete.md) | None | Delete certificateBasedAuthConfiguration object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|certificateAuthorities|[certificateAuthority](certificateauthority.md) collection|Collection of certificate authorities which creates a trusted certificate chain.|
|id|String|The unique identifier of the certificate based auth configuration. Read-only.|

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.certificateBasedAuthConfiguration",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "certificateAuthorities": {"@odata.type": "collection(microsoft.graph.certificateAuthority)"},
  "id": "String (identifier)"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "certificateBasedAuthConfiguration resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->