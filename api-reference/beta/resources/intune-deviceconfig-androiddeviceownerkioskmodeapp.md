---
title: "androidDeviceOwnerKioskModeApp resource type"
description: "An application on the Android Device Owner Managed Home Screen"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# androidDeviceOwnerKioskModeApp resource type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An application on the Android Device Owner Managed Home Screen


Inherits from [androidDeviceOwnerKioskModeFolderItem](../resources/intune-deviceconfig-androiddeviceownerkioskmodefolderitem.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|package|String|Package name of application|
|className|String|Class name of application|
|offlineAppAccessEnabled|Boolean|Indicates whether the application can be used when sign in fails due to network issues in Managed Home Screen. When TRUE, indicates the application can be used when sign in fails due to network issues in Managed Home Screen. When FALSE, indicates the application cannot be used when sign in fails due to network issues in Managed Home Screen. Default value is FALSE.|
|preSignInAppAccessEnabled|Boolean|Indicates whether the application can be used prior to signing in to the Managed Home Screen. When TRUE, indicates the app can be used prior to sign in for Managed Home Screen. When FALSE, indicates the app cannot be used prior to sign in for Managed Home Screen. Default value is FALSE.|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.androidDeviceOwnerKioskModeApp"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.androidDeviceOwnerKioskModeApp",
  "package": "String",
  "className": "String",
  "offlineAppAccessEnabled": true,
  "preSignInAppAccessEnabled": true
}
```