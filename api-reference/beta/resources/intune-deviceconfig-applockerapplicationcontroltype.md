---
title: "appLockerApplicationControlType enum type"
description: "Possible values of AppLocker Application Control Types"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# appLockerApplicationControlType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of AppLocker Application Control Types

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no Application Control type selected.|
|enforceComponentsAndStoreApps|1|Enforce Windows component and store apps.|
|auditComponentsAndStoreApps|2|Audit Windows component and store apps.|
|enforceComponentsStoreAppsAndSmartlocker|3|Enforce Windows components, store apps and smart locker.|
|auditComponentsStoreAppsAndSmartlocker|4|Audit Windows components, store apps and smart locker​.|