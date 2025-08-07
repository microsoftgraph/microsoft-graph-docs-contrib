---
title: "ingestionSource enum type"
description: "Category Ingestion source"
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# ingestionSource enum type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Category Ingestion source

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Indicates unknown category|
|custom|1|Indicates the category is ingested by IT admin with sufficient permissions through custom ingestion process|
|builtIn|2|Indicates the category is ingested through system ingestion process|
|unknownFutureValue|3|Unknown future enum value|