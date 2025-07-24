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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

FileVault State

## Members
|Member|Value|Description|
|:---|:---|:---|
|success|0|FileVault State Success|
|driveEncryptedByUser|1|FileVault has been enabled by user and is not being managed by policy|
|userDeferredEncryption|2|FileVault policy is successfully installed but user has not started encryption|
|escrowNotEnabled|4|FileVault recovery key escrow is not enabled|