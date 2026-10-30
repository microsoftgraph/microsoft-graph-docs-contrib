---
title: "currentLabel resource type"
description: "Represents caller-supplied sensitivity label metadata for a content entry."
author: "petercanmakit"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# currentLabel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents caller-supplied sensitivity label metadata in the **sensitivityLabels** collection of [processContentMetadataBase](../resources/processcontentmetadatabase.md) and its derived types.

This type describes label metadata. It doesn't provide operations to apply, remove, or manage sensitivity labels.

When you supply more than one label, include a separate object for each label in the **sensitivityLabels** collection. The collection isn't a single object or a string of comma-separated label identifiers.

## Methods

None.

## Properties

| Property | Type | Description |
| :--- | :--- | :--- |
| applicationMode | [applicationMode](../resources/enums.md#applicationmode-values) | The application mode associated with the sensitivity label. The possible values are: `manual`, `automatic`, `recommended`, `unknownFutureValue`. |
| id | String | The GUID that identifies the sensitivity label. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.currentLabel",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.currentLabel",
  "id": "String",
  "applicationMode": "String"
}
```
