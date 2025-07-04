---
title: "deviceManagementExchangeAccessLevel enum type"
description: "Access Level in Exchange."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementExchangeAccessLevel enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Access Level in Exchange.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No device access rule has been configured in Exchange.|
|allow|1|Allow the device access to Exchange.|
|block|2|Block the device from accessing Exchange.|
|quarantine|3|Quarantine the device in Exchange.|