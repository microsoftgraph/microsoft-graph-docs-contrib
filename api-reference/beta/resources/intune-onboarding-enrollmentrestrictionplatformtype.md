---
title: "enrollmentRestrictionPlatformType enum type"
description: "This enum indicates the platform type for which the enrollment restriction applies."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# enrollmentRestrictionPlatformType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

This enum indicates the platform type for which the enrollment restriction applies.

## Members
|Member|Value|Description|
|:---|:---|:---|
|allPlatforms|0|Indicates that the enrollment configuration applies to all platforms|
|ios|1|Indicates that the enrollment configuration applies only to iOS/iPadOS devices|
|windows|2|Indicates that the enrollment configuration applies only to Windows devices|
|windowsPhone|3|Indicates that the enrollment configuration applies only to Windows Phone devices|
|android|4|Indicates that the enrollment configuration applies only to Android devices|
|androidForWork|5|Indicates that the enrollment configuration applies only to Android for Work devices|
|mac|7|Indicates that the enrollment configuration applies only to macOS devices|
|linux|8|Indicates that the enrollment configuration applies only to Linux devices|
|unknownFutureValue|9|Evolvable enumeration sentinel value. Do not use|