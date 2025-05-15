---
title: "appManagementLevel enum type"
description: "Management levels for apps"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# appManagementLevel enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Management levels for apps

## Members
|Member|Value|Description|
|:---|:---|:---|
|unspecified|0|Unspecified|
|unmanaged|1|Unmanaged|
|mdm|2|MDM|
|androidEnterprise|4|Android Enterprise|
|androidEnterpriseDedicatedDevicesWithAzureAdSharedMode|8|Android Enterprise dedicated devices with Azure AD Shared mode|
|androidOpenSourceProjectUserAssociated|16|Android Open Source Project (AOSP) devices|
|androidOpenSourceProjectUserless|32|Android Open Source Project (AOSP) userless devices|
|unknownFutureValue|64|Place holder for evolvable enum|