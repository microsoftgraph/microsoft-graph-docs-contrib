---
title: "teamsAppIcon resource type"
description: "Represents an icon associated with an app on Microsoft Teams."
author: "jecha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 03/08/2024
---

# teamsAppIcon resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an icon associated with a [teamsApp](teamsapp.md).

## Methods

| Method                                            | Return Type                                       | Description                                                    | 
| :------------------------------------------------ | :------------------------------------------------ | :------------------------------------------------------------- |
| [Get icon](../api/teamsappicon-get.md)     | [teamsAppIcon](teamsappicon.md)                   | Get an icon associated with a specific version of a Teams app. |
| [Get hosted content](../api/teamworkhostedcontent-get.md) | [teamworkHostedContent](teamworkhostedcontent.md) | Get hosted content (and its bytes) for an icon.        |

## Properties

| Property      | Type                        | Description                                                                             |
| :------------ | :-------------------------- | :-------------------------------------------------------------------------------------- |
| id            | string                      | The unique ID of the app icon.                                                          |
| webUrl        | string                      | The web URL that can be used for downloading the image.                                 |

## Relationships

| Relationship  | Type	                                            | Description                                                                         |
| :------------ | :------------------------------------------------ | :---------------------------------------------------------------------------------- |
| hostedContent | [teamworkHostedContent](teamworkhostedcontent.md) | The contents of the app icon if the icon is hosted within the Teams infrastructure. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppIcon",
  "baseType": "microsoft.graph.entity"
}-->

```json
{
  "id": "string",
  "webUrl": "string"
}
```

## Related content

- [teamsApp](teamsapp.md)
- [teamsAppDefinition](teamsappdefinition.md)
