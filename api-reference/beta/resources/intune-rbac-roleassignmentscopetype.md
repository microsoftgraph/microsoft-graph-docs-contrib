---
title: "roleAssignmentScopeType enum type"
description: "Specifies the type of scope for a Role Assignment."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# roleAssignmentScopeType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Specifies the type of scope for a Role Assignment.

## Members
|Member|Value|Description|
|:---|:---|:---|
|resourceScope|0|Default. Indicates that assignments are allowed to the specified resource scopes. Resource scopes are listed as Entra ID security group IDs.|
|allDevices|1|Indicates that assignments are allowed to all Intune devices. Note that this does not map to any Entra ID security group, it is internal to Intune.|
|allLicensedUsers|2|Indicates that assignments are allowed to all Intune licensed users. Note that this does not map to any Entra ID security group, it is internal to Intune.|
|allDevicesAndLicensedUsers|3|Indicates that assignments are allowed to all Intune devices and licensed users. Note that this does not map to any Entra ID security group, it is internal to Intune.|
|unknownFutureValue|4|Evolvable enumeration sentinel value. Do not use.|