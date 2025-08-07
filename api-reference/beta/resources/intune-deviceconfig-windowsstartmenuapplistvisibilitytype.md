---
title: "windowsStartMenuAppListVisibilityType enum type"
description: "Type of start menu app list visibility."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsStartMenuAppListVisibilityType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of start menu app list visibility.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User defined. Default value.|
|collapse|1|Collapse the app list on the start menu.|
|remove|2|Removes the app list entirely from the start menu.|
|disableSettingsApp|4|Disables the corresponding toggle (Collapse or Remove) in the Settings app.|