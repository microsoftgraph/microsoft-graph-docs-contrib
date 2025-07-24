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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the package type of an MSI Win32LobApp.

## Members
|Member|Value|Description|
|:---|:---|:---|
|perMachine|0|Indicates a per-machine app package.|
|perUser|1|Indicates a per-user app package.|
|dualPurpose|2|Indicates a dual-purpose app package.|