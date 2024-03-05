---
title: "runDetails resource type"
description: "Represents an instance of a custom detection rule run."
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# runDetails resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an instance of a [custom detection rule](../resources/security-detectionrule.md) run.

## Properties
| Property        | Type                                                                                                        | Description                                                                                                                                                                                                                                                                                          |
|:----------------|:------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| errorCode       | [microsoft.graph.security.huntingRuleErrorCode](../resources/enums-security.md#huntingruleerrorcode-values) | Error code of the most recent run that encountered an error. The possible values are: `queryExecutionFailed`, `queryExecutionThrottling`, `queryExceededResultSize`, `queryLimitsExceeded`, `queryTimeout`, `alertCreationFailed`, `alertReportNotFound`, `partialRowsFailed`, `unknownFutureValue`. |
| failureReason   | String                                                                                                      | Reason for failure when the custom detection last ran and failed. See the table below.                                                                                                                                                                                                                |
| lastRunDateTime | DateTimeOffset                                                                                              | Timestamp when the custom detection was last run.                                                                                                                                                                                                                                                    |
| status          | [microsoft.graph.security.huntingRuleRunStatus](../resources/enums-security.md#huntingrulerunstatus-values) | Status of custom detection when it was last run. The possible values are: `running`, `completed`, `failed`, `partiallyFailed`, `unknownFutureValue`.                                                                                                                                                 |

#### Failure Reasons table

| errorCode                | Reason                                                                                                                                                                   |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| queryExecutionFailed     | An unexpected error occurred during query execution. Contact support if this failure reoccurs.                                                                                   |
| queryExecutionThrottling | Query execution was throttled due to exceeded tenant resources.                                                                                                          |
| queryExceededResultSize  | Result size limit exceeded. Only the first 100 query results were processed.                                                                                             |
| queryLimitsExceeded      | Query execution was preempted. This failure can be due to high CPU and/or memory resource consumption. Optimize your query by following best practices and try again. |
| queryTimeout             | Query execution took longer than the assigned timeout and was aborted.                                                                                              |
| alertCreationFailed      | An unexpected error occurred while generating alerts from query results. Contact support if this failure reoccurs.                                                               |
| alertReportNotFound      | An event couldn't be matched to the given Timestamp, DeviceId, or ReportId. Check the query for aggregation expressions on those columns.                                  |
| partialRowsFailed        | Only a subset of query results could be processed to alerts. Contact support if this failure reoccurs.                                                                           |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

