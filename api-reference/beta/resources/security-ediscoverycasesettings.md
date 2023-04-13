---
title: "ediscoveryCaseSettings resource type"
description: "Contains settings for an eDiscovery case."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryCaseSettings resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains settings for an eDiscovery case. For details, see [Configure search and analytics settings in eDiscovery (Premium)](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get ediscoveryCaseSettings](../api/security-ediscoverycasesettings-get.md)|[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md)|Read the properties and relationships of an [ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md) object.|
|[Update ediscoveryCaseSettings](../api/security-ediscoverycasesettings-update.md)|[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md)|Update the properties of an [ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md) object.|
|[resetToDefault](../api/security-ediscoverycasesettings-resettodefault.md)|None|Reset all settings to the default values.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The ID of the eDiscovery case. Inherited from [entity](../resources/entity.md).|
|ocr|[microsoft.graph.security.ocrSettings](../resources/security-ocrsettings.md)|The OCR (Optical Character Recognition) settings for the case.|
|redundancyDetection|[microsoft.graph.security.redundancyDetectionSettings](../resources/security-redundancydetectionsettings.md)|The redundancy (near duplicate and email threading) detection settings for the case.|
|topicModeling|[microsoft.graph.security.topicModelingSettings](../resources/security-topicmodelingsettings.md)|The Topic Modeling (Themes) settings for the case.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryCaseSettings",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryCaseSettings",
  "id": "String (identifier)",
  "redundancyDetection": {
    "@odata.type": "microsoft.graph.security.redundancyDetectionSettings"
  },
  "topicModeling": {
    "@odata.type": "microsoft.graph.security.topicModelingSettings"
  },
  "ocr": {
    "@odata.type": "microsoft.graph.security.ocrSettings"
  }
}
```

