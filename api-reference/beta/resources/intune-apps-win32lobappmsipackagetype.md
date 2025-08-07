---
title: "win32LobAppMsiPackageType enum type"
description: "Indicates the package type of an MSI Win32LobApp."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# win32LobAppMsiPackageType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the package type of an MSI Win32LobApp.

## Members
|Member|Value|Description|
|:---|:---|:---|
|perMachine|0|Indicates a per-machine app package.|
|perUser|1|Indicates a per-user app package.|
|dualPurpose|2|Indicates a dual-purpose app package.|