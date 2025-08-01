---
title: "iosKioskModeAppType enum type"
description: "App source options for iOS kiosk mode."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# iosKioskModeAppType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

App source options for iOS kiosk mode.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|appStoreApp|1|The app to be run comes from the app store.|
|managedApp|2|The app to be run is built into the device.|
|builtInApp|3|The app to be run is a managed app.|