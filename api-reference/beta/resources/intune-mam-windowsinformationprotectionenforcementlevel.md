---
title: "windowsInformationProtectionEnforcementLevel enum type"
description: "Possible values for WIP Protection enforcement levels"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsInformationProtectionEnforcementLevel enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for WIP Protection enforcement levels

## Members
|Member|Value|Description|
|:---|:---|:---|
|noProtection|0|No protection enforcement|
|encryptAndAuditOnly|1|Encrypt and Audit only|
|encryptAuditAndPrompt|2|Encrypt, Audit and Prompt|
|encryptAuditAndBlock|3|Encrypt, Audit and Block|