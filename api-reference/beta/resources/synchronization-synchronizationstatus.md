---
title: "synchronizationStatus resource type"
description: "Represents the current status of the synchronizationJob."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# synchronizationStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current status of the [synchronizationJob](synchronization-synchronizationjob.md).

## Properties

| Property                              | Type      | Description    |
|:--------------------------------------|:----------|:---------------|
|code|synchronizationStatusCode|High-level status code of the synchronization job. Possible values are: `NotConfigured`, `NotRun`, `Active`, `Paused`, `Quarantine`.|
|countSuccessiveCompleteFailures|Int64|Number of consecutive times this job failed.|
|escrowsPruned|Boolean|`true` if the job's escrows (object-level errors) were pruned during initial synchronization. Escrows can be pruned if during the initial synchronization, you reach the threshold of errors that would normally put the job in quarantine. Instead of going into quarantine, the synchronization process clears the job's errors and continues until the initial synchronization is completed. When the initial synchronization is completed, the job will pause and wait for the customer to clean up the errors.|
|lastExecution|[synchronizationTaskExecution](synchronization-synchronizationtaskexecution.md)|Details of the last execution of the job.|
|lastSuccessfulExecution|[synchronizationTaskExecution](synchronization-synchronizationtaskexecution.md)|Details of the last execution of this job, which didn't have any errors.|
|lastSuccessfulExecutionWithExports|[synchronizationTaskExecution](synchronization-synchronizationtaskexecution.md)|Details of the last execution of the job, which exported objects into the target directory.|
|progress|[synchronizationProgress](synchronization-synchronizationprogress.md) collection|Details of the progress of a job toward completion.|
|quarantine|[synchronizationQuarantine](synchronization-synchronizationquarantine.md)|If job is in quarantine, quarantine details.|
|steadyStateFirstAchievedTime|DateTimeOffset|The time when steady state (no more changes to the process) was first achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|steadyStateLastAchievedTime|DateTimeOffset|The time when steady state (no more changes to the process) was last achieved. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|synchronizedEntryCountByType|[stringKeyLongValuePair](synchronization-stringkeylongvaluepair.md) collection|Count of synchronized objects, listed by object type.|
|troubleshootingUrl|String|In the event of an error, the URL with the troubleshooting steps for the issue.|

### Synchronization status code details

| Value                              | Description    |
|:-----------------------------------|:---------------|
|NotConfigured                       |Job was not configured and never run. No authorization was provided. |
|NotRun                              |Job was configured, and possibly started, but hasn't completed its first run.|
|Active                              |Job is running periodically.|
|Paused                              |Job was paused (usually by an administrator) and currently is not running, but the state of the job is preserved.|
|Quarantine                          |Job is in quarantine. This might happen when there is a high volume of errors, or critical errors such as revoked/expired credentials. While in quarantine, the synchronization process will attempt to run the job with reduced frequency.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.synchronizationStatus"
}-->

```json
{
  "code": "String",
  "countSuccessiveCompleteFailures": "Integer",
  "escrowsPruned": true,
  "lastExecution": {
    "@odata.type": "microsoft.graph.synchronizationTaskExecution"
  },
  "lastSuccessfulExecution": {
    "@odata.type": "microsoft.graph.synchronizationTaskExecution"
  },
  "lastSuccessfulExecutionWithExports": {
    "@odata.type": "microsoft.graph.synchronizationTaskExecution"
  },
  "progress": [
    {
      "@odata.type": "microsoft.graph.synchronizationProgress"
    }
  ],
  "quarantine": {
    "@odata.type": "microsoft.graph.synchronizationQuarantine"
  },
  "steadyStateFirstAchievedTime": "String (timestamp)",
  "steadyStateLastAchievedTime": "String (timestamp)",
  "synchronizedEntryCountByType": [
    {
      "@odata.type": "microsoft.graph.stringKeyLongValuePair"
    }
  ],
  "troubleshootingUrl": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "synchronizationStatus resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


