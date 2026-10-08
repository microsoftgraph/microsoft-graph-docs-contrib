---
title: "redundancyDetectionSettings resource type"
description: "Redundancy settings for an eDiscovery case."
author: "mahage-msft"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# redundancyDetectionSettings resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [ediscovery-deprecation](../includes/ediscovery-subnamespace-deprecation.md)]

Redundancy (email threading and near duplicate detection) settings for an eDiscovery case.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether email threading and near duplicate detection are enabled.|
|maxWords|Int32|Specifies the maximum number of words used for email threading and near duplicate detection. To learn more, see [Minimum/maximum number of words](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#near-duplicates-and-email-threading).|
|minWords|Int32|Specifies the minimum number of words used for email threading and near duplicate detection. To learn more, see [Minimum/maximum number of words](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#near-duplicates-and-email-threading).|
|similarityThreshold|Int32|Specifies the similarity level for documents to be put in the same near duplicate set. To learn more, see [Document and email similarity threshold](/microsoft-365/compliance/configure-search-and-analytics-settings-in-advanced-ediscovery#near-duplicates-and-email-threading).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ediscovery.redundancyDetectionSettings"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.redundancyDetectionSettings",
  "isEnabled": "Boolean",
  "similarityThreshold": "Integer",
  "minWords": "Integer",
  "maxWords": "Integer"
}
```
