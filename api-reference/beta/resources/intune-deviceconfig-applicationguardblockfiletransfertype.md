---
title: "applicationGuardBlockFileTransferType enum type"
description: "Possible values for applicationGuardBlockFileTransfer"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# applicationGuardBlockFileTransferType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for applicationGuardBlockFileTransfer

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not Configured|
|blockImageAndTextFile|1|Block clipboard to transfer Image and Text file|
|blockImageFile|2|Block clipboard to transfer Image file|
|blockNone|3|Neither of text file or image file is blocked from transferring|
|blockTextFile|4|Block clipboard to transfer Text file|