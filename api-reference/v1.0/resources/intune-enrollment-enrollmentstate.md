---
title: "enrollmentState enum type"
description: "Not yet documented"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/13/2024
---

# enrollmentState enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Not yet documented

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Device enrollment state is unknown|
|enrolled|1|Device is Enrolled.|
|pendingReset|2|Enrolled but it's enrolled via enrollment profile and the enrolled profile is different from the assigned profile.|
|failed|3|Not enrolled and there is enrollment failure record.|
|notContacted|4|Device is imported but not enrolled.|
