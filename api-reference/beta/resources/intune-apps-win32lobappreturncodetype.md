---
title: "win32LobAppReturnCodeType enum type"
description: "Indicates the type of return code."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# win32LobAppReturnCodeType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of return code.

## Members
|Member|Value|Description|
|:---|:---|:---|
|failed|0|Failed.|
|success|1|Success.|
|softReboot|2|Soft-reboot is required.|
|hardReboot|3|Hard-reboot is required.|
|retry|4|Retry.|