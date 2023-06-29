---
title: "processEvidence resource type"
description: "A process that is reported in the alert as evidence."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# processEvidence resource type

Namespace: microsoft.graph.security

A process that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detectionStatus|microsoft.graph.security.detectionStatus|The status of the detection.The possible values are: `detected`, `blocked`, `prevented`, `unknownFutureValue`.|
|imageFile|[microsoft.graph.security.fileDetails](../resources/security-filedetails.md)|Image file details.|
|mdeDeviceId|String|A unique identifier assigned to a device by Microsoft Defender for Endpoint.|
|parentProcessCreationDateTime|DateTimeOffset|Date and time when the parent of the process was created.|
|parentProcessId|Int64|Process ID (PID) of the parent process that spawned the process.|
|parentProcessImageFile|[microsoft.graph.security.fileDetails](../resources/security-filedetails.md)|Parent process image file details.|
|processCommandLine|String|Command line used to create the new process.|
|processCreationDateTime|DateTimeOffset|Date and time the process was created.|
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
  "verdict": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "roles": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "processId": "Integer",
  "parentProcessId": "Integer",
  "processCommandLine": "String",
  "processCreationDateTime": "String (timestamp)",
  "parentProcessCreationDateTime": "String (timestamp)",
  "detectionStatus": "String",
  "mdeDeviceId": "String",
  "imageFile": {
    "@odata.type": "microsoft.graph.security.fileDetails"
  },
  "parentProcessImageFile": {
    "@odata.type": "microsoft.graph.security.fileDetails"
  },
  "userAccount": {
    "@odata.type": "microsoft.graph.security.userAccount"
  }
}
```