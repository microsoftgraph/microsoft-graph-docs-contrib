---
title: "androidDeviceOwnerRequiredPasswordUnlock enum type"
description: "An enum representing possible values for required password unlock."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerRequiredPasswordUnlock enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for required password unlock.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Timeout period before strong authentication is required is set to the device's default.|
|daily|1|Timeout period before strong authentication is required is set to 24 hours.|
|unkownFutureValue|2|Unknown future value (reserved, not used right now)|