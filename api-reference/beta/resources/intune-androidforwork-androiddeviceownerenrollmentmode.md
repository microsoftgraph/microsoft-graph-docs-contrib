---
title: "androidDeviceOwnerEnrollmentMode enum type"
description: "The enrollment mode for an enrollment profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerEnrollmentMode enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The enrollment mode for an enrollment profile.

## Members
|Member|Value|Description|
|:---|:---|:---|
|corporateOwnedDedicatedDevice|0||
|corporateOwnedFullyManaged|1||
|corporateOwnedWorkProfile|2||
|corporateOwnedAOSPUserlessDevice|3|Corporate owned, userless Android Open Source Project (AOSP) device, without Google Mobile Services.|
|corporateOwnedAOSPUserAssociatedDevice|4|Corporate owned, user-associated Android Open Source Project (AOSP) device, without Google Mobile Services.|