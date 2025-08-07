---
title: "wiFiSecurityType enum type"
description: "Wi-Fi Security Types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# wiFiSecurityType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Wi-Fi Security Types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|open|0|Open (No Authentication).|
|wpaPersonal|1|WPA-Personal.|
|wpaEnterprise|2|WPA-Enterprise. Must use IOSEnterpriseWifiConfiguration type to configure enterprise options.|
|wep|3|WEP Encryption.|
|wpa2Personal|4|WPA2-Personal.|
|wpa2Enterprise|5|WPA2-Enterprise. Must use WindowsWifiEnterpriseEAPConfiguration type to configure enterprise options.|