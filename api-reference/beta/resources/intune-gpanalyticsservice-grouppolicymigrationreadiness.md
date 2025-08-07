---
title: "groupPolicyMigrationReadiness enum type"
description: "Indicates if the Group Policy Object file is covered and ready for Intune migration."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# groupPolicyMigrationReadiness enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates if the Group Policy Object file is covered and ready for Intune migration.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|1|No Intune coverage|
|partial|2|Partial Intune coverage|
|complete|3|Complete Intune coverage|
|error|4|Error when analyzing coverage|
|notApplicable|5|No Group Policy settings in GPO|