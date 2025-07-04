---
title: "vppTokenActionFailureReason enum type"
description: "Possible types of reasons for an Apple Volume Purchase Program token action failure."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vppTokenActionFailureReason enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Possible types of reasons for an Apple Volume Purchase Program token action failure.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|None.|
|appleFailure|1|There was an error on Apple's service.|
|internalError|2|There was an internal error.|
|expiredVppToken|3|There was an error because the Apple Volume Purchase Program token was expired.|
|expiredApplePushNotificationCertificate|4|There was an error because the Apple Volume Purchase Program Push Notification certificate expired.|
