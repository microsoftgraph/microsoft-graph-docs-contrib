---
title: "trustFrameworkKeySet resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "valnav"
ms.prod: "microsoft-identity-platform"
doc_type: "resourcePageType"
---

# trustFrameworkKeySet resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get trustFrameworkKeySet](../api/trustframeworkkeyset-get.md) | [trustFrameworkKeySet](trustframeworkkeyset.md) | Read properties and relationships of trustFrameworkKeySet object. |
| [Update](../api/trustframeworkkeyset-update.md) | [trustFrameworkKeySet](trustframeworkkeyset.md) | Update trustFrameworkKeySet object. |
| [Delete](../api/trustframeworkkeyset-delete.md) | None | Delete trustFrameworkKeySet object. |
|[Generatekey](../api/trustframeworkkeyset-generatekey.md)|[trustFrameworkKey](trustframeworkkey.md)| Generate a key in key set. |
|[Getactivekey](../api/trustframeworkkeyset-getactivekey.md)|[trustFrameworkKey](trustframeworkkey.md)| Get currently active key in the keyset. |
|[Uploadcertificate](../api/trustframeworkkeyset-uploadcertificate.md)|[trustFrameworkKey](trustframeworkkey.md)| Upload a X.509 certificate. |
|[Uploadpkcs12](../api/trustframeworkkeyset-uploadpkcs12.md)|[trustFrameworkKey](trustframeworkkey.md)| Upload a PKCS12 format certificate. |
|[Uploadsecret](../api/trustframeworkkeyset-uploadsecret.md)|[trustFrameworkKey](trustframeworkkey.md)| Upload a string based secret. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String| Read-only.|
|keys|[trustFrameworkKey](trustframeworkkey.md) collection||

## Relationships

None

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.trustFrameworkKeySet",
  "baseType": "",
  "keyProperty": "id"
}-->

```json
{
  "id": "String (identifier)",
  "keys": [{"@odata.type": "microsoft.graph.trustFrameworkKey"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "trustFrameworkKeySet resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->