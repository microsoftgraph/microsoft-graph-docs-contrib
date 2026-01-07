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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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