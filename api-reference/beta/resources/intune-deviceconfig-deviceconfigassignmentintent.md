---
title: "deviceConfigAssignmentIntent enum type"
description: "The administrator intent for the assignment of the profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceConfigAssignmentIntent enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The administrator intent for the assignment of the profile.

## Members
|Member|Value|Description|
|:---|:---|:---|
|apply|0|Ensure that the configuration profile is applied to the devices in the assignment.|
|remove|1|Ensure that the configuration profile is removed from devices that have previously installed the configuration profile.|