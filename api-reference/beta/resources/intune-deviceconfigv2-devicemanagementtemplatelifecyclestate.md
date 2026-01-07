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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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