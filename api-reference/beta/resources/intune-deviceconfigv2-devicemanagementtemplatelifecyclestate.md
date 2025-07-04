---
title: "deviceManagementTemplateLifecycleState enum type"
description: "Describes current lifecycle state of a template"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceManagementTemplateLifecycleState enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Describes current lifecycle state of a template

## Members
|Member|Value|Description|
|:---|:---|:---|
|invalid|0|Invalid|
|draft|10|Draft|
|active|20|Active|
|superseded|30|Superseded|
|deprecated|40|Deprecated|
|retired|50|Retired|