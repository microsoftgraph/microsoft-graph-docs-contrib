---
title: "cloudPcExternalPartnerActionResult resource type"
description: "Represents the details of the Cloud PC external partner action results."
author: "XunZhangSZ"
ms.date: 01/21/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcExternalPartnerActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the Cloud PC external partner action results. Such as the deploy agent action result.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activityId|String|The activity ID associated with the external partner action. Read-only.|
|cloudPcId|String|The Cloud PC ID associated with the external partner action. Read-only.|
|errorCode|[cloudPcExternalPartnerActionErrorCode](#cloudpcexternalpartneractionerrorcode-values)|The error code of action. Read-only. The possible values are: `none`, `executeActionFailed`, `executeActionTimeout`, `deviceNotFound`, `deviceNotAvailable`, `checkDiskSpaceFailed`, `checkNetworkConnectionFailed`, `agentNotFound`, `invalidAgentFormat`, `invalidAgentChecksum`, `unknownFutureValue`.|
|errorMessage|String|The error message of the action. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The last update time of the action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only.|
|startDateTime|DateTimeOffset|The start time of the action. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: '2014-01-01T00:00:00Z'. Read-only.|
|state|[cloudPcExternalPartnerActionStatus](#cloudpcexternalpartneractionstatus-values)|The status of action progress. Read-only. The possible values are: `created`, `pending`, `canceled`, `running`, `succeeded`, `failed`, `unknownFutureValue`.|

### cloudPcExternalPartnerActionErrorCode values

|Member|Description|
|:---|:---|
|none|Default. Indicates that the action execution succeeded.|
|executeActionFailed|Indicates that the action execution failed.|
|executeActionTimeout|Indicates that the action execution timeout.|
|deviceNotFound|Indicates that the Cloud PC device doesn't exist. For example, deleted or never existed|
|deviceNotAvailable|Indicates that the Cloud PC device isn't available. For example, in provisioning.|
|checkDiskSpaceFailed|Indicates that the check disk space failed.|
|checkNetworkConnectionFailed|Indicates that the check network connection failed.|
|agentNotFound|Indicates that the agent doesn't exist.|
|invalidAgentFormat|Indicates that the agent format is invalid. Only exe and msi files are valid. For example, vscode.exe, vscode.msi.|
|invalidAgentChecksum|Indicates that the agent checksum is invalid.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcExternalPartnerActionStatus values

|Member|Description|
|:---|:---|
|created|Default. Indicates that the Cloud PC external partner action is created.|
|pending|Indicates that the Cloud PC external partner action is pending.|
|canceled|Indicates that the Cloud PC external partner action is canceled.|
|running|Indicates that the Cloud PC external partner action is running.|
|succeeded|Indicates that the Cloud PC external partner action is processed successfully.|
|failed|Indicates that the Cloud PC external partner action failed to process.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcExternalPartnerActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcExternalPartnerActionResult",
  "activityId": "String",
  "cloudPcId": "String",
  "state": "String",
  "startDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "errorCode": "String",
  "errorMessage": "String"
}
```

