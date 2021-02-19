---
title: "topicModelingSettings resource type"
description: "Topic modeling settings for an eDiscovery case"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# topicModelingSettings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Topic modeling (Themes) settings for an eDiscovery case.  See [Configure search and analytics settings in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery) to learn more.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|dynamicallyAdjustTopicCount|Boolean|See [Adjust maximum number of themes dynamically](https://docs.microsoft.com/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes) to learn more.|
|ignoreNumbers|Boolean|See [Include numbers in themes](https://docs.microsoft.com/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes) to learn more.|
|isEnabled|Boolean|Indicates whether themes is enabled for the case.|
|topicCount|Int32|See [Maximum number of themes](https://docs.microsoft.com/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#themes) to learn more.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ediscovery.topicModelingSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.topicModelingSettings",
  "isEnabled": "Boolean",
  "ignoreNumbers": "Boolean",
  "topicCount": "Integer",
  "dynamicallyAdjustTopicCount": "Boolean"
}
```
