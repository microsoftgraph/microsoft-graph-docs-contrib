---
title: "win32LobAppFileSystemDetectionType enum type"
description: "Contains all supported file system detection type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# win32LobAppFileSystemDetectionType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Contains all supported file system detection type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notConfigured|0|Not configured.|
|exists|1|Whether the specified file or folder exists.|
|modifiedDate|2|Last modified date.|
|createdDate|3|Created date.|
|version|4|Version value type.|
|sizeInMB|5|Size detection type.|
|doesNotExist|6|The specified file or folder does not exist.|