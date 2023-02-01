---
title: "winGetAppInstallTimeSettings resource type"
description: "Contains properties used to determine when to offer an app to devices and when to install the app on devices."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: resourcePageType
---

# winGetAppInstallTimeSettings resource type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties used to determine when to offer an app to devices and when to install the app on devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|useLocalTime|Boolean|Whether the local device time or UTC time should be used when determining the deadline times.|
|deadlineDateTime|DateTimeOffset|The time at which the app should be installed.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.winGetAppInstallTimeSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.winGetAppInstallTimeSettings",
  "useLocalTime": true,
  "deadlineDateTime": "String (timestamp)"
}
```
