---
title: "teamsAppDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# teamsAppDefinition resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamsAppDefinition](../api/teamsappinstallation-list-teamsappdefinition.md)|[teamsAppDefinition](../resources/teamsappdefinition.md) collection|Get the teamsAppDefinition resources from the teamsAppDefinition navigation property.|
|[Add teamsAppDefinition](../api/teamsappinstallation-post-teamsappdefinition.md)|[teamsAppDefinition](../resources/teamsappdefinition.md)|Add teamsAppDefinition by posting to the teamsAppDefinition collection.|
|[Remove teamsAppDefinition](../api/teamsappinstallation-delete-teamsappdefinition.md)|None|Remove a [teamsAppDefinition](../resources/teamsappdefinition.md) object.|
|[List teamsAppDefinitions](../api/teamsappdefinition-list.md)|[teamsAppDefinition](../resources/teamsappdefinition.md) collection|Get a list of the [teamsAppDefinition](../resources/teamsappdefinition.md) objects and their properties.|
|[Create teamsAppDefinition](../api/teamsappdefinition-create.md)|[teamsAppDefinition](../resources/teamsappdefinition.md)|Create a new [teamsAppDefinition](../resources/teamsappdefinition.md) object.|
|[Get teamsAppDefinition](../api/teamsappdefinition-get.md)|[teamsAppDefinition](../resources/teamsappdefinition.md)|Read the properties and relationships of a [teamsAppDefinition](../resources/teamsappdefinition.md) object.|
|[Update teamsAppDefinition](../api/teamsappdefinition-update.md)|[teamsAppDefinition](../resources/teamsappdefinition.md)|Update the properties of a [teamsAppDefinition](../resources/teamsappdefinition.md) object.|
|[Delete teamsAppDefinition](../api/teamsappdefinition-delete.md)|None|Deletes a [teamsAppDefinition](../resources/teamsappdefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureADAppId|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|
|requiredResourceSpecificApplicationPermissions|String collection|**TODO: Add Description**|
|teamsAppId|String|**TODO: Add Description**|
|version|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamsAppDefinition",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamsAppDefinition",
  "id": "String (identifier)",
  "teamsAppId": "String",
  "azureADAppId": "String",
  "displayName": "String",
  "version": "String",
  "requiredResourceSpecificApplicationPermissions": [
    "String"
  ]
}
```

