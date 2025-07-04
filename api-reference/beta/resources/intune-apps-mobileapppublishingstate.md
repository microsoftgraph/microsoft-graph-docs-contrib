---
title: "mobileAppPublishingState enum type"
description: "Indicates the publishing state of an app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppPublishingState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the publishing state of an app.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notPublished|0|The app is not yet published.|
|processing|1|The app is pending service-side processing.|
|published|2|The app is published.|