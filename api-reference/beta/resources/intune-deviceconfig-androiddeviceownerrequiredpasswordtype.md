---
title: "androidDeviceOwnerRequiredPasswordType enum type"
description: "Android Device Owner policy required password type."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidDeviceOwnerRequiredPasswordType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Android Device Owner policy required password type.

## Members
|Member|Value|Description|
|:---|:---|:---|
|deviceDefault|0|Device default value, no intent.|
|required|1|There must be a password set, but there are no restrictions on type.|
|numeric|2|At least numeric.|
|numericComplex|3|At least numeric with no repeating or ordered sequences.|
|alphabetic|4|At least alphabetic password.|
|alphanumeric|5|At least alphanumeric password|
|alphanumericWithSymbols|6|At least alphanumeric with symbols.|
|lowSecurityBiometric|7|Low security biometrics based password required.|
|customPassword|8|Custom password set by the admin.|