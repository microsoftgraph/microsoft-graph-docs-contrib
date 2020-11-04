---
title: "cloudPcOnPremisesConnectionStatus enum type"
description: "cloudPc on-premises connection status"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: enumPageType
---

# cloudPcOnPremisesConnectionStatus enum type

Namespace: microsoft.graph

[cloudPcOnPremisesConnection](../resources/cloudpconpremisesconnection.md) status type.

## Members

|Member|Value|Description|
|:---|:---|:---|
|pending|0|Created and waiting for health checks|
|running|10|Health checks are running|
|passed|20|Checks passed|
|failed|30|Checks failed|
|unknownFutureValue|999|Unknown future status (reserved, not used right now)|
