---
title: "applicationGuardBlockClipboardSharingType enum type"
description: "Possible values for applicationGuardBlockClipboardSharingType"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# applicationGuardBlockClipboardSharingType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for applicationGuardBlockClipboardSharingType

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not Configured|
|blockBoth|1|Block clipboard to share data both from Host to Container and from Container to Host|
|blockHostToContainer|2|Block clipboard to share data from Host to Container|
|blockContainerToHost|3|Block clipboard to share data from Container to Host|
|blockNone|4|Block clipboard to share data neither from Host to Container nor from Container to Host|