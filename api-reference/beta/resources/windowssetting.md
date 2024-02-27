---
title: "windowsSetting resource type"
description: "Represents settings from the Windows operating system."
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
The *payloadType* defines the structure of a [windowsSettingInstance](./windowssettinginstance.md) payload. There are numerous payloadTypes in Windows which represent distinct setting structures used by different experiences in the operating system. As Windows evolves, more payloadTypes are created and onboarded to the cloud. Querying the API and exploring the settings available is the best way to learn about the various payloadTypes, but users and admins have control over which settings are uploaded to the cloud and most components do not upload default settings that the user has not customized.

Following is an example of a settingsInstance from the API.

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

In this example, the payloadType `windows.data.fileexplorerclassic.advancedsettings` represents some of the settings that the File Explorer backs up to the cloud. The base64 payload can be decoded to a UTF-8 string to see the JSON representation of this object.

**Payload decoded:**
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

It is common for the properties in the object to be a subset of those available in the component’s user experience as component owners decide which settings provide the most value when uploaded to the cloud.

### PayloadTypes of particular interest

Some payloadTypes have a special role in the Windows settings backup process.

#### windows.data.platform.backuprestore.deviceprofile 
Rather than being a setting the user has applied, this type records information about devices that have opted into settings backup features. Two properties in this object are useful for understanding the rest of the settings: deviceDisplayName and profileId. 

- *deviceDisplayName* is the name of the computer which can be seen in Windows system settings at "**Start** > **Settings** > **System**".
- *profileId* is an identifier used to link **WindowsSettings** items to the device that uploaded them. This property corresponds to **windowsSetting.windowsDeviceId** and can be used as a filter to get settings for a specific device from [List Windows settings stored in cloud](../api/usersettings-list-windows.md) API.

Following is an example of this setting.

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
**Payload decoded:**

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

#### windows.data.platform.settingsbackup.backupunitstore

The **backupUnitStore** payloadType settings are unique in that the actual settings value is a **blob** in the data property. This is because **backupUnitStore** settings are collected directly from the Windows registry, on disk files, or other at rest locations throughout Windows. These settings were not designed to be interoperable with experiences besides the components that created them, but they have been included in this API for comprehensive coverage of all Windows settings in the cloud.


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

