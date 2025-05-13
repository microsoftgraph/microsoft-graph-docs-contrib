---
title: "deviceManagementSubscriptions enum type"
description: "Tenant mobile device management subscriptions."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementSubscriptions enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Tenant mobile device management subscriptions.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|None|
|intune|1|Microsoft Intune Subscription|
|office365|2|Office365 Subscription|
|intunePremium|4|Microsoft Intune Premium Subscription|
|intune_EDU|8|Microsoft Intune for Education Subscription|
|intune_SMB|16|Microsoft Intune for Small Businesses Subscription|