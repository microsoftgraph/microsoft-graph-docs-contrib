---
title: "windowsFirewallRuleNetworkProfileTypes enum type"
description: "Flags representing which network profile types apply to a firewall rule."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsFirewallRuleNetworkProfileTypes enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Flags representing which network profile types apply to a firewall rule.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|No flags set.|
|domain|1|The profile for networks that are connected to domains.|
|private|2|The profile for private networks.|
|public|4|The profile for public networks.|