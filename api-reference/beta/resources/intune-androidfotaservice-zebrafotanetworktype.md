---
title: "zebraFotaNetworkType enum type"
description: "Represents various network types for Zebra FOTA deployment."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# zebraFotaNetworkType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
