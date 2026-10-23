---
title: "processContentRequest resource type"
description: "Defines the input payload for the processContent and processContentAsync actions."
author: "ArunGedela"
ms.date: 09/02/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentRequest resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the input payload for the [user-scoped processContent](../api/userdatasecurityandgovernance-processcontent.md), [tenant-scoped processContent](../api/tenantdatasecurityandgovernance-processcontent.md), and tenant-scoped [processContentAsync](../api/tenantdatasecurityandgovernance-processcontentasync.md) actions.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activityMetadata|[activityMetadata](activitymetadata.md)|Metadata about the activity and, for agent evaluation, the other participants in the interaction. Required.|
|contentEntries|Collection([processContentMetadataBase](processcontentmetadatabase.md))|The content entries to process. Use [processConversationMetadata](processconversationmetadata.md) for prompts and responses and [processFileMetadata](processfilemetadata.md) for files. For the ContentActivity API only, use [contentActivityMetadata](contentactivitymetadata.md) for DLP enforcement results or [evaluationIncompleteActivityMetadata](evaluationincompleteactivitymetadata.md) when policy evaluation couldn't be completed. The ContentActivity-specific types aren't supported by the **processContent** or **processContentAsync** APIs. Required.|
|deviceMetadata|[deviceMetadata](devicemetadata.md)|Metadata about the device from which the content originates. Required. An empty object is valid for an agent request when device signals aren't available.|
|evaluationScope|[evaluationScope](evaluationscope.md)|Specifies the evaluation context for the request. Optional generally; required for the tenant-scoped **processContent** action, where **type** must be `agent`. When omitted from other actions, the request uses the default tenant evaluation context.|
|integratedAppMetadata|[integratedApplicationMetadata](integratedapplicationmetadata.md)|Metadata about the integrated application making the request. Required.|
|protectedAppMetadata|[protectedApplicationMetadata](protectedapplicationmetadata.md)|Metadata about the protected application. For an agent request, **applicationLocation** must be a [policyLocationAgent](policylocationagent.md). Required for agent requests; otherwise optional.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processContentRequest"
}
-->
```json
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
    "@odata.type": "microsoft.graph.evaluationScope"
  },
  "integratedAppMetadata": {
    "@odata.type": "microsoft.graph.integratedApplicationMetadata"
  },
  "protectedAppMetadata": {
    "@odata.type": "microsoft.graph.protectedApplicationMetadata"
  }
}
```
