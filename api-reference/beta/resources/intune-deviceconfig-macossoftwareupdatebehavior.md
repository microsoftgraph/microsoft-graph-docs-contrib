---
title: "macOSSoftwareUpdateBehavior enum type"
description: "Update behavior options for macOS software updates."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# macOSSoftwareUpdateBehavior enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
