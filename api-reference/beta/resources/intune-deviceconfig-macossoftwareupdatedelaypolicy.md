---
title: "macOSSoftwareUpdateDelayPolicy enum type"
description: "Flag enum to determine whether to delay software updates for macOS."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSSoftwareUpdateDelayPolicy enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Flag enum to determine whether to delay software updates for macOS.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Software update delays will not be enforced.|
|delayOSUpdateVisibility|1|Force delays for OS software updates.|
|delayAppUpdateVisibility|2|Force delays for app software updates.|
|unknownFutureValue|4|Sentinel member for cases where the client cannot handle the new enum values.|
|delayMajorOsUpdateVisibility|8|Force delays for major OS software updates.|