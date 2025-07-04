---
title: "androidEnterpriseAlwaysOnVpnPackageType enum type"
description: "Intune Shared Androidenterprisealwaysonvpnpackagetype Resources ."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidEnterpriseAlwaysOnVpnPackageType enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.




## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured; this value is ignored.|
|custom|1|Custom package name, the ITPro can supply the package name of the VPN client they want to use.|
|ciscoAnyConnect|2|Cisco AnyConnect.|
|f5Access|3|F5 Access.|
|paloAltoNetworksGlobalProtect|4|Palo Alto Networks GlobalProtect.|
|pulseSecure|5|Pulse Secure.|
