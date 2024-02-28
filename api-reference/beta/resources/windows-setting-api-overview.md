---
title: "Microsoft Graph Windows Setting APIs to retrive Windows OS settings stored in cloud"
description: "The Windows Setting APIs enable users and authorized third parties to access users’ Windows operating system settings data that is stored in Microsoft cloud. The APIs facilitate sharing and exporting of the data in a secure and compliant manner, ensuring that data is only shared with explicit user consent. The APIs demonstrate Microsoft’s dedication to user privacy and adherence to the EU Digital Markets Act, offering a clear and user-focused way of data portability."
ms.localizationpriority: medium
doc_type: conceptualPageType
author: "MS-Arko"
ms.prod: "cross-device-experiences"
---

# Microsoft Graph Windows Setting APIs to retrive Windows OS settings stored in cloud

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Windows Setting APIs enable users and authorized third parties to access users’ Windows operating system settings data that is stored in Microsoft cloud. The APIs facilitate sharing and exporting of the data in a secure and compliant manner, ensuring that data is only shared with explicit user consent. The APIs demonstrate Microsoft’s dedication to user privacy and adherence to the EU Digital Markets Act, offering a clear and user-focused way of Windows settings data portability.

## Windows Settings

A [**windowsSetting**](../resources/windowssetting.md) represents various settings from the Windows operating system that are stored in the cloud for a given user.

There are two types of [windowsSetting](../resources/windowssetting.md): `roaming` and `backup`. The *settingType* property of a [windowsSetting](../resources/windowssetting.md) object indicates the type of the setting.

| settingType        | Description                        |
| :----------------- | :--------------------------------- |
| roaming            | Windows setting is associated with a user's account. It is consistent across all devices and any changes to the setting value are synced or applied to all Windows devices that the user owns.|
| backup             | Windows setting does not roam or sync accross devices. This type of setting is used in device backup and restore scenarios.|

 A [windowsSetting](../resources/windowssetting.md) of type `backup` may have a *windowsDeviceId* property that links the setting to a specific device.

 The [List Windows settings stored in cloud](../api/usersettings-list-windows.md) API returns a collection of [windowsSetting](../resources/windowssetting.md) objects and their properties. The result can be filtered by *windowsDeviceId* and *settingType* properties.

The [Get Windows setting stored in cloud](../api/windowssetting-get.md) API allows to pass the ID of a [windowsSetting](../resources/windowssetting.md) in the URL to read a specific Windows setting object.

The following JSON representation shows an example Windows setting. The instances collection in it represents **Windows setting instances**, elaborated in the next section.

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

>Warning: The structure of the **ID** of a [**windowsSetting**](../resources/windowssetting.md) is not guaranteed and the caller should not take any dependency on it. The ID should be treated as an opaque string.

## Windows Setting Instances

A [**windowsSettingInstance**](../resources/windowssettinginstance.md) represents a setting instance from the Windows operating system that is stored in the cloud for a given user. A [windowsSettingInstance](../resources/windowssettinginstance.md) belongs to a [windowsSetting](../resources/windowssetting.md).

The following JSON representation shows an example windows setting instance.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsSettingInstance",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsSettingInstance",
  "id": "6984732f-86b0-8e31-dc02-37fce0df6d61",
  "payload": "VGhpcyBpcyBhbm90aGVyIGp1c3QgYW4gZXhhbXBsZSE=",
  "lastModifiedDateTime": "2024-10-31T23:30:41Z",
  "createdDateTime": "2024-02-12T19:34:35.223Z",
  "expirationDateTime": "2034-02-09T19:34:33.771Z"
}
```

The [List Windows setting instances stored in cloud](../api/windowssetting-list-instances.md) API returns a collection of [windowsSettingInstance](../resources/windowssettinginstance.md) objects and their properties. The API requires the ID of a [windowsSetting](../resources/windowssetting.md) in the URL to read the setting instances.

The [Get Windows setting instance stored in cloud](../api/windowssettinginstance-get.md) API allows to pass the ID of a [windowsSetting](../resources/windowssetting.md) and [windowsSettingInstance](../resources/windowssettinginstance.md) in the URL to read a specific windows setting instance object.

The *payload* property of a [**windowsSettingInstance**](../resources/windowssettinginstance.md) contains the actual setting value. The *payload* is a string in Base64 encoded format. The *payloadType* property of the [**windowsSetting**](../resources/windowssetting.md) object indicates the type of the setting value. The *payload* when decoded is a JSON object which differs from setting to setting and is specific to the *payloadType*.

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

In this example, the payloadType `windows.data.fileexplorerclassic.advancedsettings` represents some of the settings that the File Explorer backs up to the cloud. The Base64 payload can be decoded to a UTF-8 string to see the JSON representation of this object.

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
Rather than being a setting the user has applied, this type records information about devices that have opted into settings backup features. Two properties in this object are useful for understanding the rest of the settings: *deviceDisplayName* and *profileId*. 

- *deviceDisplayName* is the name of the computer which can be seen in Windows system settings at "**Start** > **Settings** > **System**".
- *profileId* is an identifier used to link [**windowsSetting**](../resources/windowssetting.md) items to the device that uploaded them. This property corresponds to **windowsSetting.windowsDeviceId** and can be used as a filter to get settings for a specific device from [List Windows settings stored in cloud](../api/usersettings-list-windows.md) API.

The following example shows this resource type.

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

The **backupUnitStore** payloadType settings are unique in that the actual settings value is a **blob** in the data property. This is because **backupUnitStore** settings are collected directly from the Windows registry, on disk files, or other at rest locations throughout Windows. These settings were not designed to be interoperable with experiences besides the components that created them, but they have been included in this API for comprehensive coverage of all Windows settings stored in the cloud.