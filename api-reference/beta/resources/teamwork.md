---
title: "teamwork resource type"
description: "A container for the range of Microsoft Teams functionalities that are available for the organization."
author: "charlieforce"
ms.localizationpriority: medium
ms.prod: "teamwork"
doc_type: resourcePageType
---

# teamwork resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for the range of Microsoft Teams functionalities that are available for the organization. 

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List teamTemplates](../api/teamwork-list-teamtemplates.md)|[teamTemplate](../resources/teamtemplate.md) collection|Get the teamTemplate resources from the teamTemplates navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String| A unique identifier. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|devices|[teamworkDevice](../resources/teamworkdevice.md) collection| The Teams devices provisioned for the tenant.|
|teamTemplates|[teamTemplate](../resources/teamtemplate.md) collection| The teams templates|
|workforceIntegrations|[workforceIntegration](../resources/workforceintegration.md) collection| A workforce integration with shifts.|

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

