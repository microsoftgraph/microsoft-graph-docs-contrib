---
title: "windowsUpdateStatus enum type"
description: "Windows update for business configuration device states"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsUpdateStatus enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Windows update for business configuration device states

## Members
|Member|Value|Description|
|:---|:---|:---|
|upToDate|0|There are no pending updates, no pending reboot updates and no failed updates.|
|pendingInstallation|1|There are updates that’s pending installation which includes updates that are not approved. There are no Pending reboot updates, no failed updates.|
|pendingReboot|2|There are updates that requires reboot. There are not failed updates.|
|failed|3|There are updates failed to install on the device.|