---
title: "obliterationBehavior enum type"
description: "In macOS 12 and later, this command uses Erase All Content and Settings (EACS) on Mac computers with the Apple M1 chip or the Apple T2 Security Chip. On those devices, if EACS can’t run, the device can use obliteration (macOS 11.x behavior). This key has no effect on machines prior to the T2 chip. Upon receiving this command, the device performs preflight checks to determine if the device is in a state that allows EACS. The ObliterationBehavior value defines the device's fallback behavior."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# obliterationBehavior enum type

Namespace: microsoft.graph

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

In macOS 12 and later, this command uses Erase All Content and Settings (EACS) on Mac computers with the Apple M1 chip or the Apple T2 Security Chip. On those devices, if EACS can’t run, the device can use obliteration (macOS 11.x behavior). This key has no effect on machines prior to the T2 chip. Upon receiving this command, the device performs preflight checks to determine if the device is in a state that allows EACS. The ObliterationBehavior value defines the device's fallback behavior.

## Members
|Member|Value|Description|
|:---|:---|:---|
|default|0|Default. If Erase All Content and Settings (EACS) preflight fails, the device responds to the server with an Error status and then attempts to erase itself. If EACS preflight succeeds but EACS fails, then the device attempts to erase itself.|
|doNotObliterate|1|If Erase All Content and Settings (EACS) preflight fails, the device responds to the server with an Error status and doesn’t attempt to erase itself. If EACS preflight succeeds but EACS fails, then the device doesn’t attempt to erase itself.|
|obliterateWithWarning|2|If Erase All Content and Settings (EACS) preflight fails, the device responds with an Acknowledged status and then attempts to erase itself. If EACS preflight succeeds but EACS fails, then the device attempts to erase itself.|
|always|3|The system doesn’t attempt Erase All Content and Settings (EACS). T2 and later devices always obliterate.|
|unknownFutureValue|999|Evolvable enumeration sentinel value. Do not use.|
