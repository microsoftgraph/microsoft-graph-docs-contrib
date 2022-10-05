---
title: "topicModelingSettings resource type"
description: "Represents topic modeling settings for an eDiscovery case"
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# topicModelingSettings resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents topic modeling (Themes) settings for an eDiscovery case. To learn more, see [Configure search and analytics settings in eDiscovery (Premium)](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|dynamicallyAdjustTopicCount|Boolean|Indicates whether the themes model should dynamically optimize the number of generated topics. To learn more, see [Adjust maximum number of themes dynamically](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes).|
|ignoreNumbers|Boolean|Indicates whether the themes model should exclude numbers while parsing document texts. To learn more, see [Include numbers in themes](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes).|
|isEnabled|Boolean|Indicates whether themes model is enabled for the case.|
|topicCount|Int32|The total number of topics that the themes model will generate for a review set. To learn more, see [Maximum number of themes](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.topicModelingSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.topicModelingSettings",
  "isEnabled": "Boolean",
  "ignoreNumbers": "Boolean",
  "topicCount": "Integer",
  "dynamicallyAdjustTopicCount": "Boolean"
}
```

