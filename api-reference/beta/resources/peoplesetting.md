---
title: "peopleSetting resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# peopleSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List peopleSettings](../api/intune-admin-list-people.md)|[peopleSetting](../resources/peoplesetting.md) collection|Get a list of the [peopleSetting](../resources/peoplesetting.md) objects and their properties.|
|[Create peopleSetting](../api/intune-admin-post-people.md)|[peopleSetting](../resources/peoplesetting.md)|Create a new [peopleSetting](../resources/peoplesetting.md) object.|
|[Get peopleSetting](../api/peoplesetting-get.md)|[peopleSetting](../resources/peoplesetting.md)|Read the properties and relationships of a [peopleSetting](../resources/peoplesetting.md) object.|
|[Update peopleSetting](../api/peoplesetting-update.md)|[peopleSetting](../resources/peoplesetting.md)|Update the properties of a [peopleSetting](../resources/peoplesetting.md) object.|
|[Delete peopleSetting](../api/intune-admin-delete-people.md)|None|Delete a [peopleSetting](../resources/peoplesetting.md) object.|
|[List pronounsSettings](../api/organizationsettings-list-pronouns.md)|[pronounsSettings](../resources/pronounssettings.md) collection|Get the pronounsSettings resources from the pronouns navigation property.|
|[Create pronounsSettings](../api/peoplesetting-post-pronouns.md)|[pronounsSettings](../resources/pronounssettings.md)|Create a new pronounsSettings object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|pronouns|[pronounsSettings](../resources/pronounssettings.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.peopleSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.peopleSetting",
  "id": "String (identifier)"
}
```

