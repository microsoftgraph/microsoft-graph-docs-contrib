---
title: "detonationBehaviourDetails resource type"
description: Detonation behaviour details
author: akgraph
ms.localizationpriority: medium
ms.subservice: security
doc_type: resourcePageType
ms.date: 03/12/2024
---

# detonationBehaviourDetails resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Shows the exact events that took place during detonation, and problematic or benign observations that contain URLs, IPs, domains, and files that were found during detonation. There might not be any behavior details for container files like ZIP or RAR that contain other files.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionStatus|String|The status of the action performed during detonation (e.g., "Successful", "Failed", "Blocked").|
|behaviourCapability|String|Categorizes the capability or type of behavior observed (e.g., "FileSystem", "Network", "Process", "Registry")|
|behaviourGroup|String|Groups related behaviors together for classification purposes (e.g., "Persistence", "DataExfiltration", "CodeExecution")|
|details|String|dditional contextual information about the observed behavior or action.|
|eventDateTime|DateTimeOffset|The date and time when the behavior or action was observed during detonation.|
|operation|String|The specific operation or action that was performed (e.g., "FileCreate", "NetworkConnection", "ProcessLaunch").|
|processId|String|The unique identifier of the process involved in the behavior.|
|processName|String|The name of the process that performed or was involved in the behavior.|
|target|String|The target of the operation (e.g., file path, URL, registry key).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.detonationBehaviourDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.detonationBehaviourDetails",
  "behaviourCapability": "String",
  "behaviourGroup": "String",
  "eventDateTime": "String (timestamp)",
  "processName": "String",
  "processId": "String",
  "operation": "String",
  "target": "String",
  "details": "String",
  "actionStatus": "String"
}
```

