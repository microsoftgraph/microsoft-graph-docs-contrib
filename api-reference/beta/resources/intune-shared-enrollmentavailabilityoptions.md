---
title: "enrollmentAvailabilityOptions enum type"
description: "Options available for enrollment flow customization"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# enrollmentAvailabilityOptions enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Options available for enrollment flow customization

## Members
|Member|Value|Description|
|:---|:---|:---|
|availableWithPrompts|0|Device enrollment flow is shown to the end user with guided enrollment prompts|
|availableWithoutPrompts|1|Device enrollment flow is available to the end user without guided enrollment prompts|
|unavailable|2|Device enrollment flow is unavailable to the enduser|
