---
title: "androidManagedStoreAutoUpdateMode enum type"
description: "Prioritization for automatic updates of Android Managed Store apps set on assignment."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# androidManagedStoreAutoUpdateMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Prioritization for automatic updates of Android Managed Store apps set on assignment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|default|0|Default update behavior (device must be connected to Wifi, charging and not actively used).|
|postponed|1|Updates are postponed for a maximum of 90 days after the app becomes out of date.|
|priority|2|The app is updated as soon as possible by the developer. If device is online, it will be updated within minutes.|
|unknownFutureValue|3|Unknown future mode (reserved, not used right now).|
