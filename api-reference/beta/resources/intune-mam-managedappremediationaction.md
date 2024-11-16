---
title: "managedAppRemediationAction enum type"
description: "An admin initiated action to be applied on a managed app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
---

# managedAppRemediationAction enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

An admin initiated action to be applied on a managed app.

## Members
|Member|Value|Description|
|:---|:---|:---|
|block|0|Indicates the user will be blocked from accessing the app and corporate data|
|wipe|1|Indicates the corporate data will be removed from the app|
|warn|2|Indicates user will be warned the when accessing the app|
|blockWhenSettingIsSupported|3|Indicates user will be blocked from accessing the app and corporate data if devices supports this setting|
