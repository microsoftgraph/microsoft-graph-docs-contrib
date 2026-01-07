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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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