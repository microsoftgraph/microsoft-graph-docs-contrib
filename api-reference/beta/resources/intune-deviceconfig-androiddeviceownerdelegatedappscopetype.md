---
title: "androidDeviceOwnerDelegatedAppScopeType enum type"
description: "An enum representing possible values for delegated app scope."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerDelegatedAppScopeType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An enum representing possible values for delegated app scope.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unspecified|0|Unspecified; this value defaults to DELEGATED_SCOPE_UNSPECIFIED.|
|certificateInstall|1|Specifies that the admin has given app permission to install and manage certificates on device.|
|captureNetworkActivityLog|2|Specifies that the admin has given app permission to capture network activity logs on device. More info on Network activity logs: https://developer.android.com/work/dpc/logging |
|captureSecurityLog|3|Specified that the admin has given permission to capture security logs on device. More info on Security logs: https://developer.android.com/work/dpc/security#log_enterprise_device_activity|
|unknownFutureValue|4|Unknown future value (reserved, not used right now)|