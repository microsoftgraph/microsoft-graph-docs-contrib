---
title: "firewallCertificateRevocationListCheckMethodType enum type"
description: "Possible values for firewallCertificateRevocationListCheckMethod"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# firewallCertificateRevocationListCheckMethodType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Possible values for firewallCertificateRevocationListCheckMethod

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|No value configured by Intune, do not override the user-configured device default value|
|none|1|Do not check certificate revocation list|
|attempt|2|Attempt CRL check and allow a certificate only if the certificate is confirmed by the check|
|require|3|Require a successful CRL check before allowing a certificate|