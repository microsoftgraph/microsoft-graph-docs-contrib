---
title: "processContentRequest resource type"
description: "Defines the input payload for the processContent and processContentAsync actions."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the input payload for the user-scoped [processContent](../api/userdatasecurityandgovernance-processcontent.md), tenant-scoped [processContent](../api/tenantdatasecurityandgovernance-processcontent.md), and [processContentAsync](../api/tenantdatasecurityandgovernance-processcontentasync.md) actions.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activityMetadata|[microsoft.graph.activityMetadata](../resources/activitymetadata.md)|Metadata about the user activity (like upload, download) and location (URL). Required.|
|contentEntries|Collection([microsoft.graph.processContentMetadataBase](../resources/processcontentmetadatabase.md))|A collection of content entries to be processed. Each entry contains the content itself and its metadata. Use [conversation metadata](../resources/processconversationmetadata.md) for content like prompts and responses, [file metadata](../resources/processfilemetadata.md) for files, and [content activity metadata](../resources/contentactivitymetadata.md) for enforcement result status entries. Required.|
|deviceMetadata|[microsoft.graph.deviceMetadata](../resources/devicemetadata.md)|Metadata about the device from which the content originates. Required.|
|evaluationScope|[evaluationScope](../resources/evaluationscope.md)|Specifies the evaluation context for the request. Optional generally; required for the tenant-scoped **processContent** action, where **type** must be `agent`. When omitted from other actions, the request uses the default tenant evaluation context.|
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
  "evaluationScope": {
    "@odata.type": "microsoft.graph.evaluationScope",
    "type": "String"
  },
  "integratedAppMetadata": {
    "@odata.type": "microsoft.graph.integratedApplicationMetadata"
  },
  "protectedAppMetadata": {
    "@odata.type": "microsoft.graph.protectedApplicationMetadata"
  }
}
```
