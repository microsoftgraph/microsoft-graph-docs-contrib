---
title: "IotDeviceEvidence resource type"
description: "Represents a IoT device that is reported as part of the security detection alert."
author: "hareldamti"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 10/09/2024
---

# IoTDeviceEvidence resource type

Namespace: microsoft.graph.security

Represents a IoT device that is reported as part of the security detection alert.

Inherits from [alertEvidence](./security-alertevidence.md).

## Properties

|Property|Type|Description|
|:-------|:---|:----------|
|ioTHub|[microsoft.graph.security.azureResourceEvidence](./security-azureresourceevidence.md)|The **azureResourceEvidence** entity that represents the IoT Hub that the device belongs to.|
|deviceId|String|The device ID.|
|deviceName|String|The friendly name of the device.|
|owners|Collection(String)|The owners for the device.|
|ioTSecurityAgentId|String|The ID of the Azure Security Center for the IoT agent that is running on the device.|
|deviceType|String|The type of the device. For example, "temperature sensor," "freezer," "wind turbine," and so on.|
|source|String|The source (microsoft/vendor) of the device entity.|
|sourceRef|[microsoft.graph.security.urlEvidence](./security-urlevidence.md)|A URL reference to the source item where the device is managed.|
|manufacturer|String|The manufacturer of the device.|
|model|String|The model of the device.|
|operatingSystem|String|The operating system the device is running.|
|ipAddress|[microsoft.graph.security.ipEvidence](./security-ipevidence.md)|The current IP address of the device.|
|macAddress|String|The MAC address of the device.|
|nics|Collection([microsoft.graph.security.nicEvidence](./security-nicevidence.md))|The current network interface controllers on the device.|
|protocols|Collection(String)|The list of protocols that the device supports.|
|serialNumber|String|The serial number of the device.|
|site|String|The site location of the device.|
|zone|String|The zone location of the device within a site.|
|sensor|String|The sensor that monitors the device.|
|importance|[microsoft.graph.security.ioTDeviceImportanceType](#iotdeviceimportancetype-values)|The importance level for the IoT device. Possible values are `low`, `normal`, `high`, and `unknownFutureValue`.|
|purdueLayer|String|The Purdue Layer of the device.|
|isProgramming|Boolean|Indicates whether the device classified as a programming device.|
|isAuthorized|Boolean|Indicates whether the device classified as an authorized device.|
|isScanner|Boolean|Indicates whether the device classified as a scanner.|
|devicePageLink|String|The URL to the device page in the IoT Defender portal.|
|deviceSubType|String|The device subtype.|

### ioTDeviceImportanceType values
|Member|Description |
|:---|:---|
|low| Low importance. |
|normal| Normal importance. |
|high| High importance.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.ioTDeviceEvidence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ioTDeviceEvidence",
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
  "iotHub": {
    "@odata.type": "microsoft.graph.security.azureResourceEvidence"
  },
  "deviceId": "String",
  "deviceName": "String",
  "owners": [
    "String"
  ],
  "iotSecuritySolutionId": "Guid",
  "deviceType": "String",
  "deviceTypeId": "String",
  "source": "String",
  "sourceRef": {
    "@odata.type": "microsoft.graph.security.urlEvidence"
  },
  "manufacturer": "String",
  "model": "String",
  "operatingSystem": "String",
  "ipAddress": {
    "@odata.type": "microsoft.graph.security.ipEvidence"
  },
  "nics": [
      {
      "@odata.type": "microsoft.graph.security.nicEvidence"
    },
  ],
  "protocols": [
    "String"
  ],
  "serialNumber": "String",
  "site": "String",
  "zone": "String",
  "sensor": "String",
  "importance": {
      "@odata.type": "microsoft.graph.security.IoTDeviceImportanceType"
    },
  "purdueLayer": "String",
  "isProgramming": "Boolean",
  "isAuthorized": "Boolean",
  "isScanner": "Boolean",
  "devicePageLink": "String",
  "deviceSubType": "String",
}
```
