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

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Category Ingestion source

## Members
|Member|Value|Description|
|:---|:---|:---|
|unknown|0|Indicates unknown category|
|custom|1|Indicates the category is ingested by IT admin with sufficient permissions through custom ingestion process|
|builtIn|2|Indicates the category is ingested through system ingestion process|
|unknownFutureValue|3|Unknown future enum value|