---
title: "deviceGuardLocalSystemAuthorityCredentialGuardType enum type"
description: "Possible values of Credential Guard settings."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceGuardLocalSystemAuthorityCredentialGuardType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values of Credential Guard settings.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Turns off Credential Guard remotely if configured previously without UEFI Lock.|
|enableWithUEFILock|1|Turns on Credential Guard with UEFI lock.|
|enableWithoutUEFILock|2|Turns on Credential Guard without UEFI lock.|
|disable|3|Disables Credential Guard. This is the default OS value.|