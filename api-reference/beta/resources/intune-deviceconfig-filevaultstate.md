---
title: "fileVaultState enum type"
description: "FileVault State"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# fileVaultState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

FileVault State

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0|FileVault State Success|
|driveEncryptedByUser|1|FileVault has been enabled by user and is not being managed by policy|
|userDeferredEncryption|2|FileVault policy is successfully installed but user has not started encryption|
|escrowNotEnabled|4|FileVault recovery key escrow is not enabled|