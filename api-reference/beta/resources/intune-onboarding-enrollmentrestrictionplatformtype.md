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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

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