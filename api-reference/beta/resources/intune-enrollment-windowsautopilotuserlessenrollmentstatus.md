---
title: "windowsAutopilotUserlessEnrollmentStatus enum type"
description: "Userless enrollment block status, indicating whether the next device enrollment will be blocked."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsAutopilotUserlessEnrollmentStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Userless enrollment block status, indicating whether the next device enrollment will be blocked.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown userless enrollment block status. Next userless enrollment may fail. This is the default value.|
|allowed|1|Indicates next userless enrollment can proceed.|
|blocked|2|Indicates next userless enrollment cannot proceed without resetting the windowsAutopilotUserlessEnrollmentStatus.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|