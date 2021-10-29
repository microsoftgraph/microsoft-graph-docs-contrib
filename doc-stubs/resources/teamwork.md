---
title: "teamwork resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
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
|[List devices](../api/teamwork-list-devices.md)|[teamworkDevice](../resources/teamworkdevice.md) collection|Get the teamworkDevice resources from the devices navigation property.|
|[Create teamworkDevice](../api/teamwork-post-devices.md)|[teamworkDevice](../resources/teamworkdevice.md)|Create a new teamworkDevice object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|devices|[teamworkDevice](../resources/teamworkdevice.md) collection|**TODO: Add Description**|
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

