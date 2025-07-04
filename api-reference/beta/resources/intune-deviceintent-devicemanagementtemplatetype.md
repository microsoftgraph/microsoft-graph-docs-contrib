---
title: "deviceManagementTemplateType enum type"
description: "Template type"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementTemplateType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Template type

## Members
|Member|Value|Description|
|:---|:---|:---|
|securityBaseline|0|Security baseline template|
|specializedDevices|1|Specialized devices template|
|advancedThreatProtectionSecurityBaseline|2|Advanced Threat Protection security baseline template|
|deviceConfiguration|3|Device configuration template|
|custom|4|Custom admin defined template|
|securityTemplate|5|Templates containing specific security focused settings|
|microsoftEdgeSecurityBaseline|6|Microsoft Edge security baseline template|
|microsoftOffice365ProPlusSecurityBaseline|7|Microsoft Office 365 ProPlus security baseline template|
|deviceCompliance|8|Device compliance template|
|deviceConfigurationForOffice365|9|Device Configuration for Microsoft Office 365 settings|
|cloudPC|10|Windows 365 security baseline template|
|firewallSharedSettings|11|Firewall Shared Object templates for reference settings|