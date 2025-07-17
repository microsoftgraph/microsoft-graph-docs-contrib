---
title: "win32LobAppRestartBehavior enum type"
description: "Indicates the type of restart action."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# win32LobAppRestartBehavior enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the type of restart action.

## Members
|Member|Value|Description|
|:---|:---|:---|
|basedOnReturnCode|0|Intune will restart the device after running the app installation if the operation returns a reboot code.|
|allow|1|Intune will not take any specific action on reboot codes resulting from app installations. Intune will not attempt to suppress restarts for MSI apps.|
|suppress|2|Intune will attempt to suppress restarts for MSI apps.|
|force|3|Intune will force the device to restart immediately after the app installation operation.|