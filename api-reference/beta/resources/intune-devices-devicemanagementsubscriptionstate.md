---
title: "deviceManagementSubscriptionState enum type"
description: "Tenant mobile device management subscription state."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementSubscriptionState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Tenant mobile device management subscription state.

## Members
|Member|Value|Description|
|:---|:---|:---|
|pending|0|Pending|
|active|1|Active|
|warning|2|Warning|
|disabled|3|Disabled|
|deleted|4|Deleted|
|blocked|5|Blocked|
|lockedOut|8|LockedOut|