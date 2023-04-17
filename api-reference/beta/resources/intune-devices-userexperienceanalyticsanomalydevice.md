---
title: "userExperienceAnalyticsAnomalyDevice resource type"
description: "The user experience analytics anomaly entity contains device details."
author: "dougeby"
localization_priority: Normal
ms.prod: "Intune"
doc_type: resourcePageType
---

# userExperienceAnalyticsAnomalyDevice resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The user experience analytics anomaly entity contains device details.

## Methods
|Method|Return Type|Description|
|:---|:---|:---|
|[List userExperienceAnalyticsAnomalyDevices](../api/intune-devices-userexperienceanalyticsanomalydevice-list.md)|[userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) collection|List properties and relationships of the [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) objects.|
|[Get userExperienceAnalyticsAnomalyDevice](../api/intune-devices-userexperienceanalyticsanomalydevice-get.md)|[userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md)|Read properties and relationships of the [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object.|
|[Create userExperienceAnalyticsAnomalyDevice](../api/intune-devices-userexperienceanalyticsanomalydevice-create.md)|[userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md)|Create a new [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object.|
|[Delete userExperienceAnalyticsAnomalyDevice](../api/intune-devices-userexperienceanalyticsanomalydevice-delete.md)|None|Deletes a [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md).|
|[Update userExperienceAnalyticsAnomalyDevice](../api/intune-devices-userexperienceanalyticsanomalydevice-update.md)|[userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md)|Update the properties of a [userExperienceAnalyticsAnomalyDevice](../resources/intune-devices-userexperienceanalyticsanomalydevice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the user experience analytics anomaly device object.|
|deviceId|String|The unique identifier of the device.|
|deviceName|String|The name of the device.|
|deviceModel|String|The model name of the device.|
|deviceManufacturer|String|The manufacturer name of the device.|
|osName|String|The name of the OS installed on the device.|
|osVersion|String|The OS version installed on the device.|
|anomalyId|String|The unique identifier of the anomaly.|
|anomalyOnDeviceFirstOccurrenceDateTime|DateTimeOffset|Indicates the first occurance date and time for the anomaly on the device.|
|anomalyOnDeviceLatestOccurrenceDateTime|DateTimeOffset|Indicates the latest occurance date and time for the anomaly on the device.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.userExperienceAnalyticsAnomalyDevice"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userExperienceAnalyticsAnomalyDevice",
  "id": "String (identifier)",
  "deviceId": "String",
  "deviceName": "String",
  "deviceModel": "String",
  "deviceManufacturer": "String",
  "osName": "String",
  "osVersion": "String",
  "anomalyId": "String",
  "anomalyOnDeviceFirstOccurrenceDateTime": "String (timestamp)",
  "anomalyOnDeviceLatestOccurrenceDateTime": "String (timestamp)"
}
```




