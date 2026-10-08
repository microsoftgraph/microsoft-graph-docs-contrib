---
title: "androidManagedStoreLayoutType enum type"
description: "The store layout types for Managed Google Play. Values correspond directly to the store layout types of Google enterprise objects."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidManagedStoreLayoutType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The store layout types for Managed Google Play. Values correspond directly to the store layout types of Google enterprise objects.

## Members
|Member|Value|Description|
|:---|:---|:---|
|basic|0|Default. Basic store layout where all approved apps are automatically visible in the Google Play Store.|
|custom|1|Indicates a customized Google Play Store layout where only apps added to a specific collection in the Intune admin portal are visible in the Google Play Store on managed devices.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|