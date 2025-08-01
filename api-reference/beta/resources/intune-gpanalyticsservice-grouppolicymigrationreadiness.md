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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

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