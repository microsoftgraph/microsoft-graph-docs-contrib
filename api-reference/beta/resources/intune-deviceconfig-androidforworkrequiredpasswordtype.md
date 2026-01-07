---
title: "androidForWorkRequiredPasswordType enum type"
description: "Android For Work required password type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidForWorkRequiredPasswordType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android For Work required password type.

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