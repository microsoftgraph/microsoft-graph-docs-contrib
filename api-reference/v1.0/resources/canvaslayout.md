---
title: "canvasLayout resource type"
description: "Represents the layout of the content in a given SharePoint page."
author: "sangle7"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# canvasLayout resource type

Namespace: microsoft.graph



Represents the layout of the content in a given SharePoint page.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

| Property | Type   | Description                                                                             |
| :------- | :----- | :-------------------------------------------------------------------------------------- |
| id       | String | The unique identifier of the resource. Inherited from [entity](../resources/entity.md). |

## Relationships

| Relationship       | Type                                                              | Description                                               |
| :----------------- | :---------------------------------------------------------------- | :-------------------------------------------------------- |
| horizontalSections | [horizontalSection](../resources/horizontalsection.md) collection | Collection of horizontal sections on the SharePoint page. |
| verticalSection    | [verticalSection](../resources/verticalsection.md)                | Vertical section on the SharePoint page.                  |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.canvasLayout",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

```json
{
  "@odata.type": "#microsoft.graph.canvasLayout",
  "id": "String (identifier)",
  /* relationships */
  "horizontalSections": {
    "@odata.type": "Collection(microsoft.graph.horizontalSection)"
  },
  "verticalSection": { "@odata.type": "microsoft.graph.verticalSection" }
}
```
