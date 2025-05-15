---
title: "enrollmentTimeDeviceMembershipTargetType enum type"
description: "Represents the type of the targets that devices will become members of when enrolled with the associated profile. Possible values are staticSecurityGroup."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# enrollmentTimeDeviceMembershipTargetType enum type

Namespace: microsoft.graph
> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.


Represents the type of the targets that devices will become members of when enrolled with the associated profile. Possible values are staticSecurityGroup.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value. Do not use.|
|staticSecurityGroup|1|Indicates the device membership target specified refer to static Entra Security Groups.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|
