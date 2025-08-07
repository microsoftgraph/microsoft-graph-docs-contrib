---
title: "vpnEncryptionAlgorithmType enum type"
description: "The type of VPN security association encryption algorithm"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnEncryptionAlgorithmType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The type of VPN security association encryption algorithm

## Members
|Member|Value|Description|
|:---|:---|:---|
|aes256|0|AES-256|
|des|1|DES|
|tripleDes|2|3DES|
|aes128|3|AES-128|
|aes128Gcm|4|AES-128-GCM|
|aes256Gcm|5|AES-256-GCM|
|aes192|6|AES-192|
|aes192Gcm|7|AES-192-GCM|
|chaCha20Poly1305|8|ChaCha20Poly1305|