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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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