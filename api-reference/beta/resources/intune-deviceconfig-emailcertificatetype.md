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

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Supported certificate sources for email signing and encryption.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Do not use a certificate as a source.|
|certificate|1|Use an certificate for certificate source.|
|derivedCredential|2|Use a derived credential for certificate source.|
