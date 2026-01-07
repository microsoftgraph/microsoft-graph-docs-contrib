---
title: "userPfxPaddingScheme enum type"
description: "Supported values for the padding scheme used by encryption provider."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# userPfxPaddingScheme enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported values for the padding scheme used by encryption provider.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Unknown padding Scheme.|
|pkcs1|1|Pkcs1 is no longer supported|
|oaepSha1|2|OaepSha1 is no longer supported|
|oaepSha256|3|Use OAEP SHA-256 padding.|
|oaepSha384|4|Use OAEP SHA-384 padding.|
|oaepSha512|5|Use OAEP SHA-512 padding.|