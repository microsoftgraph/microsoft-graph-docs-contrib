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
| `icon`                | [teamsAppDashboardCardIcon](../resources/teamsappdashboardcardicon.md) |Configuration for the card's icon to be displayed in the card picker. App's color icon is used ,if neither this or none of its children (iconUrl and officeUIFabricIconName) are specified.                           | Yes | No |
| `contentSource` 			| [teamsAppDashboardCardContentSource](../resources/teamsappdashboardcardcontentsource.md) | Represents a configuration for the source of the card's content 					   | Yes | Yes |
| `defaultSize`             | `dashboardCardSize` | Set the size of the card   | Yes | Yes |                                                                   


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

