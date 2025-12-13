---
title: "deviceEvidence resource type"
description: "A device that is reported in the alert."
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# deviceEvidence resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A device that is reported in the alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureAdDeviceId|String|A unique identifier assigned to a device by Microsoft Entra ID when device is Microsoft Entra joined.|
|defenderAvStatus|[microsoft.graph.security.defenderAvStatus](#defenderavstatus-values)|State of the Defender anti-malware engine. The possible values are: `notReporting`, `disabled`, `notUpdated`, `updated`, `unknown`, `notSupported`, `unknownFutureValue`.|
|deviceDnsName|String|The fully qualified domain name (FQDN) for the device.|
| dnsDomain | String | The DNS domain that this computer belongs to. A sequence of labels separated by dots. |
|firstSeenDateTime|DateTimeOffset|The date and time when the device was first seen.|
|healthStatus|[microsoft.graph.security.deviceHealthStatus](#devicehealthstatus-values)|The health state of the device. The possible values are: `active`, `inactive`, `impairedCommunication`, `noSensorData`, `noSensorDataImpairedCommunication`, `unknown`, `unknownFutureValue`.|
| hostName | String | The hostname without the domain suffix. |
|ipInterfaces|String collection|Ip interfaces of the device during the time of the alert.|
|loggedOnUsers|[microsoft.graph.security.loggedOnUser](../resources/security-loggedonuser.md) collection|Users that were logged on the machine during the time of the alert.|
|mdeDeviceId|String|A unique identifier assigned to a device by Microsoft Defender for Endpoint.|
| ntDomain | String | A logical grouping of computers within a Microsoft Windows network. |
|onboardingStatus|[microsoft.graph.security.onboardingStatus](#onboardingstatus-values)|The status of the machine onboarding to Microsoft Defender for Endpoint. The possible values are: `insufficientInfo`, `onboarded`, `canBeOnboarded`, `unsupported`, `unknownFutureValue`.|
|osBuild|Int64|The build version for the operating system the device is running.|
|osPlatform|String|The operating system platform the device is running.|
|rbacGroupId|Int32|The ID of the role-based access control device group.|
|rbacGroupName|String|The name of the role-based access control device group.|
|riskScore|[microsoft.graph.security.deviceRiskScore](#deviceriskscore-values)|Risk score as evaluated by Microsoft Defender for Endpoint. The possible values are: `none`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|resourceAccessEvents|[microsoft.graph.security.resourceAccessEvent](../resources/security-resourceaccessevent.md) collection | Information on resource access attempts made by the user account. |
|version|String|The version of the operating system platform.|
|vmMetadata|[microsoft.graph.security.vmMetadata](../resources/security-vmmetadata.md)|Metadata of the virtual machine (VM) on which Microsoft Defender for Endpoint is running.|

### defenderAvStatus values 

| Member                     | Description                                                   |
| :--------------------------| :------------------------------------------------------------ |
| notReporting               | Defender anti-malware engine isn't reporting.                 |
| disabled                   | Defender anti-malware engine is disabled.                |
| notUpdated                 | Defender anti-malware engine isn't up to date.                |
| updated                    | Defender anti-malware engine is up to date.                    |
| unknown                    | State of Defender anti-malware engine is unknown.              |
| notSupported               | Defender anti-malware engine isn't supported on this platform.|
| unknownFutureValue         | unknownFutureValue for evolvable enums pattern.               |


### deviceHealthStatus values 

| Member                     | Description                                                               |
| :--------------------------| :------------------------------------------------------------------------ |
| active                               | Device is active and reporting to all channels.                 |
| inactive                             | Device isn't reporting to any channel.                         |
| impairedCommunication                | Device isn't connected to the CnC.                             |
| noSensorData                         | Device isn't sending telemetry.                                |
| noSensorDataImpairedCommunication    | Device isn't connected to the CnC and not sending telemetry.   |
| unknown                              | Device state is unknown                                         |
| unknownFutureValue                   | unknownFutureValue for evolvable enums pattern.                 |

### deviceRiskScore values 

| Member                     | Description                                                               |
| :--------------------------| :------------------------------------------------------------------------ |
| none                       | There are no alerts related to this device.                               |
| informational              | Device only has 'informational' level alerts.                             |
| low                        | Device only has 'low' or 'informational' alerts.                          |
| medium                     | Device has 'medium' or lower severity alerts.                             |
| high                       | Device has 'high' severity alerts and is at risk.                         |
| unknownFutureValue         | unknownFutureValue for evolvable enums pattern.                           |


### onboardingStatus values 

| Member                     | Description                                    |
| :--------------------------| :--------------------------------------------- |
| unknown                    | Unknown onboarding status                      |
| insufficientInfo           | Onboarding status can't be determined.        |
| onboarded                  | Device is onboarded to service.                |
| canBeOnboarded             | Device is eligible to be onboarded to service. |
| unsupported                | Device isn't supported by service.            |
| unknownFutureValue         | unknownFutureValue for evolvable enums pattern.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.deviceEvidence",
  "baseType": "microsoft.graph.security.alertEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.deviceEvidence",
  "azureAdDeviceId": "String",
  "createdDateTime": "String (timestamp)",
  "defenderAvStatus": "String",
  "detailedRoles": ["String"],
  "deviceDnsName": "String",
  "dnsDomain": "String",
  "firstSeenDateTime": "String (timestamp)",
  "healthStatus": "String",
  "hostName": "String",
  "ipInterfaces": ["String"],
  "loggedOnUsers": [{"@odata.type": "microsoft.graph.security.loggedOnUser"}],
  "mdeDeviceId": "String",
  "ntDomain": "String",
  "onboardingStatus": "String",
  "osBuild": "Integer",
  "osPlatform": "String",
  "rbacGroupId": "Integer",
  "rbacGroupName": "String",
  "remediationStatus": "String",
  "remediationStatusDetails": "String",
  "resourceAccessEvents": [
    {
      "@odata.type": "microsoft.graph.security.resourceAccessEvent"
    }
  ],
  "riskScore": "String",
  "roles": ["String"],
  "tags": ["String"],
  "verdict": "String",
  "version": "String",
  "vmMetadata": {"@odata.type": "microsoft.graph.security.vmMetadata"}
}
```
