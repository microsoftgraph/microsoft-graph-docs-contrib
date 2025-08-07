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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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