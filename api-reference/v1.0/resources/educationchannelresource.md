---
title: "educationChannelResource resource type"
description: "A subclass of educationResource that represents a Microsoft Teams channel in the class."
ms.localizationpriority: medium
author: "v-rmanda"
ms.subservice: "education"
doc_type: resourcePageType
---

# educationChannelResource resource type

Namespace: microsoft.graph

A subclass of [educationResource](educationresource.md) that represents a Microsoft Teams channel in the class. Only channels from the same class can be attached to the module.

## Properties

| Property | Type   | Description                  |
| :------- | :----- | :--------------------------- |
| url      | String | URL of the channel resource. |

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
