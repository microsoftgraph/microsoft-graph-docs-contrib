---
title: "cloudPcAgentHealthCheckDetail resource type"
description: "Describe the result of a target health check."
author: "janawu"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAgentHealthCheckDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describe the result of a target health check.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalDetails|[keyValuePair](../resources/keyvaluepair.md) collection|Additional information for this health check. Default value is empty. This provides detailed information on the health check to help the customer identify and resolve the issue. Example: `"additionalDetails": [{'@odata.type': 'microsoft.graph.keyValuePair','name': 'targetVersion','value': "1.3.02793.221" }]`  Read Only.|
|errorMessage|String|Indicates the detailed error message when the agent did not pass this health check. This provides a friendly message to help the customer to understand the reason for the health check failure. Max length is 1500. Read Only.|
|errorType|cloudPcAgentHealthCheckErrorType|Indicates the error type occurred in the health check. Used to identify the reason of failure. Default is `healthy`. The possible values are: `healthy`, `installationCheckMsiFileNotExecutable`, `installationFailedToDownloadMaterials`, `installationCheckFoundErrors`, `resourceAvailabilityCheckDiskSpaceNotEnough`, `networkAvailabilityCheckRequiredUrlsNotAccessible`, `functionalityCheckPowerShellNotRunnable`, `agentCheckNotRunning`, `agentCheckNotExisted`, `agentCheckOldVersion`, `agentCheckHeartbeatLost`, `deviceStatusCheckNotRunning`, `deviceStatusCheckNotAvailable`, `communicationCheckChannelDowngraded`, `communicationCheckNotAvailable`, `internalAgentUnknownError`, `unknownFutureValue`. Read Only.|
|healthCheckName|String|Indicates the name of health check performed. Read Only.|
|healthCheckResultType|cloudPcAgentHealthCheckResultType|Indicates the health check result. The default value is `succeeded`. The possible values are: `succeeded`, `warning`, `failed`, `unknownFutureValue`. Read Only.|
|lastHealthCheckDateTime|DateTimeOffset|Indicates the date and time when the last health check finished. The date and time information is shown using ISO 8601 format and is always in UTC time. Read Only.|

### cloudPcAgentHealthCheckErrorType values 

|Member|Description|
|:---|:---|
|healthy|Default. Indicates no error occurred during the health check.|
|installationCheckMsiFileNotExecutable|Indicates the installation/upgrade failed because the MSI file could not be executed on the device.|
|installationFailedToDownloadMaterials|Indicates the installation/upgrade failed because the installation materials can not be downloaded.|
|installationCheckFoundErrors|Indicates the installation/upgrade process failed due to an unexpected error encountered during the installation.|
|resourceAvailabilityCheckDiskSpaceNotEnough|Indicates the target device does not have sufficient disk space, which may impact on the functionality of the agent. In particular, it may lead to installation failure.|
|networkAvailabilityCheckRequiredUrlsNotAccessible|Indicates the necessary endpoints defined to ensure the agent's availability are not accessible from the target device.|
|functionalityCheckPowerShellNotRunnable|Indicates the functionality may be limited as PowerShell scripts cannot run on the device.|
|agentCheckNotRunning|Indicates the agent Windows service is not running.|
|agentCheckNotExisted|Indicates the agent Windows service is missing.|
|agentCheckOldVersion|Indicates the current version of the agent is outdated.|
|agentCheckHeartbeatLost|Indicates the service side has not received the heartbeat signal from the target agent for at least 12 hours.|
|deviceStatusCheckNotRunning|Indicates the device is not running.|
|deviceStatusCheckNotAvailable|Indicates the device is currently unavailable. This may indicate that the device does not exist or is presently unusable.|
|communicationCheckChannelDowngraded|Indicates the default communication channel between the agent and service is broken. The agent can still communicate using a backup channel.|
|communicationCheckNotAvailable|Indicates the communication between agent and service is broken.|
|internalAgentUnknownError|Indicates that an unknown error occurred during runtime.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcAgentHealthCheckResultType values 

|Member|Description|
|:---|:---|
|succeeded|Default. Indicates the agent passed this health check successfully.|
|warning|Indicates the agent passed this health check with a warning. While this does not currently impact agent functionality, it requires attention to prevent potential issues.|
|failed|Indicates the agent failed to pass the health check.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

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
  "healthCheckName": "String",
  "healthCheckResultType": "String",
  "errorType": "String",
  "errorMessage": "String",
  "lastHealthCheckDateTime": "String (timestamp)",
  "additionalDetails": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ]
}
```