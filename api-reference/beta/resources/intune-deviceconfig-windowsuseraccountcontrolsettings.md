---
title: "windowsUserAccountControlSettings enum type"
description: "Possible values for Windows user account control settings."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsUserAccountControlSettings enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for Windows user account control settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|User Defined, default value, no intent.|
|alwaysNotify|1|Always notify.|
|notifyOnAppChanges|2|Notify on app changes.|
|notifyOnAppChangesWithoutDimming|3|Notify on app changes without dimming desktop.|
|neverNotify|4|Never notify.|