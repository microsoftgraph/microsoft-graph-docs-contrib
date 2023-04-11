---
title: "androidDeviceOwnerCertificateAccessType enum type"
description: "An enum representing possible values for cross profile data sharing."
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# androidDeviceOwnerCertificateAccessType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for cross profile data sharing.

## Members
|Member|Value|Description|
|:---|:---|:---|
|userApproval|0|Require user approval for all apps|
|specificApps|1|Pre-grant certificate access for specific apps (require user approval for other apps).|
|unknownFutureValue|2|Unknown future value for evolvable enum patterns.|
