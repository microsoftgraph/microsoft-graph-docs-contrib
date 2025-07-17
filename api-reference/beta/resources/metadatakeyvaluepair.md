---
title: 'metaDataKeyValuePair resource type'
description: Represents a key-value (object) pair of the metadata.
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 07/22/2024
---

# metaDataKeyValuePair resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a key-value (object) pair of the metadata.

## Properties

| Property | Type                         | Description                                  |
| :------- | :--------------------------- | :------------------------------------------- |
| key      | String                       | Key of the metadata.                        |
| value    | [Json](../resources/json.md) | Value of the metadata. Should be an object. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.metaDataKeyValuePair"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.metaDataKeyValuePair",
  "key": "String",
  "value": {
    "@odata.type": "microsoft.graph.Json"
  }
}
```
