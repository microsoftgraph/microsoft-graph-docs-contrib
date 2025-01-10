---
title: "educationChannelResource resource type"
description: "A subclass of educationResource that represents a Microsoft Teams channel in the class."
ms.localizationpriority: medium
author: "cristobal-buenrostro"
ms.subservice: "education"
doc_type: resourcePageType
ms.date: 07/23/2024
---

# educationChannelResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A subclass of [educationResource](educationresource.md) that represents a Microsoft Teams channel in the class. Only channels from the same class can be attached to the module.

## Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|url|String|URL of the channel resource.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
