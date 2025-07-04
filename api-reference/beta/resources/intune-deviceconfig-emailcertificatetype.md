---
title: "emailCertificateType enum type"
description: "Supported certificate sources for email signing and encryption."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# emailCertificateType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported certificate sources for email signing and encryption.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Do not use a certificate as a source.|
|certificate|1|Use an certificate for certificate source.|
|derivedCredential|2|Use a derived credential for certificate source.|