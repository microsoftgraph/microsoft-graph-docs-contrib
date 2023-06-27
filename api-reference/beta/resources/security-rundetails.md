---
title: "runDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# runDetails resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|errorCode|microsoft.graph.security.huntingRuleErrorCode|**TODO: Add Description**.The possible values are: `queryExecutionFailed`, `queryExecutionThrottling`, `queryExceededResultSize`, `queryLimitsExceeded`, `queryTimeout`, `alertCreationFailed`, `alertReportNotFound`, `partialRowsFailed`, `unknownFutureValue`.|
|failureReason|String|**TODO: Add Description**|
|lastRunDateTime|DateTimeOffset|**TODO: Add Description**|
|status|microsoft.graph.security.huntingRuleRunStatus|**TODO: Add Description**.The possible values are: `running`, `completed`, `failed`, `partiallyFailed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.runDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.runDetails",
  "lastRunDateTime": "String (timestamp)",
  "status": "String",
  "failureReason": "String",
  "errorCode": "String"
}
```

