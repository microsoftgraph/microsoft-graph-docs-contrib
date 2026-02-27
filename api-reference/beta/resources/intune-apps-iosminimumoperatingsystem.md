---
title: "iosMinimumOperatingSystem resource type"
description: "Contains properties of the minimum operating system required for an iOS mobile app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# iosMinimumOperatingSystem resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains properties of the minimum operating system required for an iOS mobile app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|v8_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 8.0 or later is required to install the app. If 'False', iOS Version 8.0  is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v9_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 9.0 or later is required to install the app. If 'False', iOS Version 9.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 10.0 or later is required to install the app. If 'False', iOS Version 10.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v11_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 11.0 or later is required to install the app. If 'False', iOS Version 11.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v12_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 12.0 or later is required to install the app. If 'False', iOS Version 12.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v13_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 13.0 or later is required to install the app. If 'False', iOS Version 13.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v14_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 14.0 or later is required to install the app. If 'False', iOS Version 14.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v15_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 15.0 or later is required to install the app. If 'False', iOS Version 15.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v16_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 16.0 or later is required to install the app. If 'False', iOS Version 16.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v17_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 17.0 or later is required to install the app. If 'False', iOS Version 17.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v18_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 18.0 or later is required to install the app. If 'False', iOS Version 18.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v26_0|Boolean|Indicates the minimum iOS version support required for the managed device. When 'True', iOS with OS Version 26.0 or later is required to install the app. If 'False', iOS Version 26.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosMinimumOperatingSystem",
  "v8_0": true,
  "v9_0": true,
  "v10_0": true,
  "v11_0": true,
  "v12_0": true,
  "v13_0": true,
  "v14_0": true,
  "v15_0": true,
  "v16_0": true,
  "v17_0": true,
  "v18_0": true,
  "v26_0": true
}
```