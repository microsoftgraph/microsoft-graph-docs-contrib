---
title: "sharedPCAllowedAccountType enum type"
description: "Type of accounts that are allowed to share the PC."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# sharedPCAllowedAccountType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Type of accounts that are allowed to share the PC.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured. Default value.|
|guest|1|Only guest accounts.|
|domain|2|Only domain-joined accounts.|