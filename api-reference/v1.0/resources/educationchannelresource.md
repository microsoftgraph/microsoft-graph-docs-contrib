---
title: "educationChannelResource resource type"
description: "A subclass of educationResource that represents a Microsoft Teams channel in the class."
ms.localizationpriority: medium
author: "v-rmanda"
ms.prod: "education"
doc_type: resourcePageType
---

# educationChannelResource resource type

Namespace: microsoft.graph

[!INCLUDE [v1.0-disclaimer](../../includes/v1.0-disclaimer.md)]

A subclass of [educationResource](educationresource.md) that represents a Microsoft Teams channel in the class. Only channels from the same class can be attached to the module.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|url|String|URL of the channel resource.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.educationChannelResource"
}-->

```json
{
  "url": "String"
}
```
