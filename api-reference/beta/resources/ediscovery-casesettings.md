---
title: "caseSettings resource type"
description: "Contains settings for an eDiscovery case."
author: "mahage-msft"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# caseSettings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings for an eDiscovery case. For details, see [Configure search and analytics settings in Advanced eDiscovery](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get settings](../api/ediscovery-casesettings-get.md)|[microsoft.graph.ediscovery.caseSettings](../resources/ediscovery-casesettings.md)|Read the properties and relationships of a [microsoft.graph.ediscovery.caseSettings](../resources/ediscovery-casesettings.md) object.|
|[Update settings](../api/ediscovery-casesettings-update.md)|[microsoft.graph.ediscovery.caseSettings](../resources/ediscovery-casesettings.md)|Update the properties of a [microsoft.graph.ediscovery.caseSettings](../resources/ediscovery-casesettings.md) object.|
|[Reset to default](../api/ediscovery-casesettings-resettodefault.md)|None|Reset all settings to the default values.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|Id|String|The ID of the eDiscovery case. Inherited from [entity](../resources/entity.md).|
|ocr|[microsoft.graph.ediscovery.ocrSettings](../resources/ediscovery-ocrsettings.md)|The OCR (Optical Character Recognition) settings for the case.|
|redundancyDetection|[microsoft.graph.ediscovery.redundancyDetectionSettings](../resources/ediscovery-redundancydetectionsettings.md)|The redundancy (near duplicate and email threading) detection settings for the case.|
|topicModeling|[microsoft.graph.ediscovery.topicModelingSettings](../resources/ediscovery-topicmodelingsettings.md)|The article Modeling (Themes) settings for the case.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.caseSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.caseSettings",
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
