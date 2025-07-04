---
title: "windowsHealthMonitoringScope enum type"
description: "Device health monitoring scope"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsHealthMonitoringScope enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device health monitoring scope

## Members
|Member|Value|Description|
|:---|:---|:---|
|undefined|0|Undefined|
|healthMonitoring|1|Basic events for windows device health monitoring|
|bootPerformance|2|Boot performance events|
|windowsUpdates|4|Windows updates events|
|privilegeManagement|8|PrivilegeManagement|