---
title: "deviceScopeStatus enum type"
description: "Indicates the device scope status after the device scope has been enabled. Possible values are: none, computing, insufficientData or completed. Default value is none."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: enumPageType
ms.date: 08/01/2024
---

# deviceScopeStatus enum type

Namespace: microsoft.graph

> **Important:** Microsoft supports Intune /beta APIs, but they are subject to more frequent change. Microsoft recommends using version v1.0 when possible. Check an API's availability in version v1.0 using the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Indicates the device scope status after the device scope has been enabled. Possible values are: none, computing, insufficientData or completed. Default value is none.

## Members
|Member|Value|Description|
|:---|:---|:---|
|none|0|Indicates the device scope is not enabled and there are no calculations in progress.|
|computing|1|Indicates the device scope is enabled and report metrics data are being recalculated by the service.|
|insufficientData|2|Indicates the device scope is enabled but there is insufficient data to calculate results. The system requires information from at least 5 devices before calculations can occur.|
|completed|3|Device scope is enabled and finished recalculating the report metric. Device scope is now ready to be used.|
|unknownFutureValue|4|Placeholder value for future expansion.|