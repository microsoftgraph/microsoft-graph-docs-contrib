---
title: "windowsManagedAppClipboardSharingLevel enum type"
description: "Represents the level to which the device's clipboard may be shared between apps"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# windowsManagedAppClipboardSharingLevel enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the level to which the device's clipboard may be shared between apps

## Members
|Member|Value|Description|
|:---|:---|:---|
|anyDestinationAnySource|0|Org users can paste data from and cut/copy data to any account, document, location or application.|
|none|1|Org users cannot cut, copy or paste data to or from external accounts, documents, locations or applications from or into the org context.|