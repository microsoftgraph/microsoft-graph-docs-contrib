---
title: "teamsCatalogApp resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsCatalogApp resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List apps](../api/team-list-apps.md)|[teamsCatalogApp](../resources/teamscatalogapp.md) collection|Get the teamsCatalogApp resources from the apps navigation property.|
|[Create apps](../api/team-post-apps.md)|[teamsCatalogApp](../resources/teamscatalogapp.md)|Create a new teamsCatalogApp object.|
|[Update apps](../api/team-update-apps.md)|[teamsCatalogApp](../resources/teamscatalogapp.md)|Update the properties of an apps object.|
|[Get apps](../api/team-get-teamscatalogapp.md)|[teamsCatalogApp](../resources/teamscatalogapp.md)|Read the properties and relationships of a [teamsCatalogApp](../resources/teamscatalogapp.md) object.|
|[Delete apps](../api/team-delete-apps.md)|None|Delete a [teamsCatalogApp](../resources/teamscatalogapp.md) object.|
|[List teamsCatalogApps](../api/teamscatalogapp-list.md)|[teamsCatalogApp](../resources/teamscatalogapp.md) collection|Get a list of the [teamsCatalogApp](../resources/teamscatalogapp.md) objects and their properties.|
|[Create teamsCatalogApp](../api/teamscatalogapp-create.md)|[teamsCatalogApp](../resources/teamscatalogapp.md)|Create a new [teamsCatalogApp](../resources/teamscatalogapp.md) object.|
|[Get teamsCatalogApp](../api/teamscatalogapp-get.md)|[teamsCatalogApp](../resources/teamscatalogapp.md)|Read the properties and relationships of a [teamsCatalogApp](../resources/teamscatalogapp.md) object.|
|[Update teamsCatalogApp](../api/teamscatalogapp-update.md)|[teamsCatalogApp](../resources/teamscatalogapp.md)|Update the properties of a [teamsCatalogApp](../resources/teamscatalogapp.md) object.|
|[Delete teamsCatalogApp](../api/teamscatalogapp-delete.md)|None|Deletes a [teamsCatalogApp](../resources/teamscatalogapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|distributionMethod|teamsAppDistributionMethod|**TODO: Add Description**. Possible values are: `store`, `organization`, `sideloaded`, `unknownFutureValue`.|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsCatalogApp",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsCatalogApp",
  "id": "String (identifier)",
  "externalId": "String",
  "name": "String",
  "distributionMethod": "String"
}
```

