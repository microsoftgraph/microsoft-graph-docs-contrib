---
title: "teamsAppDashboardCardIcon resource type"
description: "Represents a configuration for the dashboard card's icon of Teams App"
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashboardCardIcon resource type

Namespace: microsoft.graph

## Properties

### teamsAppDashboardCardIcon

| Property | Type | Description |
| -------- | ---- | ----------- |
| `iconUrl` | `string` |  The icon for the card, to be displayed in the toolbox and card bar, represented as URL. Recommended size for raster images is 28x28 pixels. If this field has a value, `officeFabricIconFontName` will be ignored. |
| `officeUIFabricIconName` | `string` | Office UI Fabric/Fluent UI icon friendly name for the card. This value will be used if 'iconUrl' is not specified. Example: `officeUIFabricIconName: 'Search'` |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardIcon"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardIcon",
 
}
```
