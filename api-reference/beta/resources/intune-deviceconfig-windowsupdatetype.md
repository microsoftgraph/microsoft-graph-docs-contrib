---
title: "windowsUpdateType enum type"
description: "Which branch devices will receive their updates from"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsUpdateType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Which branch devices will receive their updates from

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Allow the user to set.|
|all|1|Semi-annual Channel (Targeted). Device gets all applicable feature updates from Semi-annual Channel (Targeted).|
|businessReadyOnly|2|Semi-annual Channel. Device gets feature updates from Semi-annual Channel.|
|windowsInsiderBuildFast|3|Windows Insider build - Fast|
|windowsInsiderBuildSlow|4|Windows Insider build - Slow|
|windowsInsiderBuildRelease|5|Release Windows Insider build|