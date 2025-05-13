---
title: "managedAppFlaggedReason enum type"
description: "The reason for which a user has been flagged"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppFlaggedReason enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The reason for which a user has been flagged

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No issue.|
|rootedDevice|1|The app registration is running on a rooted/unlocked device.|
|androidBootloaderUnlocked|2|The app registration is running on an Android device on which the bootloader is unlocked.|
|androidFactoryRomModified|3|The app registration is running on an Android device on which the factory ROM has been modified.|