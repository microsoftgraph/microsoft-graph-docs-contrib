---
title: "remoteAssistanceState enum type"
description: "State of remote assistance for the account"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# remoteAssistanceState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

State of remote assistance for the account

## Members
|Member|Value|Description|
|:---|:---|:---|
|disabled|1|Remote assistance is disabled for the account. With this value, Quick Assist remote assistance sessions are not allowed for the account.|
|enabled|2|Remote assistance is enabled for the account. With this value, enterprise Quick Assist remote assistance features are provided.|