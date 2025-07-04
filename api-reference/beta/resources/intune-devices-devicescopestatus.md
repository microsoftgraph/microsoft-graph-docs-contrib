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

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector

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