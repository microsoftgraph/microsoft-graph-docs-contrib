---
title: "mobileAppSupersedenceType enum type"
description: "Indicates the supersedence type associated with a relationship between two mobile apps."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# mobileAppSupersedenceType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the supersedence type associated with a relationship between two mobile apps.

## Members
|Member|Value|Description|
|:---|:---|:---|
|update|0|Indicates that the child app should be updated by the internal logic of the parent app.|
|replace|1|Indicates that the child app should be uninstalled before installing the parent app.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|