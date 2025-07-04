---
title: "windowsFirewallRuleInterfaceTypes enum type"
description: "Flags representing firewall rule interface types."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsFirewallRuleInterfaceTypes enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Flags representing firewall rule interface types.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|No flags set.|
|remoteAccess|1|The Remote Access interface type.|
|wireless|2|The Wireless interface type.|
|lan|4|The LAN interface type.|