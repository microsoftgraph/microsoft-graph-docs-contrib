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
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Options available for enrollment flow customization

## Members
|Member|Value|Description|
|:---|:---|:---|
|availableWithPrompts|0|Device enrollment flow is shown to the end user with guided enrollment prompts|
|availableWithoutPrompts|1|Device enrollment flow is available to the end user without guided enrollment prompts|
|unavailable|2|Device enrollment flow is unavailable to the enduser|