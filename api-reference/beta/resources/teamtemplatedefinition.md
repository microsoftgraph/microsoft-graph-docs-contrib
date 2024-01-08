---
title: "teamTemplateDefinition"
description: "Generic representation of a team template definition for a team with a specific structure and configuration."
author: "Charlieforce"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: resourcePageType
---

# teamTemplateDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Generic representation of a team template definition for a team with a specific structure and configuration.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamTemplateDefinition](../api/teamtemplatedefinition-get.md)|[teamTemplateDefinition](../resources/teamtemplatedefinition.md)|Read the properties and relationships of a [teamTemplateDefinition](../resources/teamtemplatedefinition.md) object.|
| [List teamTemplateDefinitions](../api/teamtemplate-list-definitions.md) | [teamTemplateDefinition](../resources/teamtemplatedefinition.md) collection | List the **teamTemplateDefinition** objects associated with a **teamTemplate**.  |
| [Get teamDefinition](../api/teamtemplatedefinition-get-teamdefinition.md) | [team](../resources/team.md) | Read the properties of the **team** of a **teamTemplateDefinition** object |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|audience|teamTemplateAudience|Describes the audience the team template is available to. The possible values are: `organization`, `user`, `public`, `unknownFutureValue`.|
|categories|String collection|The assigned categories for the team template.|
|description|String|A brief description of the team template as it will appear to the users in Microsoft Teams.|
|displayName|String|The user defined name of the team template.|
|iconUrl|String|The icon url for the team template.|
|id|String|Encoded64 of `templateId` + `audience` + `locale` for the team template. Inherited from [entity](../resources/entity.md).|
|languageTag|String|Language the template is available in.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the user who last modified the team template.|
|lastModifiedDateTime|DateTimeOffset|The date time of when the team template was last modified.|
|parentTemplateId|String|The `templateId` for the team template|
|publisherName|String|The organization which published the team template.|
|shortDescription|String|A short-description of the team template as it will appear to the users in Microsoft Teams.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|teamDefinition|[team](../resources/team.md)|Collection of [channel](../resources/channel.md) objects. A channel represents a topic, and therefore a logical isolation of discussion, within a team.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamtemplatedefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamTemplateDefinition",
  "audience": "String",
  "categories": [
    "String"
  ],
  "description": "String",
  "displayName": "String",
  "iconUrl": "String",
  "id": "String (identifier)",
  "languageTag": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "parentTemplateId": "String",
  "publisherName": "String", 
  "shortDescription": "String"
}
```
## See also

- [team](team.md)
- [teamsTemplate](teamsTemplate.md)
