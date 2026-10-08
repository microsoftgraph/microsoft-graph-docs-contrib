---
title: "processContentRequest resource type"
description: "Defines the input payload for the processContent and processContentAsync actions."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentRequest resource type

Namespace: microsoft.graph

Defines the input payload for the [processContent](../api/userdatasecurityandgovernance-processcontent.md) and [processContentAsync](../api/tenantdatasecurityandgovernance-processcontentasync.md) actions.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activityMetadata|[microsoft.graph.activityMetadata](../resources/activitymetadata.md)|Metadata about the user activity (like upload, download) and location (URL). Required.|
|contentEntries|Collection([microsoft.graph.processContentMetadataBase](../resources/processcontentmetadatabase.md))|A collection of content entries to be processed. Each entry contains the content itself and its metadata. Use [conversation metadata](./processconversationmetadata.md) for content like prompts and responses and [file metadata](./processfilemetadata.md) for files. Required.|
|deviceMetadata|[microsoft.graph.deviceMetadata](../resources/devicemetadata.md)|Metadata about the device from which the content originates. Required.|
|integratedAppMetadata|[microsoft.graph.integratedApplicationMetadata](../resources/integratedapplicationmetadata.md)|Metadata about the integrated application making the request. Required.|
|protectedAppMetadata|[microsoft.graph.protectedApplicationMetadata](../resources/protectedapplicationmetadata.md)|Metadata about the protected application making the request. Required.|

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
    }
  ],
  "deviceMetadata": {
    "@odata.type": "microsoft.graph.deviceMetadata"
  },
  "integratedAppMetadata": {
    "@odata.type": "microsoft.graph.integratedApplicationMetadata"
  },
  "protectedAppMetadata": {
    "@odata.type": "microsoft.graph.protectedApplicationMetadata"
  }
}
```
