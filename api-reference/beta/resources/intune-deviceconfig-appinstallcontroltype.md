---
title: "appInstallControlType enum type"
description: "App Install control Setting"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# appInstallControlType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

App Install control Setting

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured|
|anywhere|1|Turn off app recommendations|
|storeOnly|2|Allow apps from Store only|
|recommendations|3|Show me app recommendations|
|preferStore|4|Warn me before installing apps from outside the Store|