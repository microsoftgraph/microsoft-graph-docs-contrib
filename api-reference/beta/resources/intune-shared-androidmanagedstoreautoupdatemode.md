---
title: "androidManagedStoreAutoUpdateMode enum type"
description: "Prioritization for automatic updates of Android Managed Store apps set on assignment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidManagedStoreAutoUpdateMode enum type

Namespace: microsoft.graph
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Prioritization for automatic updates of Android Managed Store apps set on assignment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|default|0|Default update behavior (device must be connected to Wifi, charging and not actively used).|
|postponed|1|Updates are postponed for a maximum of 90 days after the app becomes out of date.|
|priority|2|The app is updated as soon as possible by the developer. If device is online, it will be updated within minutes.|
|unknownFutureValue|3|Unknown future mode (reserved, not used right now).|
