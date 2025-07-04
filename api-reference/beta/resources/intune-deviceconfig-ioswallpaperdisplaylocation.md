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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum type for wallpaper display location specifier.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|No location specified for wallpaper display.|
|lockScreen|1|A configured wallpaper image is displayed on Lock screen.|
|homeScreen|2|A configured wallpaper image is displayed on Home (icon list) screen.|
|lockAndHomeScreens|3|A configured wallpaper image is displayed on Lock screen and Home screen.|