---
title: "sharedPCAccountDeletionPolicyType enum type"
description: "Possible values for when accounts are deleted on a shared PC."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# sharedPCAccountDeletionPolicyType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for when accounts are deleted on a shared PC.

## Members
|Member|Value|Description|
|:---|:---|:---|
|immediate|0|Delete immediately.|
|diskSpaceThreshold|1|Delete at disk space threshold.|
|diskSpaceThresholdOrInactiveThreshold|2|Delete at disk space threshold or inactive threshold.|