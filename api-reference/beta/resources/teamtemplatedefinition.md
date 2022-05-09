---
title: "teamTemplateDefinition"
description: "Team Templates definition"
author: "CharlieKB"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# teamTemplateDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamTemplateDefinitions](../api/teamtemplate-list-definitions.md)|[teamTemplateDefinition](../resources/teamtemplatedefinition.md) collection|Get a list of the [teamTemplateDefinition](../resources/teamtemplatedefinition.md) objects and their properties.|
|[Create teamTemplateDefinition](../api/teamtemplate-post-definitions.md)|[teamTemplateDefinition](../resources/teamtemplatedefinition.md)|Create a new [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.|
|[Get teamTemplateDefinition](../api/teamtemplatedefinition-get.md)|[teamTemplateDefinition](../resources/teamtemplatedefinition.md)|Read the properties and relationships of a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.|
|[Update teamTemplateDefinition](../api/teamtemplatedefinition-update.md)|[teamTemplateDefinition](../resources/teamtemplatedefinition.md)|Update the properties of a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.|
|[Delete teamTemplateDefinition](../api/teamtemplate-delete-definitions.md)|None|Deletes a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.|
|[List team](../api/user-list-joinedteams.md)|[team](../resources/team.md) collection|Get the team resources from the teamDefinition navigation property.|
|[Create team](../api/teamtemplatedefinition-post-teamdefinition.md)|[team](../resources/team.md)|Create a new team object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audience|teamTemplateAudience|**TODO: Add Description**.The possible values are: `organization`, `user`, `public`, `unknownFutureValue`.|
|categories|String collection|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|iconUrl|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|languageTag|String|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/intune-identityset.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|parentTemplateId|String|**TODO: Add Description**|
|publisherName|String|**TODO: Add Description**|
|shortDescription|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|teamDefinition|[team](../resources/team.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamTemplateDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamTemplateDefinition",
  "id": "String (identifier)",
  "parentTemplateId": "String",
  "displayName": "String",
  "languageTag": "String",
  "audience": "String",
  "description": "String",
  "shortDescription": "String",
  "iconUrl": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "publisherName": "String",
  "categories": [
    "String"
  ]
}
```

