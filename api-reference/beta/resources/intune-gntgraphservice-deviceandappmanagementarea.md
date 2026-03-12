---
title: "deviceAndAppManagementArea enum type"
description: "A list of possible management areas for payloads assigned to Organizational Unit (OU). Payload types that may conflict with each other belong to the same Management area, while payload types that cannot conflict with each other belong to different Management areas and each area has different prioritized assignment list for each platform since payloads from different platforms cannot conflict with each other."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceAndAppManagementArea enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

A list of possible management areas for payloads assigned to Organizational Unit (OU). Payload types that may conflict with each other belong to the same Management area, while payload types that cannot conflict with each other belong to different Management areas and each area has different prioritized assignment list for each platform since payloads from different platforms cannot conflict with each other.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default. Indicates unknown management area type.|
|deviceConfiguration|1|Indicates that the payload type belongs to device configuration management area having payload types settings catalog, security baseline, antivirus, disk encryption, attack surface reduction, firewall, endpoint detection and response, and compliance policy.|
|app|2|Indicates that the payload type belongs to apps and include all iOS, Mac, Android, Windows apps.|
|compliance|3|Indicates that the payload type belongs to compliance and include all iOS, Mac, Android, Windows apps.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|