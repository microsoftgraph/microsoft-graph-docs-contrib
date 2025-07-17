---
title: "zebraFotaNetworkType enum type"
description: "Represents various network types for Zebra FOTA deployment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# zebraFotaNetworkType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents various network types for Zebra FOTA deployment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|any|0|The device will install the update regardless of current network type.|
|wifi|1|The device will install the update only when connected to WiFi network.|
|cellular|2|The device will install the update only when connected a Cellular network.|
|wifiAndCellular|3|The device will install the update when connected both WiFi and Cellular.|
|unknownFutureValue|99|Unknown future enum value.|
