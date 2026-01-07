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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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