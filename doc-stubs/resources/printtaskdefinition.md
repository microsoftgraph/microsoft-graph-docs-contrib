---
title: "printTaskDefinition resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# printTaskDefinition resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List printTaskDefinitions](../api/printtaskdefinition-list.md)|[printTaskDefinition](../resources/printtaskdefinition.md) collection|Get a list of the [printTaskDefinition](../resources/printtaskdefinition.md) objects and their properties.|
|[Create printTaskDefinition](../api/printtaskdefinition-create.md)|[printTaskDefinition](../resources/printtaskdefinition.md)|Create a new [printTaskDefinition](../resources/printtaskdefinition.md) object.|
|[Get printTaskDefinition](../api/printtaskdefinition-get.md)|[printTaskDefinition](../resources/printtaskdefinition.md)|Read the properties and relationships of a [printTaskDefinition](../resources/printtaskdefinition.md) object.|
|[Update printTaskDefinition](../api/printtaskdefinition-update.md)|[printTaskDefinition](../resources/printtaskdefinition.md)|Update the properties of a [printTaskDefinition](../resources/printtaskdefinition.md) object.|
|[Delete printTaskDefinition](../api/printtaskdefinition-delete.md)|None|Deletes a [printTaskDefinition](../resources/printtaskdefinition.md) object.|
|[List tasks](../api/printtaskdefinition-list-tasks.md)|[printTask](../resources/printtask.md) collection|Get the printTask resources from the tasks navigation property.|
|[Create printTask](../api/printtaskdefinition-post-tasks.md)|[printTask](../resources/printtask.md)|Create a new printTask object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdBy|[appIdentity](../resources/appidentity.md)|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[printTask](../resources/printtask.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.printTaskDefinition",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.printTaskDefinition",
  "id": "String (identifier)",
  "displayName": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.appIdentity"
  }
}
```

