---
title: "cloudPcAutopilotConfiguration resource type"
description: "Represents specific settings for Windows Autopilot that enable Windows 365 customers to experience it on Cloud PC."
author: "ChyouChyou"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 09/27/2024
---

# cloudPcAutopilotConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents specific settings for Windows Autopilot that enable Windows 365 customers to experience it on Cloud PC.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applicationTimeoutInMinutes|Int32|Indicates the number of minutes allowed for the Autopilot application to apply the device preparation profile (DPP) configurations to the device. If the Autopilot application doesn't finish within the specified time (**applicationTimeoutInMinutes**), the application error is added to the **statusDetail** property of the [cloudPC](../resources/cloudpc.md) object. The supported value is an integer between `30` and `360`. Required.|
|devicePreparationProfileId|String|The unique identifier (ID) of the Autopilot device preparation profile (DPP) that links a Windows Autopilot device preparation policy to ensure that devices are ready for users after provisioning. Required.|
|onFailureDeviceAccessDenied|Boolean|Indicates whether the access to the device is allowed when the application of Autopilot device preparation profile (DPP) configurations fails or times out. If `true`, the **status** of the device is `failed` and the device is unable to access; otherwise, the **status** of the device is `provisionedWithWarnings` and the device is allowed to access. The default value is `false`. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAutopilotConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAutopilotConfiguration",
  "applicationTimeoutInMinutes": "Int32",
  "devicePreparationProfileId": "String (identifier)",
  "onFailureDeviceAccessDenied": "Boolean"
}
```
