---
title: "vpnServerCertificateType enum type"
description: "The type of certificate the VPN server will present to the VPN client for authentication"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# vpnServerCertificateType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The type of certificate the VPN server will present to the VPN client for authentication

## Members
|Member|Value|Description|
|:---|:---|:---|
|rsa|0|RSA|
|ecdsa256|1|ECDSA256|
|ecdsa384|2|ECDSA384|
|ecdsa521|3|ECDSA521|