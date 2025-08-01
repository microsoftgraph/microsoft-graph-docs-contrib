---
title: "sharedPCAccountDeletionPolicyType enum type"
description: "Possible values for when accounts are deleted on a shared PC."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# sharedPCAccountDeletionPolicyType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for when accounts are deleted on a shared PC.

## Members
|Member|Value|Description|
|:---|:---|:---|
|immediate|0|Delete immediately.|
|diskSpaceThreshold|1|Delete at disk space threshold.|
|diskSpaceThresholdOrInactiveThreshold|2|Delete at disk space threshold or inactive threshold.|