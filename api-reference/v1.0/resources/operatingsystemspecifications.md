---
title: "operatingSystemSpecifications resource type"
description: "Contains the platform and version details of the operating system."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: low
ms.subservice: "security"
doc_type: resourcePageType
---

# operatingSystemSpecifications resource type

Namespace: microsoft.graph

Contains the platform and version details of the operating system.

## Properties

| Property                | Type   | Description                                          |
| :---------------------- | :----- | :--------------------------------------------------- |
| operatingSystemPlatform | String | The platform of the operating system (for example, "Windows"). |
| operatingSystemVersion  | String | The version string of the operating system.          |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.operatingSystemSpecifications",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.operatingSystemSpecifications",
  "operatingSystemPlatform": "String",
  "operatingSystemVersion": "String"
}
```
