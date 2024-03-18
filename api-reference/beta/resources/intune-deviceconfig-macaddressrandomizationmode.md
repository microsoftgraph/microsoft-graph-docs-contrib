---
title: "macAddressRandomizationMode enum type"
description: "An enum representing the possible values of Android MAC Address Randomization Mode."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# macAddressRandomizationMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing the possible values of Android MAC Address Randomization Mode.

## Members
|Member|Value|Description|
|:---|:---|:---|
|automatic|0|Indicates the Wi-Fi framework to automatically decide the MAC randomization strategy. This can either be persistent or non-persistent randomly generated MAC addresses which are used while connecting to the network. In case of Persistent randomization, android generates a persistent randomized MAC address based on the parameters of the network profile. This MAC address remains the same until factory reset. On the other hand under the non-persistent randomization type, which is used for some networks in Android 12 or higher, the Wi-Fi module re-randomizes the MAC address at the start of every connection or the framework uses the existing randomized MAC address to connect to the network. More info: https://source.android.com/docs/core/connect/wifi-mac-randomization-behavior#types|
|hardware|1|Indicates MAC randomization is disabled and the factory MAC address is used when connecting to the internet.|
|unknownFutureValue|2|Indicates evolvable enumeration sentinel value. Do not use.|
