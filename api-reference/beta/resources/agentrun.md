---
title: "agentRun resource type"
description: "Represents an agent's contribution to an agentic session."
author: "berver"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# agentRun resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agent's contribution to an agentic session. Read its status, timing, and failure information to monitor processing. The **agent** property describes the agent; it doesn't expose an independently addressable agent catalog.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List agentRuns](../api/investigationsession-list-agentruns.md)|[agentRun](../resources/agentrun.md) collection|Get the session's runs.|
|[Get](../api/agentrun-get.md)|[agentRun](../resources/agentrun.md)|Read a run.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|agent|[agentInfo](../resources/agentinfo.md)|The embedded description of the agent that performed this run. Read-only.|
|completedDateTime|DateTimeOffset|The UTC date and time when the run completed successfully, in ISO 8601 format. Absent otherwise. Read-only.|
|createdDateTime|DateTimeOffset|The UTC date and time when the resource was created, in ISO 8601 format. Read-only.|
|durationInMilliseconds|Int64|The elapsed time from creation to successful completion, in milliseconds. Absent otherwise. Read-only.|
|failureInfo|[agentRunFailureInfo](../resources/agentrunfailureinfo.md)|The run-level failure details, when available. Read-only.|
|id|String|The unique, read-only identifier of the resource.|
|initiatedBy|[investigationIdentitySet](../resources/investigationidentityset.md)|The initiating principals recorded by the service, when available. Read-only. This property doesn't select an execution identity.|
|lastModifiedDateTime|DateTimeOffset|The UTC date and time when the resource was last updated, in ISO 8601 format. Read-only.|
|startedDateTime|DateTimeOffset|The UTC start timestamp, in ISO 8601 format. Currently reflects creation time, not a distinct execution-start measurement. Read-only.|
|status|longRunningOperationStatus|The service-computed processing status. The possible values are: `notStarted`, `running`, `succeeded`, `failed`, `unknownFutureValue`. A canceled execution has `failed` status and `canceled` **statusDetail**. A request for input has `running` status and `pendingInput` **statusDetail**. Read-only.|
|statusDetail|String|Additional processing detail, including `pendingInput` or `canceled`, when the status alone doesn't describe the source lifecycle. Read-only. Doesn't support `$filter`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.agentRun",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.agentRun",
  "id": "String (identifier)",
  "agent": {
    "@odata.type": "microsoft.graph.agentInfo"
  },
  "status": "String",
  "statusDetail": "String",
  "createdDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "startedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "durationInMilliseconds": "Integer",
  "failureInfo": {
    "@odata.type": "microsoft.graph.agentRunFailureInfo"
  },
  "initiatedBy": {
    "@odata.type": "microsoft.graph.investigationIdentitySet"
  }
}
```
