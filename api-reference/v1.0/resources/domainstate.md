---
title: "domainState resource type"
description: "Represents the status of asynchronous operations scheduled on a domain."
author: "tafra00"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 04/25/2024
---

# domainState resource type

Namespace: microsoft.graph

Represents the status of asynchronous operations scheduled on a domain.

## Properties

| Property   | Type | Description |
|:---------------|:--------|:----------|
| lastActionDateTime | DateTimeOffset | Timestamp for when the last activity occurred. The value is updated when an operation is scheduled, the asynchronous task starts, and when the operation completes. |
| operation | String | Type of asynchronous operation. The values can be `ForceDelete` or `Verification`. |
| status | String | Current status of the operation. <br> `Scheduled` - Operation is scheduled but hasn't started. <br> `InProgress` - Task is in progress. <br> `Failed` - The operation failed. |

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainState"
}-->

```json
{
  "lastActionDateTime": "String (timestamp)",
  "operation": "String",
  "status": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

