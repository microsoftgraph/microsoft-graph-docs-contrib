---
title: "managedAppLogUploadConsent enum type"
description: "Represents the current consent status of the associated `managedAppLogCollectionRequest`."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# managedAppLogUploadConsent enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the current consent status of the associated `managedAppLogCollectionRequest`.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates app log consent state is 'Unknown'. This state is automatically assigned at request creation time and is updated when the log collection completes.|
|declined|1|The User has Declined the Log Collection Request. The Log collection and uploads will not be initiated/triggered, and the log collection request will be abandoned.|
|accepted|2|The User has Accepted the Log Collection Request. The log collection and upload will be initiated.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|