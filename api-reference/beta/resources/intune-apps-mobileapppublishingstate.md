---
title: "mobileAppPublishingState enum type"
description: "Indicates the publishing state of an app."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppPublishingState enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the publishing state of an app.

## Members
|Member|Value|Description|
|:---|:---|:---|
|notPublished|0|The app is not yet published.|
|processing|1|The app is pending service-side processing.|
|published|2|The app is published.|