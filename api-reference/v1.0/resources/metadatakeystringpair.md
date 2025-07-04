---
title: 'metaDataKeyStringPair resource type'
description: Represents a key-value (string) pair of the metadata.
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 07/22/2024
---

# metaDataKeyStringPair resource type

Namespace: microsoft.graph



Represents a key-value (string) pair of the metadata.

## Properties

| Property | Type   | Description                                 |
| :------- | :----- | :------------------------------------------ |
| key      | String | Key of the meta data.                       |
| value    | String | Value of the meta data. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
