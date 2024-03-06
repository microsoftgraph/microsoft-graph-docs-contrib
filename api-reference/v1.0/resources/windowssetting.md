---
title: "windowsSetting resource type"
description: "Represents settings from the Windows operating system."
author: "MS-Arko"
ms.localizationpriority: medium
ms.prod: "project-rome"
doc_type: resourcePageType
---

# windowsSetting resource type

Namespace: microsoft.graph

Represents settings from the Windows operating system that are stored in the cloud for a given user.

> [!WARNING]
> The structure of the ID of a **windowsSetting** is not guaranteed and the caller should not take any dependency on it. The ID should be treated as an opaque string.

Windows settings can be of the following two types: `roaming` and `backup`.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List Windows settings](../api/usersettings-list-windows.md)|[windowsSetting](../resources/windowssetting.md) collection|Get a list of the [windowsSetting](../resources/windowssetting.md) objects and their properties.|
|[Get windowsSetting](../api/windowssetting-get.md)|[windowsSetting](../resources/windowssetting.md)|Read the properties and relationships of a [windowsSetting](../resources/windowssetting.md) object.|
|[List instances](../api/windowssetting-list-instances.md)|[windowsSettingInstance](../resources/windowssettinginstance.md) collection|Read the properties and relationships of a [windowsSettingInstance](../resources/windowssettinginstance.md) object by passing the Windows setting ID and Windows setting instance ID in the URL.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the object.|
|payloadType|String|The type of setting payloads contained in the *instances* navigation property.|
|settingType|**windowsSettingType**|The type of setting. Possible values are: `roaming`, `backup`, `unknownFutureValue`.|
|windowsDeviceId|String|A unique identifier for the device the setting might belong to if it is of the **settingType** `backup`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|instances|[windowsSettingInstance](../resources/windowssettinginstance.md) collection|A collection of setting values for a given **windowsSetting**.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsSetting",
  "id": "{67585f9f-ee4b-4dd8-808e-d88375d66ef7}$windows.data.apps.devicemetadata",
  "windowsDeviceId": "67585f9f-ee4b-4dd8-808e-d88375d66ef7",
  "settingType": "backup",
  "payloadType": "windows.data.apps.devicemetadata",
  "instances": [
            {
                "id": "14b50191-10e5-4da5-9099-8c909b8458bd",
                "payload": "VGhpcyBpcyBqdXN0IGFuIGV4YW1wbGUh",
                "lastModifiedDateTime": "2024-10-31T23:30:41Z",
                "createdDateTime": "2024-02-12T19:34:35.223Z",
                "expirationDateTime": "2034-02-09T19:34:33.771Z"
            }
        ]
}
```

