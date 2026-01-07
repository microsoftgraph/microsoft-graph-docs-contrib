---
title: "iosWallpaperDisplayLocation enum type"
description: "An enum type for wallpaper display location specifier."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# iosWallpaperDisplayLocation enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum type for wallpaper display location specifier.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|No location specified for wallpaper display.|
|lockScreen|1|A configured wallpaper image is displayed on Lock screen.|
|homeScreen|2|A configured wallpaper image is displayed on Home (icon list) screen.|
|lockAndHomeScreens|3|A configured wallpaper image is displayed on Lock screen and Home screen.|