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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of start menu app list visibility.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User defined. Default value.|
|collapse|1|Collapse the app list on the start menu.|
|remove|2|Removes the app list entirely from the start menu.|
|disableSettingsApp|4|Disables the corresponding toggle (Collapse or Remove) in the Settings app.|