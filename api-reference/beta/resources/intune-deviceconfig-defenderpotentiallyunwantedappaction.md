---
title: "defenderPotentiallyUnwantedAppAction enum type"
description: "Defender’s action to take on detected Potentially Unwanted Application (PUA)."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderPotentiallyUnwantedAppAction enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defender’s action to take on detected Potentially Unwanted Application (PUA).

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|PUA Protection is off. Defender will not protect against potentially unwanted applications.|
|block|1|PUA Protection is on. Detected items are blocked. They will show in history along with other threats.|
|audit|2|Audit mode. Defender will detect potentially unwanted applications, but take no actions. You can review information about applications Defender would have taken action against by searching for events created by Defender in the Event Viewer.|