---
title: "windowsSetting resource type"
description: "windowsSetting represents settings from Windows operating system."
author: "MS-Arko"
ms.localizationpriority: medium
ms.prod: "cross-device-experiences"
doc_type: resourcePageType
---

# windowsSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**windowsSetting** represents settings from Windows operating system that are stored in the cloud for a given user.

There are two types of **windowsSetting**: `roaming` and `backup`. More information about the types of **windowsSetting** can be found in the [windowsSettingType](enums.md) enum. A **windowsSetting** of type `backup` has a *windowsDeviceId* property that links the setting to a specific device.

When getting a list of **windowsSetting** objects, the result can be filtered by *windowsDeviceId* and *settingType* properties. For more information, see [List Windows settings stored in cloud](../api/usersettings-list-windows.md).

The *windowsDeviceId* is a unique identifier for a device. The device that a **windowsSetting** of type `backup` is associated with is indicated by the *windowsDeviceId*. However, it is a guid and does not help to identify the actual device by a friendly property like device name. To identify the device that the *windowsDeviceId* refers to, the following steps can be followed:

- Use the [List Windows settings stored in cloud](../api/usersettings-list-windows.md) API to list all the settings for the user.
- Find the id of the device profile setting.
- Use the [settings API](../api/windowssetting-get.md) to fetch the device profile setting with the id.
- The *instances* navigation property of the device profile setting will contain all the device profile setting values.
- Decode the *payload* of each setting value to find the *windowsDeviceId*, corresponding device name, and other details.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List windowsSetting objects](../api/usersettings-list-windows.md)|[windowsSetting](../resources/windowssetting.md) collection|Get a list of the [windowsSetting](../resources/windowssetting.md) objects and their properties.|
|[Get windowsSetting](../api/windowssetting-get.md)|[windowsSetting](../resources/windowssetting.md)|Read the properties and relationships of a [windowsSetting](../resources/windowssetting.md) object.|
|[List instances](../api/windowssetting-list-instances.md)|[windowsSettingInstance](../resources/windowssettinginstance.md) collection|Get the windowsSettingInstance resources from the instances navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the object.|
|payloadType|String|The type of setting payloads contained in the *instances* navigation property.|
|settingType|windowsSettingType|The type of setting. Possible values are: `roaming`, `backup`, `unknownFutureValue`. `unknownFutureValue` is a future placeholder and not a real settingType.|
|windowsDeviceId|String|A unique identifier for the device the setting belongs to if it is of the settingType `backup`.|

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
  "id": "String (identifier)",
  "windowsDeviceId": "String",
  "settingType": "String",
  "payloadType": "String"
}
```

