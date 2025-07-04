---
title: "userPfxIntendedPurpose enum type"
description: "Supported values for the intended purpose of a user PFX certificate."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userPfxIntendedPurpose enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported values for the intended purpose of a user PFX certificate.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unassigned|0|No roles/usages assigned.|
|smimeEncryption|1|Valid for S/MIME encryption.|
|smimeSigning|2|Valid for S/MIME signing.|
|vpn|4|Valid for use in VPN.|
|wifi|8|Valid for use in WiFi.|