---
title: "deviceManagementExchangeAccessState enum type"
description: "Device Exchange Access State."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementExchangeAccessState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Device Exchange Access State.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|No access state discovered from Exchange|
|unknown|1|Device access state to Exchange is unknown|
|allowed|2|Device has access to Exchange|
|blocked|3|Device is Blocked in Exchange|
|quarantined|4|Device is Quarantined in Exchange|
