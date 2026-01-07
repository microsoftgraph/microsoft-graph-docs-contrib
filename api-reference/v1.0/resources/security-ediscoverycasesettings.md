---
title: "ediscoveryCaseSettings resource type"
description: "Contains settings for an eDiscovery case."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/10/2024
---

# ediscoveryCaseSettings resource type

Namespace: microsoft.graph.security



Contains settings for an eDiscovery case. For details, see [Configure search and analytics settings in eDiscovery (Premium)](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get settings](../api/security-ediscoverycasesettings-get.md)|[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md)|Read the properties and relationships of an [ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md) object.|
|[Update settings](../api/security-ediscoverycasesettings-update.md)|[microsoft.graph.security.ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md)|Update the properties of an [ediscoveryCaseSettings](../resources/security-ediscoverycasesettings.md) object.|
|[Reset settings to default](../api/security-ediscoverycasesettings-resettodefault.md)|None|Reset all settings to the default values.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|caseType|[microsoft.graph.security.caseType](#casetype-values)|The type of the eDiscovery case. The possible values are: `standard`, `premium`, `unknownFutureValue`.|
|id|String|The ID of the eDiscovery case. Inherited from [entity](../resources/entity.md).|
|ocr|[microsoft.graph.security.ocrSettings](../resources/security-ocrsettings.md)|The OCR (Optical Character Recognition) settings for the case.|
|redundancyDetection|[microsoft.graph.security.redundancyDetectionSettings](../resources/security-redundancydetectionsettings.md)|The redundancy (near duplicate and email threading) detection settings for the case.|
|reviewSetSettings|[microsoft.graph.security.reviewSetSettings](#reviewsetsettings-values)|The settings of the review set for the case. The possible values are: `none`, `disableGrouping`, `unknownFutureValue`.|
|topicModeling|[microsoft.graph.security.topicModelingSettings](../resources/security-topicmodelingsettings.md)|The Topic Modeling (Themes) settings for the case.|

### caseType values

|Member|Description|
|:----|:----------|
|standard      | Standard eDiscovery case for E3 tenants.|
|premium    | Premium eDiscovery case with advanced features for E5 tenants.|
|unknownFutureValue   | Evolvable enumeration sentinel value. Don't use. |

### reviewSetSettings values

|Member|Description|
|:----|:----------|
|none      | No other options selected.|
|disableGrouping    | Disable the grouping control.|
|unknownFutureValue   | Evolvable enumeration sentinel value. Don't use. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "caseType": "String",
  "id": "String (identifier)",
  "ocr": {"@odata.type": "microsoft.graph.security.ocrSettings"},
  "redundancyDetection": {"@odata.type": "microsoft.graph.security.redundancyDetectionSettings"},
  "reviewSetSettings": "String",
  "topicModeling": {"@odata.type": "microsoft.graph.security.topicModelingSettings"}
}
```

