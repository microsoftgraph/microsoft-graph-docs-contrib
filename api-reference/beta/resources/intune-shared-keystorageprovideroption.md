---
title: "keyStorageProviderOption enum type"
description: "Key Storage Provider (KSP) Import Options."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# keyStorageProviderOption enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Key Storage Provider (KSP) Import Options.

## Members
|Member|Value|Description|
|:---|:---|:---|
|useTpmKspOtherwiseUseSoftwareKsp|0|Import to Trusted Platform Module (TPM) KSP if present, otherwise import to Software KSP.|
|useTpmKspOtherwiseFail|1|Import to Trusted Platform Module (TPM) KSP if present, otherwise fail.|
|usePassportForWorkKspOtherwiseFail|2|Import to Passport for work KSP if available, otherwise fail.|
|useSoftwareKsp|3|Import to Software KSP.|
