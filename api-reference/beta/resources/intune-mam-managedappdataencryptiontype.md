---
title: "managedAppDataEncryptionType enum type"
description: "Represents the level to which app data is encrypted for managed apps"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppDataEncryptionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the level to which app data is encrypted for managed apps

## Members
|Member|Value|Description|
|:---|:---|:---|
|useDeviceSettings|0|App data is encrypted based on the default settings on the device.|
|afterDeviceRestart|1|App data is encrypted when the device is restarted.|
|whenDeviceLockedExceptOpenFiles|2|App data associated with this policy is encrypted when the device is locked, except data in files that are open|
|whenDeviceLocked|3|App data associated with this policy is encrypted when the device is locked|