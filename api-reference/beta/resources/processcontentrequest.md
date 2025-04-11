---
title: "processContentRequest resource type"
description: "Represents the request payload for processing content against data security and governance policies, including content entries and metadata."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the input payload for the `processContent` and `processContentAsync` actions. It includes the actual content to be processed along with relevant metadata about the activity, device, and integrated application.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activityMetadata|[microsoft.graph.activityMetadata](../resources/activitymetadata.md)|Metadata about the user activity (like upload, download) and location (URL). Required.|
|contentEntries|Collection([microsoft.graph.processContentMetadataBase](../resources/processcontentmetadatabase.md))|A collection of content entries to be processed. Each entry contains the content itself and its metadata. Required.|
|deviceMetadata|[microsoft.graph.deviceMetadata](../resources/devicemetadata.md)|Metadata about the device from which the content originates. Required.|
|integratedAppMetadata|[microsoft.graph.integratedApplicationMetadata](../resources/integratedapplicationmetadata.md)|Metadata about the integrated application making the request. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processContentRequest"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.processContentRequest",
  "activityMetadata": {
    "@odata.type": "microsoft.graph.activityMetadata"
  },
  "contentEntries": [
    {
      "@odata.type": "microsoft.graph.processContentMetadataBase"
      // Properties of processContentMetadataBase or derived types (processConversationMetadata, processFileMetadata)
    }
  ],
  "deviceMetadata": {
    "@odata.type": "microsoft.graph.deviceMetadata"
  },
  "integratedAppMetadata": {
    "@odata.type": "microsoft.graph.integratedApplicationMetadata"
  }
}
```
