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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Defines how app messaging redirection is protected by an App Protection Policy. Default is anyApp.

## Members
|Member|Value|Description|
|:---|:---|:---|
|anyApp|0|App protection policy will allow messaging redirection to any app.|
|anyManagedApp|1|App protection policy will allow messaging redirection to any managed application.|
|specificApps|2|App protection policy will allow messaging redirection only to specified applications in related App protection policy settings. See related settings `messagingRedirectAppDisplayName`, `messagingRedirectAppPackageId` and `messagingRedirectAppUrlScheme`.|
|blocked|3|App protection policy will block messaging redirection to any app.|