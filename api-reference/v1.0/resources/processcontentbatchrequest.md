---
title: "processContentBatchRequest resource type"
description: "Represents a single entry within a request submitted to the processContentAsync action."
author: "kylemar"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentBatchRequest resource type

Namespace: microsoft.graph

Represents a single entry within a request submitted to the [processContentAsync](../api/tenantdatasecurityandgovernance-processcontentasync.md) action.

## Properties

| Property         | Type                                                                                               | Description                                                                                               |
| :--------------- | :------------------------------------------------------------------------------------------------- | :-------------------------------------------------------------------------------------------------------- |
| contentToProcess | [processContentRequest](../resources/processcontentrequest.md)                                     | The actual content processing request details, including content metadata, activity, device, and app info. |
| requestId        | String                                                                                             | A unique identifier provided by the client to correlate this specific request item within the batch.        |
| userId           | String                                                                                             | The unique identifier (Object ID or UPN) of the user in whose context the content should be processed.   |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processContentBatchRequest",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.processContentBatchRequest",
  "requestId": "String",
  "userId": "String",
  "contentToProcess": {
    "@odata.type": "microsoft.graph.processContentRequest"
  }
}
```
