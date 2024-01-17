---
title: "teamsAppDashBoardCardDefinition resource type"
description: "The dashboard cards details of a teamsApp."
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashBoardCardDefinition resource type

Namespace: microsoft.graph


The dashboard cards details of a [teamsApp](teamsapp.md).

## Properties

A new property "dashboardCards" is being added to the root of the app manifest.
| Property | Type |
| -------- | --- |
| `dashboardCardDefinitions` | `dashboardCardDefinitions[]` |

| Property                  | Type     | Description                                                                                               | Key | Required |
| ------------------------- | ------------------- | ---------------------------------------------------------------------------------------------- | --- | --- |
| `id`                | `string`            | Represents the unique ID for the card. Must be unique inside the app.                                                         | Yes | Yes |
| `displayName`                    | `string`            | Represents the name of the card                                                                | Yes | Yes |
| `description`             | `string`            | Represents the description for the card                                                        | Yes | Yes |
| `pickerGroupId`           | `string`            | Id for the group in the card picker.                                                           | Yes | Yes |
| `icon`                | `dashboardCardIcon` |Configuration for the card's icon to be displayed in the card picker. App's color icon is used ,if neither this or none of its children (iconUrl and officeUIFabricIconName) are specified.                           | Yes | No |
| `contentSource` 			| `dashboardCardContentSource` | Represents a configuration for the source of the card's content 					   | Yes | Yes |
| `defaultSize`             | `dashboardCardSize` | Set the size of the card   | Yes | Yes |                                                                   


### dashboardCardIcon
| Property | Type | Description |
| -------- | ---- | ----------- |
| `iconUrl` | `string` |  The icon for the card, to be displayed in the toolbox and card bar, represented as URL. Recommended size for raster images is 28x28 pixels. If this field has a value, `officeFabricIconFontName` will be ignored. |
| `officeUIFabricIconName` | `string` | Office UI Fabric/Fluent UI icon friendly name for the card. This value will be used if 'iconUrl' is not specified. Example: `officeUIFabricIconName: 'Search'` |

### dashboardCardContentSource

| Property | Type | Description |
| -------- | ---- | ----------- |
| `sourceType` | `dashboardCardContentSourceType` | Represents the type of source that powers the content of the dashboard card. |
| `botConfiguration` | `dashboardCardBotConfiguration` | The configuration for the bot source. Required if `sourceType` is set to `bot`. |

### dashboardCardBotConfiguration
| Property | Type | Description |
| -------- | ---- | ----------- |
| `botId` | `string` | The unique Microsoft app ID for the bot as registered with the Bot Framework |

#### dashboardCardSize
Represents the different rendering sizes for a dashboard card.

| Member              | Description                                                                  |
| ------------------ | ---------------------------------------------------------------------------- |
| `medium` | Renders medium-sized card |
| `large` | Renders large-sized card |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardDefinition",
 
}
```

