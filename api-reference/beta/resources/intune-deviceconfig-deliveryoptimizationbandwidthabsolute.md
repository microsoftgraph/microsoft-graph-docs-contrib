---
title: "deliveryOptimizationBandwidthAbsolute resource type"
description: "Bandwidth limits in kilobytes per second."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deliveryOptimizationBandwidthAbsolute resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Bandwidth limits in kilobytes per second.


Inherits from [deliveryOptimizationBandwidth](../resources/intune-deviceconfig-deliveryoptimizationbandwidth.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|maximumDownloadBandwidthInKilobytesPerSecond|Int64|Specifies the maximum download bandwidth in KiloBytes/second that the device can use across all concurrent download activities using Delivery Optimization. Valid values 0 to 4294967295
The value 0 (zero) means that Delivery Optimization dynamically adjusts to use the available bandwidth for downloads. Valid values 0 to 4294967295|
|maximumUploadBandwidthInKilobytesPerSecond|Int64|Specifies the maximum upload bandwidth in KiloBytes/second that a device will use across all concurrent upload activity using Delivery Optimization (0-4000000). Valid values 0 to 4000000
The default value is 0, which permits unlimited possible bandwidth (optimized for minimal usage of upload bandwidth). Valid values 0 to 4000000|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deliveryOptimizationBandwidthAbsolute"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deliveryOptimizationBandwidthAbsolute",
  "maximumDownloadBandwidthInKilobytesPerSecond": 1024,
  "maximumUploadBandwidthInKilobytesPerSecond": 1024
}
```