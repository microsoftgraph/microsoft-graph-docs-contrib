---
title: "windowsDefenderApplicationControlSupplementalPolicyStatuses enum type"
description: "Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsDefenderApplicationControlSupplementalPolicyStatuses enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Enum values for the various WindowsDefenderApplicationControl supplemental policy deployment statuses.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|The status of the WindowsDefenderApplicationControl supplemental policy is not known.|
|success|1|The WindowsDefenderApplicationControl supplemental policy is in effect.|
|tokenError|2|The WindowsDefenderApplicationControl supplemental policy is structurally okay but there is an error with authorizing the token.|
|notAuthorizedByToken|3|The token does not authorize this WindowsDefenderApplicationControl supplemental policy.|
|policyNotFound|4|The WindowsDefenderApplicationControl supplemental policy is not found.|