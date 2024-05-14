---
title: "teamsAppDashboardCardIcon resource type"
description: "Represents a configuration for the icon of a dashboard card in a teamsApp."
author: "ashish-goel"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# teamsAppDashboardCardIcon resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a configuration for the icon of a dashboard card in a [teamsApp](teamsapp.md).

## Properties

| Property | Type | Description |
|:-------- |:---- |:----------- |
| iconUrl | String |  The icon for the card, displayed in the toolbox and card bar, is represented as a URL. The preferred size for raster images is 28x28 pixels. If this property has a value, the **officeFabricIconFontName** property is ignored. |
| officeUIFabricIconName | String | The friendly name of the Office UI Fabric/Fluent UI icon for the card that is used when the **iconUrl** property isn't specified. For example, `"officeUIFabricIconName": "Search"`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardIcon"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardIcon",
  "iconUrl": "String",
  "officeUIFabricIconName": "String"
}
```
