---
title: "iosNotificationSettings resource type"
description: "An item describing notification setting."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# iosNotificationSettings resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An item describing notification setting.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bundleID|String|Bundle id of app to which to apply these notification settings.|
|appName|String|Application name to be associated with the bundleID.|
|publisher|String|Publisher to be associated with the bundleID.|
|enabled|Boolean|Indicates whether notifications are allowed for this app.|
|showInNotificationCenter|Boolean|Indicates whether notifications can be shown in notification center.|
|showOnLockScreen|Boolean|Indicates whether notifications can be shown on the lock screen.|
|alertType|[iosNotificationAlertType](../resources/intune-deviceconfig-iosnotificationalerttype.md)|Indicates the type of alert for notifications for this app. Possible values are: `deviceDefault`, `banner`, `modal`, `none`.|
|badgesEnabled|Boolean|Indicates whether badges are allowed for this app.|
|soundsEnabled|Boolean|Indicates whether sounds are allowed for this app.|
|previewVisibility|[iosNotificationPreviewVisibility](../resources/intune-deviceconfig-iosnotificationpreviewvisibility.md)|Overrides the notification preview policy set by the user on an iOS device. Possible values are: `notConfigured`, `alwaysShow`, `hideWhenLocked`, `neverShow`.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.iosNotificationSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.iosNotificationSettings",
  "bundleID": "String",
  "appName": "String",
  "publisher": "String",
  "enabled": true,
  "showInNotificationCenter": true,
  "showOnLockScreen": true,
  "alertType": "String",
  "badgesEnabled": true,
  "soundsEnabled": true,
  "previewVisibility": "String"
}
```