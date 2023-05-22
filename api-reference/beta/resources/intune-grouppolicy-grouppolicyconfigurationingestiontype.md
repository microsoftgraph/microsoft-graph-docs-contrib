---
title: "groupPolicyConfigurationIngestionType enum type"
description: "Group Policy Configuration Ingestion Type"
author: "jaiprakashmb"
localization_priority: Normal
ms.prod: "intune"
doc_type: enumPageType
---

# groupPolicyConfigurationIngestionType enum type

Namespace: microsoft.graph

> **Important:** Microsoft Graph APIs under the /beta version are subject to change; production use is not supported.

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
