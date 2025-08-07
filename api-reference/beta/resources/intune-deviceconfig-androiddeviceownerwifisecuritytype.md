---
title: "androidDeviceOwnerWiFiSecurityType enum type"
description: "Wi-Fi Security Types for Android Device Owner."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerWiFiSecurityType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Wi-Fi Security Types for Android Device Owner.

## Members
|Member|Value|Description|
|:---|:---|:---|
|open|0|Open (No Authentication).|
|wep|1|WEP Encryption.|
|wpaPersonal|2|WPA-Personal/WPA2-Personal.|
|wpaEnterprise|4|WPA-Enterprise/WPA2-Enterprise. Must use AndroidDeviceOwnerEnterpriseWifiConfiguration type to configure enterprise options.|