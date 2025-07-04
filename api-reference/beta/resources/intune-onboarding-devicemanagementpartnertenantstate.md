---
title: "deviceManagementPartnerTenantState enum type"
description: "Partner state of this tenant."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementPartnerTenantState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Partner state of this tenant.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Partner state is unknown.|
|unavailable|1|Partner is unavailable.|
|enabled|2|Partner is enabled.|
|terminated|3|Partner connection is terminated.|
|rejected|4|Partner messages are rejected.|
|unresponsive|5|Partner is unresponsive.|