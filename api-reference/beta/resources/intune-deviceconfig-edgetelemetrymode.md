---
title: "edgeTelemetryMode enum type"
description: "Type of browsing data sent to Microsoft 365 analytics"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# edgeTelemetryMode enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of browsing data sent to Microsoft 365 analytics

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Default – No telemetry data collected or sent|
|intranet|1|Allow sending intranet history only: Only send browsing history data for intranet sites|
|internet|2|Allow sending internet history only: Only send browsing history data for internet sites|
|intranetAndInternet|3|Allow sending both intranet and internet history: Send browsing history data for intranet and internet sites|