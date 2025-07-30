---
title: "defenderProtectionType enum type"
description: "Possible values of Defender PUA Protection"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# defenderProtectionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Defender PUA Protection

## Members
|Member|Value|Description|
|:---|:---|:---|
|userDefined|0|Device default value, no intent.|
|enable|1|Block functionality.|
|auditMode|2|Allow functionality but generate logs.|
|warn|6|Warning message to end user with ability to bypass block from attack surface reduction rule.|
|notConfigured|99|Not configured.|