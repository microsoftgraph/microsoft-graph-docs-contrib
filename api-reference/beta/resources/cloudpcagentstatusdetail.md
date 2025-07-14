---
title: "cloudPcAgentStatusDetail resource type"
description: "Describe the agent status of the Cloud PC."
author: "jianawu"
ms.date: 03/20/2025
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAgentStatusDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describe the agent status of the Cloud PC. Read Only.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|agentVersionNumber|String|Indicates the version of the Cloud PC agent. For example: "1.2.02783.221". Read Only.|
|cloudPcId|String|Indicates the unique identifier of Cloud PC where the agent is installed. Used to correlate agent status to a target Cloud PC. It is the unique identifier of related Cloud PC Entity, which is defined by creating the entity. Read Only. |
|diagnosticResultMessage|String|Indicates detailed message related to the diagnostic result type.  Max length is 1500. Read Only.|
|diagnosticResultType|cloudPcAgentDiagnosticResultType|Indicates the diagnostic result type detected. Used to describe the overall issue detected. The possible values are: `healthy`, `versionOutdated`, `functionalityDefect`, `communicationUnhealthy`, `unknownError`, `unknownFutureValue`. Read Only. |
|healthCheckSummary|[cloudPcAgentHealthCheckSummary](../resources/cloudpcagenthealthchecksummary.md)|Describes details of health checks performed on the agent. Read Only.|
|healthStatus|cloudPcAgentHealthStatus|The health status of agent. Used to query agents with the same health status. Default value is `healthy`. The possible values are: `healthy`, `warning`, `unavailable`, `unknownFutureValue`.|
|lastHealthStatusCheckedDateTime|DateTimeOffset|Indicates the date and time when the last agent health status check completed. The date and time information is shown using ISO 8601 format and is always in UTC time. Read Only.|
|managedDeviceName|String|Indicates the Cloud PC¡¯s Intune enrolled device name. Read-only.|
|userPrincipalName|String|Indicates the principal name (UPN) of the user assigned to the Cloud PC with 113 max size limitation. Read Only.|


### cloudPcAgentHealthStatus values 

|Member|Description|
|:---|:---|
|healthy|Default. Indicates that the agent is healthy.|
|warning|Indicates that an issue detected with the agent, but it remains partially operational.|
|unavailable|Indicates the agent is either not installed, unable to communicate, or non-functional.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### cloudPcAgentDiagnosticResultType values 

|Member|Description|
|:---|:---|
|healthy|Default. Indicates the agent is healthy.|
|versionOutdated|Indicates the agent works but is outdated.|
|functionalityDefect|Indicates that some agent functionality is unavailable, but the agent may still run with reduced functionality.|
|communicationUnhealthy|Indicates that communication is currently unhealthy. The communication between the agent and the service may have partially or completelyfailed.|
|unknownError|Indicates that there are unknown errors.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAgentStatusDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentStatusDetail",
  "cloudPcId": "String",
  "managedDeviceName": "String",
  "userPrincipalName": "String",
  "agentVersionNumber": "String",
  "healthStatus": "String",
  "diagnosticResultType": "String",
  "diagnosticResultMessage": "String",
  "lastHealthStatusCheckedDateTime": "String (timestamp)",
  "healthCheckSummary": {
    "@odata.type": "microsoft.graph.cloudPcAgentHealthCheckSummary"
  }
}
```