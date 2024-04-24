---
title: "messagingRedirectAppType enum type"
description: "Defines how app messaging redirection is protected by an App Protection Policy. Default is anyApp."
author: "jaiprakashmb"
localization_priority: Normal
ms.subservice: "intune"
doc_type: enumPageType
---

# messagingRedirectAppType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defines how app messaging redirection is protected by an App Protection Policy. Default is anyApp.

## Members
|Member|Value|Description|
|:---|:---|:---|
|anyApp|0|App protection policy will allow messaging redirection to any app.|
|anyManagedApp|1|App protection policy will allow messaging redirection to any managed application.|
|specificApps|2|App protection policy will allow messaging redirection only to specified applications in related App protection policy settings. See related settings `messagingRedirectAppDisplayName`, `messagingRedirectAppPackageId` and `messagingRedirectAppUrlScheme`.|
|blocked|3|App protection policy will block messaging redirection to any app.|