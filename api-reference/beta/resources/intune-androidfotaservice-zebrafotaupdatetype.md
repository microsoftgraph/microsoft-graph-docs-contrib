---
title: "zebraFotaUpdateType enum type"
description: "Represents various update types for Zebra FOTA deployment."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# zebraFotaUpdateType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents various update types for Zebra FOTA deployment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|custom|0|Custom update where the user selects specific BSP, OS version, and patch number to update to.|
|latest|1|The latest released update becomes the target OS. Latest may update the device to a new Android version.|
|auto|2|The device always looks for the latest package available in the repo and tries to update whenever a new package is available. This continues until the admin cancels the auto update.|
|unknownFutureValue|99|Unknown future enum value.|
