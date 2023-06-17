---
title: "fileEvidence resource type"
description: "A file that is reported in the alert as evidence."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---


# fileEvidence resource type

Namespace: microsoft.graph.security

A file that is reported in the alert as evidence.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detectionStatus|microsoft.graph.security.detectionStatus|The status of the detection.The possible values are: `detected`, `blocked`, `prevented`, `unknownFutureValue`.|
|fileDetails|[microsoft.graph.security.fileDetails](../resources/security-filedetails.md)|The file details.|
|mdeDeviceId|String|A unique identifier assigned to a device by Microsoft Defender for Endpoint.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.fileEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.fileEvidence",
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
  "fileDetails": {
    "@odata.type": "microsoft.graph.security.fileDetails"
  },
  "detectionStatus": "String",
  "mdeDeviceId": "String"
}
```