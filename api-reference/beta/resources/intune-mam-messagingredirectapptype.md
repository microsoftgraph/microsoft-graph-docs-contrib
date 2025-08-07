---
title: "messagingRedirectAppType enum type"
description: "Defines how app messaging redirection is protected by an App Protection Policy. Default is anyApp."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# messagingRedirectAppType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defines how app messaging redirection is protected by an App Protection Policy. Default is anyApp.

## Members
|Member|Value|Description|
|:---|:---|:---|
|anyApp|0|App protection policy will allow messaging redirection to any app.|
|anyManagedApp|1|App protection policy will allow messaging redirection to any managed application.|
|specificApps|2|App protection policy will allow messaging redirection only to specified applications in related App protection policy settings. See related settings `messagingRedirectAppDisplayName`, `messagingRedirectAppPackageId` and `messagingRedirectAppUrlScheme`.|
|blocked|3|App protection policy will block messaging redirection to any app.|