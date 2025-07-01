---
title: "zebraFotaScheduleMode enum type"
description: "Represents various schedule modes for Zebra FOTA deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# zebraFotaScheduleMode enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents various schedule modes for Zebra FOTA deployment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|installNow|0|Instructs the device to install the update as soon as it is received.|
|scheduled|1|Schedule an update to be installed at a specified date and time.|
|unknownFutureValue|99|Unknown future enum value.|
