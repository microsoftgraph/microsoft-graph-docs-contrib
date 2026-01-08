---
title: "wiFiProxySetting enum type"
description: "Wi-Fi Proxy Settings."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# wiFiProxySetting enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Wi-Fi Proxy Settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Default. Indicates Wi-Fi Proxy is not set.|
|manual|1|Indicates Wi-Fi Proxy is set by manually specifying an address and port as well as an optional list of hostnames that are exculded. This value is not supported for AndroidWorkProfileWiFiConfigurations.|
|automatic|2|Indicates Wi-Fi Proxy is set automatically by providing the URL to a PAC (Proxy Auto Configuration) file which contains a list of proxy servers to use.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|