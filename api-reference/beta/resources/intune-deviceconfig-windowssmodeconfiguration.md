---
title: "windowsSModeConfiguration enum type"
description: "The possible options to configure S mode unlock"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsSModeConfiguration enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The possible options to configure S mode unlock

## Members
|Member|Value|Description|
|:---|:---|:---|
|noRestriction|0|This option will remove all restrictions to unlock S mode - default|
|block|1|This option will block the user to unlock the device from S mode|
|unlock|2|This option will unlock the device from S mode|