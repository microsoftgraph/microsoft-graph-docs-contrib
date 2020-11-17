---
title: "appCatalogs resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# appCatalogs resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List appCatalogs](../api/appcatalogs-list.md)|[appCatalogs](../resources/appcatalogs.md) collection|Get a list of the [appCatalogs](../resources/appcatalogs.md) objects and their properties.|
|[Create appCatalogs](../api/appcatalogs-create.md)|[appCatalogs](../resources/appcatalogs.md)|Create a new [appCatalogs](../resources/appcatalogs.md) object.|
|[Get appCatalogs](../api/appcatalogs-get.md)|[appCatalogs](../resources/appcatalogs.md)|Read the properties and relationships of an [appCatalogs](../resources/appcatalogs.md) object.|
|[Update appCatalogs](../api/appcatalogs-update.md)|[appCatalogs](../resources/appcatalogs.md)|Update the properties of an [appCatalogs](../resources/appcatalogs.md) object.|
|[Delete appCatalogs](../api/appcatalogs-delete.md)|None|Deletes an [appCatalogs](../resources/appcatalogs.md) object.|
|[List teamsApps](../api/appcatalogs-list-teamsapps.md)|[teamsApp](../resources/teamsapp.md) collection|Get the teamsApp resources from the teamsApps navigation property.|
|[Create teamsApps](../api/appcatalogs-post-teamsapps.md)|[teamsApp](../resources/teamsapp.md)|Create a new teamsApp object.|
|[Get teamsApps](../api/appcatalogs-get-teamsapp.md)|[teamsApp](../resources/teamsapp.md)|Read the properties and relationships of a [teamsApp](../resources/teamsapp.md) object.|
|[Update teamsApps](../api/appcatalogs-update-teamsapps.md)|[teamsApp](../resources/teamsapp.md)|Update the properties of a teamsApps object.|
|[Delete teamsApps](../api/appcatalogs-delete-teamsapps.md)|None|Delete a [teamsApp](../resources/teamsapp.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|teamsApps|[teamsApp](../resources/teamsapp.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.appCatalogs",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.appCatalogs",
  "id": "String (identifier)"
}
```

