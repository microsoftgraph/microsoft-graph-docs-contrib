---
title: "runDetails resource type"
description: "Describes a run of a custom detection rule"
author: "mmekler"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# runDetails resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a run of a [Custom Detection Rule](../resources/security-detectionrule.md).

## Properties
| Property        | Type                                                                                                        | Description                                                                                                                                                                                                                                                                                          |
|:----------------|:------------------------------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| errorCode       | [microsoft.graph.security.huntingRuleErrorCode](../resources/enums-security.md#huntingruleerrorcode-values) | Error code of the most recent run that encountered an error. The possible values are: `queryExecutionFailed`, `queryExecutionThrottling`, `queryExceededResultSize`, `queryLimitsExceeded`, `queryTimeout`, `alertCreationFailed`, `alertReportNotFound`, `partialRowsFailed`, `unknownFutureValue`. |
| failureReason   | String                                                                                                      | Reason for failure when the custom detection last run and failed. See the table below                                                                                                                                                                                                                |
| lastRunDateTime | DateTimeOffset                                                                                              | Timestamp when the custom detection was last run.                                                                                                                                                                                                                                                    |
| status          | [microsoft.graph.security.huntingRuleRunStatus](../resources/enums-security.md#huntingrulerunstatus-values) | Status of custom detection when it was last run. The possible values are: `running`, `completed`, `failed`, `partiallyFailed`, `unknownFutureValue`.                                                                                                                                                 |

#### Failure Reasons table

| errorCode                | Reason                                                                                                                                                                   |
|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| queryExecutionFailed     | An unexpected error occurred during query execution. Contact support if this reoccurs.                                                                                   |
| queryExecutionThrottling | Query execution was throttled due to exceeded tenant resources.                                                                                                          |
| queryExceededResultSize  | Result size limit exceeded. Only the first 100 query results were processed.                                                                                             |
| queryLimitsExceeded      | Query execution was preempted. This could possibly be due to high CPU and/or memory resource consumption. Optimize your query by following best practices and try again. |
| queryTimeout             | Query execution took longer than the assigned timeout and has been aborted.                                                                                              |
| alertCreationFailed      | An unexpected error occurred while generating alerts from query results. Contact support if this reoccurs.                                                               |
| alertReportNotFound      | An event could not be matched to the given Timestamp, DeviceId, ReportId. Check the query for aggregation expressions on those columns.                                  |
| partialRowsFailed        | Only a subset of query results could be processed to alerts. Contact support if this reoccurs.                                                                           |


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

