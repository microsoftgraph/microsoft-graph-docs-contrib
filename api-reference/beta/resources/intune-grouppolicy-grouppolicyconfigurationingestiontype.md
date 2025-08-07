---
title: "groupPolicyConfigurationIngestionType enum type"
description: "Group Policy Configuration Ingestion Type"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# groupPolicyConfigurationIngestionType enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Group Policy Configuration Ingestion Type

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Unknown policy configuration ingestion type|
|custom|1|Indicates policy created have definitions ingested by IT admin with sufficient permissions through custom ingestion process|
|builtIn|2|Indicates policy created have definitions ingested through system ingestion process|
|mixed|3|Indicated atleast 1 tenant admin & system ingested definitions configured for this policy|
|unknownFutureValue|4|Unknown future enum value|