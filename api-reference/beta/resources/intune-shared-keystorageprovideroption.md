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
> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Key Storage Provider (KSP) Import Options.

## Members
|Member|Value|Description|
|:---|:---|:---|
|useTpmKspOtherwiseUseSoftwareKsp|0|Import to Trusted Platform Module (TPM) KSP if present, otherwise import to Software KSP.|
|useTpmKspOtherwiseFail|1|Import to Trusted Platform Module (TPM) KSP if present, otherwise fail.|
|usePassportForWorkKspOtherwiseFail|2|Import to Passport for work KSP if available, otherwise fail.|
|useSoftwareKsp|3|Import to Software KSP.|
