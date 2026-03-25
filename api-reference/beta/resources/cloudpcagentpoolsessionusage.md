---
title: "cloudPcAgentPoolSessionUsage resource type"
description: "Represents the session usage of a Cloud PC agent pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcAgentPoolSessionUsage resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the session usage of a Cloud PC agent pool.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activeSessionsCount|Int32|The number of active sessions in the pool. Read-only.|
|availableSessionsCount|Int32|The number of available sessions in the pool. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcAgentPoolSessionUsage"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolSessionUsage",
  "activeSessionsCount": 3,
  "availableSessionsCount": 5
}
```
