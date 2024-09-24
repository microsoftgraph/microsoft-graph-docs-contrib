---
title: "cloudPcAutopilotConfiguration resource type"
description: "Represents specific settings for Windows Autopilot that enable Windows 365 customers to experience it on Cloud PC."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcAutopilotConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents specific settings for Windows Autopilot that enable Windows 365 customers to experience it on Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|devicePreparationProfileId|String|The unique identifier(ID) of Autopilot Device Preparation Profile(DPP). It's used to link Windows Autopilot Device Preparation policy to make sure devices are ready for users after provisioning. Required.|
|applicationTimeoutInMinutes|Int32|Indicates time in minutes which is allowed for Autopilot application to apply Device Preparation Profile (DPP) configurations on the device. If the Autopilot application doesn't finished in specified time (`applicationTimeoutInMinutes`), then application error will be added to `statusDetail` of `microsoft.graph.cloudPC` . The value is an Integer between 10 to 360. Required.|
|onFailureDeviceAccessDenied|Boolean|Indicates whether the access to device when the application Autopilot Device Preparation Profile (DPP) configurations fails or times out. When TRUE, the `status` of the device is `failed` and the device is unable to access. When FALSE, the `status` of the device is `provisionedWithWarnings` and the device is allowed to access. The default value is `false`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAutopilot"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAutopilot",
  "devicePreparationProfileId": "String (identifier)",
  "applicationTimeoutInMinutes": "Int32",
  "onFailureDeviceAccessDenied": "Boolean"
}
```
