---
title: "androidDeviceOwnerEnrollmentMode enum type"
description: "The enrollment mode for an enrollment profile."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/12/2024
---

# androidDeviceOwnerEnrollmentMode enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
