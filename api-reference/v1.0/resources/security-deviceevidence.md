---
title: "deviceEvidence resource type"
description: "A device that is reported in the alert."
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# deviceEvidence resource type

Namespace: microsoft.graph.security

A device that is reported in the alert.

Inherits from [alertEvidence](../resources/security-alertevidence.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|azureAdDeviceId|String|A unique identifier assigned to a device by Azure Active Directory (Azure AD) when device is Azure AD-joined.|
|defenderAvStatus|[microsoft.graph.security.defenderAvStatus](#defenderavstatus-values)|State of the Defender AntiMalware engine. The possible values are: `notReporting`, `disabled`, `notUpdated`, `updated`, `unknown`, `notSupported`, `unknownFutureValue`.|
|deviceDnsName|String|The fully qualified domain name (FQDN) for the device.|
|firstSeenDateTime|DateTimeOffset|The date and time when the device was first seen.|
|healthStatus|[microsoft.graph.security.deviceHealthStatus](#devicehealthstatus-values)|The health state of the device.The possible values are: `active`, `inactive`, `impairedCommunication`, `noSensorData`, `noSensorDataImpairedCommunication`, `unknown`, `unknownFutureValue`.|
|loggedOnUsers|[microsoft.graph.security.loggedOnUser](../resources/security-loggedonuser.md) collection|Users that were logged on the machine during the time of the alert.|
|mdeDeviceId|String|A unique identifier assigned to a device by Microsoft Defender for Endpoint.|
|onboardingStatus|[microsoft.graph.security.onboardingStatus](#onboardingstatus-values)|The status of the machine onboarding to Microsoft Defender for Endpoint.The possible values are: `insufficientInfo`, `onboarded`, `canBeOnboarded`, `unsupported`, `unknownFutureValue`.|
|osBuild|Int64|The build version for the operating system the device is running.|
|osPlatform|String|The operating system platform the device is running.|
|rbacGroupId|Int32|The ID of the role-based access control (RBAC) device group.|
|rbacGroupName|String|The name of the RBAC device group.|
|riskScore|[microsoft.graph.security.deviceRiskScore](#deviceriskscore-values)|Risk score as evaluated by Microsoft Defender for Endpoint. The possible values are: `none`, `informational`, `low`, `medium`, `high`, `unknownFutureValue`.|
|version|String|The version of the operating system platform.|
|vmMetadata|[microsoft.graph.security.vmMetadata](../resources/security-vmmetadata.md)|Metadata of the virtual machine (VM) on which Microsoft Defender for Endpoint is running.|

### defenderAvStatus values 

| Member                     | Description                                                   |
| :--------------------------| :------------------------------------------------------------ |
| notReporting               | Defender AntiMalware engine is not reporting.                 |
| disabled                   | Defender AntiMalware engine has been disabled.                |
| notUpdated                 | Defender AntiMalware engine is not up to date.                |
| updated                    | Defender AntiMalware engine is up to date.                    |
| unknown                    | State of Defender AntiMalware engine is unknown.              |
| notSupported               | Defender AntiMalware engine is not supported on this platform.|
| unknownFutureValue         | unknownFutureValue for evolvable enums pattern.               |


### deviceHealthStatus values 

| Member                     | Description                                                               |
| :--------------------------| :------------------------------------------------------------------------ |
| active                               | Device is active and reporting to all channels.                 |
| inactive                             | Device is not reporting to any channel.                         |
| impairedCommunication                | Device is not connected to the CnC.                             |
| noSensorData                         | Device is not sending telemetry.                                |
| noSensorDataImpairedCommunication    | Device is not connected to the CnC and not sending telemetry.   |
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
| insufficientInfo           | Onboarding status cannot be determined.        |
| onboarded                  | Device is onboarded to service.                |
| canBeOnboarded             | Device is eligible to be onboarded to service. |
| unsupported                | Device is not supported by service.            |
| unknownFutureValue         | unknownFutureValue for evolvable enums pattern.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.deviceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.deviceEvidence",
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
  "firstSeenDateTime": "String (timestamp)",
  "mdeDeviceId": "String",
  "azureAdDeviceId": "String",
  "deviceDnsName": "String",
  "osPlatform": "String",
  "osBuild": "Integer",
  "version": "String",
  "rbacGroupId": "Integer",
  "rbacGroupName": "String",
  "healthStatus": "String",
  "riskScore": "String",
  "onboardingStatus": "String",
  "defenderAvStatus": "String",
  "vmMetadata": {
    "@odata.type": "microsoft.graph.security.vmMetadata"
  },
  "loggedOnUsers": [
    {
      "@odata.type": "microsoft.graph.security.loggedOnUser"
    }
  ]
}
```