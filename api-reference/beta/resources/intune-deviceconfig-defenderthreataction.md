---
title: "defenderThreatAction enum type"
description: "Defender’s default action to take on detected Malware threats."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderThreatAction enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defender’s default action to take on detected Malware threats.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Apply action based on the update definition.|
|clean|1|Clean the detected threat.|
|quarantine|2|Quarantine the detected threat.|
|remove|3|Remove the detected threat.|
|allow|4|Allow the detected threat.|
|userDefined|5|Allow the user to determine the action to take with the detected threat.|
|block|6|Block the detected threat.|