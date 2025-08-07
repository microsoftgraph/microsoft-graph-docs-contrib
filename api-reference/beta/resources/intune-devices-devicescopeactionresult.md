---
title: "deviceScopeActionResult resource type"
description: "The result of the triggered device scope action."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# deviceScopeActionResult resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The result of the triggered device scope action.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|deviceScopeAction|deviceScopeAction|The triggered action name. Possible values are: .|
|deviceScopeId|String|The unique identifier of the device scope the action was triggered on.|
|status|[deviceScopeActionStatus](../resources/intune-devices-devicescopeactionstatus.md)|Indicates the status of the attempt device scope action. When succeeded, the action was succeessfully triggered, When failed, the action was failed to trigger. Possible values are: `failed`, `succeeded`, `unknownFutureValue`.|
|failedMessage|String|The message indicates the reason the device scope action failed to trigger.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.deviceScopeActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.deviceScopeActionResult",
  "deviceScopeAction": "String",
  "deviceScopeId": "String",
  "status": "String",
  "failedMessage": "String"
}
```