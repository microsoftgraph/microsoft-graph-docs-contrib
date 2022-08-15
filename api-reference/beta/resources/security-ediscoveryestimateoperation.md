---
title: "ediscoveryEstimateOperation resource type"
description: "Represents the process of estimating statistics (items count, size and number of locations) of an eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryEstimateOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the process of estimating statistics (items count, size and number of locations) of an eDiscovery search.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.security.caseAction| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`, `purgeData`|
|completedDateTime|DateTimeOffset|The date and time the operation was completed. Read-only. |
|createdBy|[identitySet](../resources/identityset.md)|The user who created the operation. Read-only. |
|createdDateTime|DateTimeOffset|The date and time the operation was started. Read-only.|
|id|String| The ID for the operation. Read-only.|
|indexedItemCount|Int64|The estimated count of items for the **search** that matched the content query.|
|indexedItemsSize|Int64|The estimated size of items for the **search** that matched the content query.|
|mailboxCount|Int32|The number of mailboxes that had search hits.|
|percentProgress|Int32|The progress of the operation. Read-only. |
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. |
|siteCount|Int32|The number of mailboxes that had search hits.|
|status|microsoft.graph.security.caseOperationStatus| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|
|unindexedItemCount|Int64|The estimated count of unindexed items for the collection.|
|unindexedItemsSize|Int64|The estimated size of unindexed items for the collection.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|search|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|eDiscovery search.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryEstimateOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryEstimateOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "percentProgress": "Integer",
  "status": "String",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "indexedItemCount": "Integer",
  "indexedItemsSize": "Integer",
  "unindexedItemCount": "Integer",
  "unindexedItemsSize": "Integer",
  "mailboxCount": "Integer",
  "siteCount": "Integer"
}
```

