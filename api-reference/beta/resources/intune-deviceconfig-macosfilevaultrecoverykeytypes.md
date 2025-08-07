---
title: "macOSFileVaultRecoveryKeyTypes enum type"
description: "Recovery key types for macOS FileVault"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# macOSFileVaultRecoveryKeyTypes enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Recovery key types for macOS FileVault

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Device default value, no intent.|
|institutionalRecoveryKey|1|An institutional recovery key is like a “master” recovery key that can be used to unlock any device whose password has been lost.|
|personalRecoveryKey|2|A personal recovery key is a unique code that can be used to unlock the user’s device, even if the password to the device is lost.|