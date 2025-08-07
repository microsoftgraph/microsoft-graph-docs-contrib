---
title: "androidWorkProfileRequiredPasswordType enum type"
description: "Android Work Profile required password type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidWorkProfileRequiredPasswordType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Work Profile required password type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default value, no intent.|
|lowSecurityBiometric|1|Low security biometrics based password required.|
|required|2|Required.|
|atLeastNumeric|3|At least numeric password required.|
|numericComplex|4|Numeric complex password required.|
|atLeastAlphabetic|5|At least alphabetic password required.|
|atLeastAlphanumeric|6|At least alphanumeric password required.|
|alphanumericWithSymbols|7|At least alphanumeric with symbols password required.|