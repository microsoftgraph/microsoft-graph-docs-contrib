---
title: "androidRequiredPasswordComplexity enum type"
description: "The password complexity types that can be set on Android. One of: NONE, LOW, MEDIUM, HIGH. This is an API targeted to Android 11+."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# androidRequiredPasswordComplexity enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

The password complexity types that can be set on Android. One of: NONE, LOW, MEDIUM, HIGH. This is an API targeted to Android 11+.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Device default value, no password.|
|low|1|The required password complexity on the device is of type low as defined by the Android documentation.|
|medium|2|The required password complexity on the device is of type medium as defined by the Android documentation.|
|high|3|The required password complexity on the device is of type high as defined by the Android documentation.|