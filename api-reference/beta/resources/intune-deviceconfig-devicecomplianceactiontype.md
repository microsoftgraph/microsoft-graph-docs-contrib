---
title: "deviceComplianceActionType enum type"
description: "Scheduled Action Type Enum"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceComplianceActionType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Scheduled Action Type Enum

## Members
|Member|Value|Description|
|:---|:---|:---|
|noAction|0|No Action|
|notification|1|Send Notification|
|block|2|Block the device in AAD|
|retire|3|Retire the device|
|wipe|4|Wipe the device|
|removeResourceAccessProfiles|5|Remove Resource Access Profiles from the device|
|pushNotification|9|Send push notification to device|
|remoteLock|10|Remotely lock the device|