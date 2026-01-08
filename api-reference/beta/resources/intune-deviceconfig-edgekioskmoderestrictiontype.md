---
title: "edgeKioskModeRestrictionType enum type"
description: "Specify how the Microsoft Edge settings are restricted based on kiosk mode."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# edgeKioskModeRestrictionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specify how the Microsoft Edge settings are restricted based on kiosk mode.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured (unrestricted).|
|digitalSignage|1|Interactive/Digital signage in single-app mode.|
|normalMode|2|Normal mode (full version of Microsoft Edge).|
|publicBrowsingSingleApp|3|Public browsing in single-app mode.|
|publicBrowsingMultiApp|4|Public browsing (inPrivate) in multi-app mode.|