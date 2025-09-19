---
title: "macOSMinimumOperatingSystem resource type"
description: "The minimum operating system required for a macOS app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# macOSMinimumOperatingSystem resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The minimum operating system required for a macOS app.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|v10_7|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.7 or later is required to install the app. If 'False', OS X Version 10.7 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_8|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.8 or later is required to install the app. If 'False', OS X Version 10.8 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_9|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.9 or later is required to install the app. If 'False', OS X Version 10.9 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_10|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.10 or later is required to install the app. If 'False', OS X Version 10.10 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_11|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.11 or later is required to install the app. If 'False', OS X Version 10.11 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_12|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.12 or later is required to install the app. If 'False', OS X Version 10.12 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_13|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.13 or later is required to install the app. If 'False', OS X Version 10.13 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_14|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.14 or later is required to install the app. If 'False', OS X Version 10.14 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v10_15|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 10.15 or later is required to install the app. If 'False', OS X Version 10.15 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v11_0|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 11.0 or later is required to install the app. If 'False', OS X Version 11.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v12_0|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 12.0 or later is required to install the app. If 'False', OS X Version 12.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v13_0|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 13.0 or later is required to install the app. If 'False', OS X Version 13.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v14_0|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 14.0 or later is required to install the app. If 'False', OS X Version 14.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v15_0|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 15.0 or later is required to install the app. If 'False', OS X Version 15.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|
|v26_0|Boolean|Indicates the minimum OS X version support required for the managed device. When 'True', macOS with OS X 26.0 or later is required to install the app. If 'False', OS X Version 26.0 is not the minimum version. Default value is False. Exactly one of the minimum operating system boolean values will be TRUE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.macOSMinimumOperatingSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.macOSMinimumOperatingSystem",
  "v10_7": true,
  "v10_8": true,
  "v10_9": true,
  "v10_10": true,
  "v10_11": true,
  "v10_12": true,
  "v10_13": true,
  "v10_14": true,
  "v10_15": true,
  "v11_0": true,
  "v12_0": true,
  "v13_0": true,
  "v14_0": true,
  "v15_0": true,
  "v26_0": true
}
```