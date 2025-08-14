---
title: "androidDeviceOwnerPlayStoreMode enum type"
description: "Android Device Owner Play Store mode type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerPlayStoreMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Device Owner Play Store mode type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not Configured|
|allowList|1|Only apps that are in the policy are available and any app not in the policy will be automatically uninstalled from the device.|
|blockList|2|All apps are available and any app that should not be on the device should be explicitly marked as 'BLOCKED' in the applications policy.|