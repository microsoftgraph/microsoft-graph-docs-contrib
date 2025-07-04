---
title: "macOSSoftwareUpdateBehavior enum type"
description: "Update behavior options for macOS software updates."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSSoftwareUpdateBehavior enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Update behavior options for macOS software updates.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured.|
|default|1|Download and/or install the software update, depending on the current device state.|
|downloadOnly|2|Download the software update without installing it.|
|installASAP|3|Install an already downloaded software update.|
|notifyOnly|4|Download the software update and notify the user via the App Store.|
|installLater|5|Download the software update and install it at a later time.|