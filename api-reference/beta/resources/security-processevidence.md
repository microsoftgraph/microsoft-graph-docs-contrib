---
title: "processEvidence resource type"
description: "Represents a process that is reported in the alert as evidence."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# processEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a process that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|detectionStatus|microsoft.graph.security.detectionStatus|The status of the detection. The possible values are: `detected`, `blocked`, `prevented`, `unknownFutureValue`.|
|imageFile|[microsoft.graph.security.fileDetails](../resources/security-filedetails.md)|Image file details.|
|mdeDeviceId|String|A unique identifier assigned to a device by Microsoft Defender for Endpoint.|
|parentProcessCreationDateTime|DateTimeOffset|Date and time when the parent of the process was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|parentProcessId|Int64|Process ID (PID) of the parent process that spawned the process.|
|parentProcessImageFile|[microsoft.graph.security.fileDetails](../resources/security-filedetails.md)|Parent process image file details.|
|processCommandLine|String|Command line used to create the new process.|
|processCreationDateTime|DateTimeOffset|Date and time when the process was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|processId|Int64|Process ID (PID) of the newly created process.|
|userAccount|[microsoft.graph.security.userAccount](../resources/security-useraccount.md)|User details of the user that ran the process.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.processEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.processEvidence",
  "createdDateTime": "String (timestamp)",
  "detectionStatus": "String",
  "imageFile": {"@odata.type": "microsoft.graph.security.fileDetails"},
  "mdeDeviceId": "String",
  "parentProcessCreationDateTime": "String (timestamp)",
  "parentProcessId": "Int64",
  "parentProcessImageFile": {"@odata.type": "microsoft.graph.security.fileDetails"},
  "processCommandLine": "String",
  "processCreationDateTime": "String (timestamp)",
  "processId": "Int64",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": ["String"],
  "tags": ["String"],
  "userAccount": {"@odata.type": "microsoft.graph.security.userAccount"},
  "verdict": "String"
}
```
