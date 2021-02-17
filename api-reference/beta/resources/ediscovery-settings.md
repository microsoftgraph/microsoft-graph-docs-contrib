---
title: "settings resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# settings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List settings](../api/settings-list.md)|[settings](../resources/ediscovery-settings.md) collection|Get a list of the [settings](../resources/settings.md) objects and their properties.|
|[Create settings](../api/ediscovery-settings-create.md)|[settings](../resources/ediscovery-settings.md)|Create a new [settings](../resources/ediscovery-settings.md) object.|
|[Get settings](../api/ediscovery-settings-get.md)|[settings](../resources/ediscovery-settings.md)|Read the properties and relationships of a [settings](../resources/ediscovery-settings.md) object.|
|[Update settings](../api/ediscovery-settings-update.md)|[settings](../resources/ediscovery-settings.md)|Update the properties of a [settings](../resources/ediscovery-settings.md) object.|
|[Delete settings](../api/ediscovery-settings-delete.md)|None|Deletes a [settings](../resources/ediscovery-settings.md) object.|
|[resetToDefault](../api/ediscovery-settings-resettodefault.md)|None|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|ocr|[ocrSettings](../resources/ediscovery-ocrsettings.md)|**TODO: Add Description**|
|redundancyDetection|[redundancyDetectionSettings](../resources/ediscovery-redundancydetectionsettings.md)|**TODO: Add Description**|
|topicModeling|[topicModelingSettings](../resources/ediscovery-topicmodelingsettings.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.settings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.settings",
  "id": "String (identifier)",
  "redundancyDetection": {
    "@odata.type": "microsoft.graph.ediscovery.redundancyDetectionSettings"
  },
  "topicModeling": {
    "@odata.type": "microsoft.graph.ediscovery.topicModelingSettings"
  },
  "ocr": {
    "@odata.type": "microsoft.graph.ediscovery.ocrSettings"
  }
}
```

