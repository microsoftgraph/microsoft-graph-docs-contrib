---
title: "cloudPcAgentHealthCheckDetail resource type"
description: "Describes the result of a target health check."
author: "janawu"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAgentHealthCheckDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the result of a target health check.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalDetails|[keyValuePair](../resources/keyvaluepair.md) collection|Additional information for this health check. Default value is empty. It provides detailed information on the health check to help the customer identify and resolve the issue. For example, `"additionalDetails": [{'@odata.type': 'microsoft.graph.keyValuePair', 'name': 'targetVersion', 'value': "1.3.02793.221" }]`. Read-only.|
|errorMessage|String|Indicates the detailed error message when the agent didn't pass this health check. It provides a friendly message to help the customer understand the reason for the health check failure. Maximum length is 1,500 characters. Read-only.|
|errorType|[cloudPcAgentHealthCheckErrorType](../resources/cloudpcagenthealthcheckdetail.md#cloudpcagenthealthcheckerrortype-values)|Indicates the error type occurred in the health check. Used to identify the reason of failure. Default is `healthy`. The possible values are: `healthy`, `installationCheckMsiFileNotExecutable`, `installationFailedToDownloadMaterials`, `installationCheckFoundErrors`, `resourceAvailabilityCheckDiskSpaceNotEnough`, `networkAvailabilityCheckRequiredUrlsNotAccessible`, `functionalityCheckPowerShellNotRunnable`, `agentCheckNotRunning`, `agentCheckNotExisted`, `agentCheckOldVersion`, `agentCheckHeartbeatLost`, `deviceStatusCheckNotRunning`, `deviceStatusCheckNotAvailable`, `communicationCheckChannelDowngraded`, `communicationCheckNotAvailable`, `internalAgentUnknownError`, `unknownFutureValue`. Read-only.|
|healthCheckName|String|Indicates the name of the health check performed. Read-only.|
|healthCheckResultType|[cloudPcAgentHealthCheckResultType](../resources/cloudpcagenthealthcheckdetail.md#cloudpcagenthealthcheckresulttype-values)|Indicates the health check result. The default value is `succeeded`. The possible values are: `succeeded`, `warning`, `failed`, `unknownFutureValue`. Read-only.|
|lastHealthCheckDateTime|DateTimeOffset|Indicates the date and time when the last health check finished. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Read-only.|

### cloudPcAgentHealthCheckErrorType values 

|Member|Description|
|:---|:---|
|healthy|Default. Indicates that no error occurred during the health check.|
|installationCheckMsiFileNotExecutable|Indicates that the installation or upgrade failed because the MSI (Microsoft Software Installer) file can't run on the device.|
|installationFailedToDownloadMaterials|Indicates that the installation or upgrade failed because the installation materials can't be downloaded.|
|installationCheckFoundErrors|Indicates that the installation or upgrade process failed due to an unexpected error encountered during the installation.|
|resourceAvailabilityCheckDiskSpaceNotEnough|Indicates that the target device doesn't have sufficient disk space, which might impact the functionality of the agent and might also lead to installation failure.|
|networkAvailabilityCheckRequiredUrlsNotAccessible|Indicates that the necessary endpoints defined to ensure the availability of the agent aren't accessible from the target device.|
|functionalityCheckPowerShellNotRunnable|Indicates that the functionality might be limited because PowerShell scripts can't run on the device.|
|agentCheckNotRunning|Indicates that the agent Windows service isn't running.|
|agentCheckNotExisted|Indicates that the agent Windows service is missing.|
|agentCheckOldVersion|Indicates that the current version of the agent is outdated.|
|agentCheckHeartbeatLost|Indicates that the service side didn't receive the heartbeat signal from the target agent for at least 12 hours.|
|deviceStatusCheckNotRunning|Indicates that the device isn't running.|
|deviceStatusCheckNotAvailable|Indicates that the device is currently unavailable, which means that the device doesn't exist or is presently unusable.|
|communicationCheckChannelDowngraded|Indicates that the default communication channel between the agent and the service is broken. The agent can still communicate using a backup channel.|
|communicationCheckNotAvailable|Indicates that the communication between the agent and the service is broken.|
|internalAgentUnknownError|Indicates that an unknown error occurred during runtime.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

### cloudPcAgentHealthCheckResultType values 

|Member|Description|
|:---|:---|
|succeeded|Default. Indicates that the agent passed this health check successfully.|
|warning|Indicates that the agent passed this health check with a warning. This result doesn't currently impact agent functionality but requires attention to prevent potential issues.|
|failed|Indicates that the agent failed to pass the health check.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAgentHealthCheckDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentHealthCheckDetail",
  "additionalDetails": [{"@odata.type": "microsoft.graph.keyValuePair"}],
  "errorMessage": "String",
  "errorType": "String",
  "healthCheckName": "String",
  "healthCheckResultType": "String",
  "lastHealthCheckDateTime": "String (timestamp)"
}
```
