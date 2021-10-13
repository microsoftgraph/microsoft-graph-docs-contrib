---
title: "remoteAssistanceState enum type"
description: "State of remote assistance for the account"
author: "dougeby"
ms.localizationpriority: medium
ms.prod: "intune"
doc_type: enumPageType
---

# remoteAssistanceState enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

State of remote assistance for the account

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Remote assistance is not configured for the account. With this value, basic Quick Assist remote assistance features are provided.|
|disabled|1|Remote assistance is disabled for the account. With this value, Quick Assist remote assistance sessions are not allowed for the account.|
|enabled|2|Remote assistance is enabled for the account. With this value, enterprise Quick Assist remote assistance features are provided.|



