---
title: "vppTokenState enum type"
description: "Possible states associated with an Apple Volume Purchase Program token."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vppTokenState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible states associated with an Apple Volume Purchase Program token.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default state.|
|valid|1|Token is valid.|
|expired|2|Token is expired.|
|invalid|3|Token is invalid.|
|assignedToExternalMDM|4|Token is managed by another MDM Service.|
|duplicateLocationId|5|Token is associated with the same location as another token on the account.|