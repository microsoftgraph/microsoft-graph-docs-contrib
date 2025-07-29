---
title: "androidDeviceOwnerCertificateAccessType enum type"
description: "An enum representing possible values for cross profile data sharing."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerCertificateAccessType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for cross profile data sharing.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userApproval|0|Require user approval for all apps|
|specificApps|1|Pre-grant certificate access for specific apps (require user approval for other apps).|
|unknownFutureValue|2|Unknown future value for evolvable enum patterns.|