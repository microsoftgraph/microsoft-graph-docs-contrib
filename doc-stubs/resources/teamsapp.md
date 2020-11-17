---
title: "teamsApp resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsApp resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsApp](../api/teamsappinstallation-list-teamsapp.md)|[teamsApp](../resources/teamsapp.md) collection|Get the teamsApp resources from the teamsApp navigation property.|
|[Add teamsApp](../api/teamsappinstallation-post-teamsapp.md)|[teamsApp](../resources/teamsapp.md)|Add teamsApp by posting to the teamsApp collection.|
|[Remove teamsApp](../api/teamsappinstallation-delete-teamsapp.md)|None|Remove a [teamsApp](../resources/teamsapp.md) object.|
|[List teamsApps](../api/teamsapp-list.md)|[teamsApp](../resources/teamsapp.md) collection|Get a list of the [teamsApp](../resources/teamsapp.md) objects and their properties.|
|[Create teamsApp](../api/teamsapp-create.md)|[teamsApp](../resources/teamsapp.md)|Create a new [teamsApp](../resources/teamsapp.md) object.|
|[Get teamsApp](../api/teamsapp-get.md)|[teamsApp](../resources/teamsapp.md)|Read the properties and relationships of a [teamsApp](../resources/teamsapp.md) object.|
|[Update teamsApp](../api/teamsapp-update.md)|[teamsApp](../resources/teamsapp.md)|Update the properties of a [teamsApp](../resources/teamsapp.md) object.|
|[Delete teamsApp](../api/teamsapp-delete.md)|None|Deletes a [teamsApp](../resources/teamsapp.md) object.|
|[List appDefinitions](../api/teamsapp-list-appdefinitions.md)|[teamsAppDefinition](../resources/teamsappdefinition.md) collection|Get the teamsAppDefinition resources from the appDefinitions navigation property.|
|[Add appDefinitions](../api/teamsapp-post-appdefinitions.md)|[teamsAppDefinition](../resources/teamsappdefinition.md)|Add appDefinitions by posting to the appDefinitions collection.|
|[Remove appDefinitions](../api/teamsapp-delete-appdefinitions.md)|None|Remove a [teamsAppDefinition](../resources/teamsappdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|**TODO: Add Description**|
|distributionMethod|teamsAppDistributionMethod|**TODO: Add Description**. Possible values are: `store`, `organization`, `sideloaded`, `unknownFutureValue`.|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|name|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|appDefinitions|[teamsAppDefinition](../resources/teamsappdefinition.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsApp",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsApp",
  "id": "String (identifier)",
  "externalId": "String",
  "name": "String",
  "displayName": "String",
  "distributionMethod": "String"
}
```

