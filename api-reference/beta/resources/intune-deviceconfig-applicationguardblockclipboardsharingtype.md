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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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