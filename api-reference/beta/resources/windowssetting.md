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

>Warning: The structure of the id of a **windowsSetting** is not guranateed and the caller should not take any dependency on it. The id should be treated as an opaque string.

There are two types of **windowsSetting**: `roaming` and `backup`. More information about the types of **windowsSetting** can be found in the [windowsSettingType](enums.md#windowssettingtype-values) enum. A **windowsSetting** of type `backup` may have a *windowsDeviceId* property that links the setting to a specific device.

When getting a list of **windowsSetting** objects, the result can be filtered by *windowsDeviceId* and *settingType* properties. For more information, see [List Windows settings stored in cloud](../api/usersettings-list-windows.md).

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
|settingType|windowsSettingType|The type of setting. Possible values are: `roaming`, `backup`, `unknownFutureValue`.<br />Note, *unknownFutureValue* is a future placeholder and not a real settingType.|
|windowsDeviceId|String|A unique identifier for the device the setting may belong to if it is of the settingType `backup`.|

## About the *payloadType* property
### Introduction
The payloadType defines the structure of a [windowsSettingInstance](./windowssettinginstance.md) payload. There are numerous payloadTypes in Windows which represent distinct setting structures used by different experiences in the operating system. As Windows evolves, more payloadTypes are created and onboarded to the cloud. 

Following is an example of a windowsSetting from the API.

```json
{
    "id": "default$windows.data.fileexplorerclassic.advancedsettings",
    "settingType": "roaming",
    "payloadType": "windows.data.fileexplorerclassic.advancedsettings",
    "instances": [
        {
            "id": "d9a7f6e2-8c4b-4e3a-bf7c-1e5a9d8c6f4b",
            "payload": "eyJtaWdyYXRlZEZyb21TU0YiOmZhbHNlLCJhbHdheXNTaG93TWVudXMiOmZhbHNlLCJmb2xkZXJDb250ZW50c0luZm9UaXAiOmZhbHNlLCJoaWRlRHJpdmVzV2l0aE5vTWVkaWEiOmZhbHNlLCJuYXZQYW5lRXhwYW5kVG9DdXJyZW50Rm9sZGVyIjpmYWxzZSwibmF2UGFuZVNob3dBbGxGb2xkZXJzIjpmYWxzZSwibmF2UGFuZVNob3dGYXZvcml0ZXMiOmZhbHNlLCJwZXJzaXN0QnJvd3NlcnMiOmZhbHNlLCJzaGFyaW5nV2l6YXJkT24iOmZhbHNlLCJzaG93RHJpdmVMZXR0ZXJzIjpmYWxzZSwic2hvd1ByZXZpZXdIYW5kbGVycyI6ZmFsc2UsInR5cGVBaGVhZCI6ZmFsc2UsInNob3dTdGF0dXNCYXIiOmZhbHNlLCJzaG93TGlicmFyaWVzIjpmYWxzZSwic2hvd0NvbXBDb2xvciI6ZmFsc2V9",
            "lastModifiedDateTime": "2022-06-27T00:53:00Z",
            "createdDateTime": "2024-02-13T19:51:15.8217101Z",
            "expirationDateTime": "2034-02-10T19:51:14.813Z"
        }
    ]
}
```
The *payload* is a base64 encoded JSON string, which has the properties of given *payloadType* `windows.data.fileexplorerclassic.advancedsettings`. The decoded structure of the *payload* is shown below for example.

```json
{
    "migratedFromSSF": false,
    "alwaysShowMenus": false,
    "folderContentsInfoTip": false,
    "hideDrivesWithNoMedia": false,
    "navPaneExpandToCurrentFolder": false,
    "navPaneShowAllFolders": false,
    "navPaneShowFavorites": false,
    "persistBrowsers": false,
    "sharingWizardOn": false,
    "showDriveLetters": false,
    "showPreviewHandlers": false,
    "typeAhead": false,
    "showStatusBar": false,
    "showLibraries": false,
    "showCompColor": false
}
```
### Notable PayloadTypes

There are several notable **payloadTypes** available in Windows that represent distinct setting structures used by distinguished features and experiences in the operating system. To learn more about them, see the list below.

#### **Device Profile**: 
This payloadType represents settings related to device profiles. A device profile contains additional information about the device on which the Windows operation system is hosted. If a user has multiple Windows devices, then multiple instances will exist for the user under the device profile **windowsSetting**. An example of a device profile **windowsSetting** is,

```json
{
    "id": "default$windows.data.platform.backuprestore.deviceprofile$deviceprofiles",
    "settingType": "backup",
    "payloadType": "windows.data.platform.backuprestore.deviceprofile",
    "instances": [
        {
            "id": "73b1a0b8-262a-4804-592a-b82a3a2a0c0d",
            "payload": "ewogICAgInByb2ZpbGVJZCI6ICJ7OTViM2EyYzgtNDgyYS00YTA2LTdiM2EtZGEyYTVhNGIyYzBmfSIsCiAgICAiZGV2aWNlRGlzcGxheU5hbWUiOiAiRVhBTVBMRVVTRVJERVNLVE9QIiwKICAgICJjcmVhdGVkQnkiOiAid2luZG93cyIsCiAgICAic291cmNlUHJvZmlsZUlkIjogIiIsCiAgICAiY3JlYXRlZFRpbWUiOiAxNjY0NjgwNTg5LAogICAgIm1vZGlmaWVkVGltZSI6IDE2OTg3OTUwNDAsCiAgICAiaXNBY3RpdmUiOiB0cnVlLAogICAgImxhc3RGdWxsQmFja3VwQ29tcGxldGVkVGltZSI6IDE2OTgzMzIxMzcsCiAgICAib3NWZXJzaW9uIjogIjE4MDQ1LjM3NTAudmJfcmVsZWFzZSIKfQ==",
            "lastModifiedDateTime": "2023-10-31T23:30:40Z",
            "createdDateTime": "2024-02-13T22:49:02.376Z",
            "expirationDateTime": "2034-02-10T22:49:03.365Z"
        }
    ]
}
```
The payload after decoding is shown below for example.

```json
{
    "profileId": "{95b3a2c8-482a-4a06-7b3a-da2a5a4b2c0f}",
    "deviceDisplayName": "EXAMPLEUSERDESKTOP",
    "createdBy": "windows",
    "sourceProfileId": "",
    "createdTime": 1664680589,
    "modifiedTime": 1698795040,
    "isActive": true,
    "lastFullBackupCompletedTime": 1698332137,
    "osVersion": "18045.3750.vb_release"
}
```

Two notable properties in the decoded payload are *deviceDisplayName* and *profileId*. The *deviceDisplayName* is the name of the device and the *profileId* is the unique identifier of it.

The significance of the *profileId* is that it correlates with the *windowsDeviceId* property of any **windowsSetting** of type `backup`. This helps to identify the device that a **windowsSetting** of type `backup` is associated with. 

Following are the step by step instructions on how to find the corresponding device for a given *windowsDeviceId*:

- Use the [List Windows settings stored in cloud](../api/usersettings-list-windows.md) API to list all the settings for the user.
- Find the device profile related setting. As shown in the example above, the *payloadType* property of device profile setting will be `windows.data.platform.backuprestore.deviceprofile`.
- Decode the *payload* of each setting instance to get the *profileIds* and corresponding *deviceDisplayNames*.
- Find the *profileId* matching with the *windowsDeviceId* of the **windowsSetting** of type `backup` to identify the corresponding device.

#### **Service Driven Onboarding**: 
This payloadType represents settings related to service-driven onboarding.

**TODO**



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

