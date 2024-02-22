---
title: "teamsAppDashBoardCardDefinition resource type"
description: "Represents the dashboard cards details of a teamsApp."
author: "ashish-goel"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamsAppDashBoardCardDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the dashboard cards details of a [teamsApp](teamsapp.md).

Inherits from [entity](entity.md).

## Properties

| Property      | Type                                                                                                          | Description                                                                                              |
|:--------------|:--------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------|
| contentSource | [teamsAppDashboardCardContentSource](../resources/teamsappdashboardcardcontentsource.md)                      | The configuration for the source of the card content. Required.                                          |
| defaultSize   | [teamsAppDashboardCardSize](../resources/teamsappdashboardcarddefinition.md#teamsappdashboardcardsize-values) | The size of the card. The possible values are: `medium`, `large`, `unknownFutureValue`. Required.    |
| description   | String                                                                                                        | The description for the card. Required.                                                                  |
| displayName   | String                                                                                                        | The name of the card. Required.                                                                          |
| icon          | [teamsAppDashboardCardIcon](../resources/teamsappdashboardcardicon.md) |Configuration for the display of the icon in the card picker. If neither this nor any of its properties (**iconUrl** and **officeUIFabricIconName**) are specified, the color icon of the app is used. Optional. |
| id            | String                                                                                                        | The unique ID for the card. Must be unique inside the app. Required. Inherited from [entity](entity.md). |
| pickerGroupId | String                                                                                                        | ID for the group in the card picker. Required.                                                           |

### teamsAppDashboardCardSize values

| Member             | Description                                      |
|:-------------------|:-------------------------------------------------|
| medium             | Renders a medium-sized dashboard card.           |
| large              | Renders a large-sized dashboard card.            |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamsAppDashboardCardDefinition",
  "baseType": "microsoft.graph.entity"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDashboardCardDefinition",
  "contentSource": {"@odata.type": "microsoft.graph.teamsAppDashboardCardContentSource"},
  "defaultSize": "String",
  "description": "String",
  "displayName": "String",
  "icon": {"@odata.type": "microsoft.graph.teamsAppDashboardCardIcon"},
  "id": "String (identifier)",
  "pickerGroupId": "String"
}
```
