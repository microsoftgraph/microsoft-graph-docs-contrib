---
title: "androidRequiredPasswordType enum type"
description: "Android required password type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidRequiredPasswordType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android required password type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default value, no intent.|
|alphabetic|1|Alphabetic password required.|
|alphanumeric|2|Alphanumeric password required.|
|alphanumericWithSymbols|3|Alphanumeric with symbols password required.|
|lowSecurityBiometric|4|Low security biometrics based password required.|
|numeric|5|Numeric password required.|
|numericComplex|6|Numeric complex password required.|
|any|7|A password or pattern is required, and any is acceptable.|