---
title: 'metaDataKeyStringPair resource type'
description: Represents a key-value (string) pair of the metadata.
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# metaDataKeyStringPair resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key-value (string) pair of the metadata.

## Properties

| Property | Type   | Description                                 |
| :------- | :----- | :------------------------------------------ |
| key      | String | Key of the meta data.                       |
| value    | String | Value of the meta data. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.metaDataKeyStringPair"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.metaDataKeyStringPair",
  "key": "String",
  "value": "String"
}
```
