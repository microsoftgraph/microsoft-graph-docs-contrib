---
title: "settings resource type"
description: "Settings for an eDiscovery case"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# settings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings for an eDiscovery case.  See [Configure search and analytics settings in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery) to learn more.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get settings](../api/ediscovery-settings-get.md)|[settings](../resources/ediscovery-settings.md)|Read the properties and relationships of a [settings](../resources/ediscovery-settings.md) object.|
|[Update settings](../api/ediscovery-settings-update.md)|[settings](../resources/ediscovery-settings.md)|Update the properties of a [settings](../resources/ediscovery-settings.md) object.|
|[resetToDefault](../api/ediscovery-settings-resettodefault.md)|None|Resets all settings to the default values|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The Id of the eDiscovery case. Inherited from [entity](../resources/ediscovery-entity.md)|
|ocr|[ocrSettings](../resources/ediscovery-ocrsettings.md)|The OCR (Optical Character Recognition) settings for the case.|
|redundancyDetection|[redundancyDetectionSettings](../resources/ediscovery-redundancydetectionsettings.md)|The redundancy (near duplicate and email threading) detection settings for the case.|
|topicModeling|[topicModelingSettings](../resources/ediscovery-topicmodelingsettings.md)|The Topic Modeling (Themes) settings for the case.|

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
