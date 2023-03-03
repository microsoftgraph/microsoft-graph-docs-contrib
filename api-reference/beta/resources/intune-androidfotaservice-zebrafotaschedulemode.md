---
title: "zebraFotaScheduleMode enum type"
description: "Represents various schedule modes for Zebra FOTA deployment."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# zebraFotaScheduleMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents various schedule modes for Zebra FOTA deployment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|installNow|0|Instructs the device to install the update as soon as it is received.|
|scheduled|1|Schedule an update to be installed at a specified date and time.|
|unknownFutureValue|99|Unknown future enum value.|
