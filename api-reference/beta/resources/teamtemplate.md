---
title: "teamTemplate resource type"
description: "Team Template resource type"
author: "CharlieKB"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# teamTemplate resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamTemplates](../api/teamwork-list-teamtemplates.md)|[teamTemplate](../resources/teamtemplate.md) collection|Get a list of the [teamTemplate](../resources/teamtemplate.md) objects and their properties.|
|[Create teamTemplate](../api/teamwork-post-teamtemplates.md)|[teamTemplate](../resources/teamtemplate.md)|Create a new [teamTemplate](../resources/teamtemplate.md) object.|
|[Get teamTemplate](../api/teamtemplate-get.md)|[teamTemplate](../resources/teamtemplate.md)|Read the properties and relationships of a [teamTemplate](../resources/teamtemplate.md) object.|
|[Update teamTemplate](../api/teamtemplate-update.md)|[teamTemplate](../resources/teamtemplate.md)|Update the properties of a [teamTemplate](../resources/teamtemplate.md) object.|
|[Delete teamTemplate](../api/teamwork-delete-teamtemplates.md)|None|Deletes a [teamTemplate](../resources/teamtemplate.md) object.|
|[List definitions](../api/teamtemplate-list-definitions.md)|[teamTemplateDefinition](../resources/teamtemplatedefinition.md) collection|Get the teamTemplateDefinition resources from the definitions navigation property.|
|[Add teamTemplateDefinition](../api/teamtemplate-post-definitions.md)|[teamTemplateDefinition](../resources/teamtemplatedefinition.md)|Add definitions by posting to the definitions collection.|
|[Remove definitions](../api/teamtemplate-delete-definitions.md)|None|Remove a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|definitions|[teamTemplateDefinition](../resources/teamtemplatedefinition.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamTemplate",
  "id": "String (identifier)"
}
```

