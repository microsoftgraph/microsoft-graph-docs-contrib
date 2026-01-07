---
title: "eventQuery resource type"
description: "Represents the workload (SharePoint Online, OneDrive for work or school, Exchange Online) and identification information associated with a retention event."
author: "sseth"
ms.localizationpriority: medium
ms.subservice: "compliance"
doc_type: resourcePageType
ms.date: 06/11/2024
---

# eventQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the workload (SharePoint in Microsoft 365, OneDrive for work or school, Exchange Online) and identification information associated with a retention event.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|queryType|microsoft.graph.security.queryType|Represents the type of query associated with an event. 'files' for SharePoint in Microsoft 365 and OneDrive for work or school, and 'messages' for Exchange Online. The possible values are: `files`, `messages`, `unknownFutureValue`.|
|query|String|Represents unique identification for the  query. 'Asset ID' for SharePoint in Microsoft 365 and OneDrive for work or school, 'keywords' for Exchange Online.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.eventQuery"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.eventQuery",
  "queryType": "String",
  "query": "String"
}
```


