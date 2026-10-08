---
title: "enrollmentTimeDeviceMembershipTargetType enum type"
description: "Represents the type of the targets that devices will become members of when enrolled with the associated profile. Possible values are staticSecurityGroup."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 09/12/2024
---

# enrollmentTimeDeviceMembershipTargetType enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents the type of the targets that devices will become members of when enrolled with the associated profile. Possible values are staticSecurityGroup.

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Default value. Do not use.|
|staticSecurityGroup|1|Indicates the device membership target specified refer to static Entra Security Groups.|
|unknownFutureValue|2|Evolvable enumeration sentinel value. Do not use.|