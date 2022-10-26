---
title: "redundancyDetectionSettings resource type"
description: "Represents redundancy settings for an eDiscovery case."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# redundancyDetectionSettings resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents redundancy (email threading and near duplicate detection) settings for an eDiscovery case.


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
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.redundancyDetectionSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.redundancyDetectionSettings",
  "isEnabled": "Boolean",
  "similarityThreshold": "Integer",
  "minWords": "Integer",
  "maxWords": "Integer"
}
```

