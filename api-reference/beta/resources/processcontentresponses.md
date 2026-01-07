---
title: "processContentResponses resource type"
description: "Represents the response for a single request within a batch content processing operation."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# processContentResponses resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the response for a single request within a [batch content processing operation](../api/tenantdatasecurityandgovernance-processcontentasync.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|requestId|String|The unique identifier that matches the `requestId` provided in the corresponding `processContentBatchRequest`.|
|results|[microsoft.graph.processContentResponse](../resources/processcontentresponse.md)|The outcome of processing the content associated with this `requestId`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.processContentResponses"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.processContentResponses",
  "requestId": "String",
  "results": {
    "@odata.type": "microsoft.graph.processContentResponse"
  }
}
```
