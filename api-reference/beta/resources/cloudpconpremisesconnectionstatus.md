---
title: "Enum values"
description: "Microsoft Graph enumeration values"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: enumTypes
---

### cloudPcOnPremisesConnectionStatus enum type

Namespace: microsoft.graph

Possible on-premises connection status

|Members|Value|Description|
|:---|:---|:---|
|pending|0|Created and waiting for health checks|
|running|10|Health checks are running|
|passed|20|Checks passed|
|failed|30|Checks failed|
|unknownFutureValue|999|Unknown future status (reserved, not used right now)|
