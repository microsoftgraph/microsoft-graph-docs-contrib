---
title: "teamwork resource type"
description: "Team work resource type"
author: "CharlieKB"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# teamwork resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get teamwork](../api/teamwork-get.md)|[teamwork](../resources/teamwork.md)|Read the properties and relationships of a [teamwork](../resources/teamwork.md) object.|
|[Update teamwork](../api/teamwork-update.md)|[teamwork](../resources/teamwork.md)|Update the properties of a [teamwork](../resources/teamwork.md) object.|
|[List teamTemplates](../api/teamwork-list-teamtemplates.md)|[teamTemplate](../resources/teamtemplate.md) collection|Get the teamTemplate resources from the teamTemplates navigation property.|
|[Create teamTemplate](../api/teamwork-post-teamtemplates.md)|[teamTemplate](../resources/teamtemplate.md)|Create a new teamTemplate object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|devices|[teamworkDevice](../resources/teamworkdevice.md) collection|**TODO: Add Description**|
|teamTemplates|[teamTemplate](../resources/teamtemplate.md) collection|**TODO: Add Description**|
|workforceIntegrations|[workforceIntegration](../resources/workforceintegration.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.teamwork",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamwork",
  "id": "String (identifier)"
}
```

