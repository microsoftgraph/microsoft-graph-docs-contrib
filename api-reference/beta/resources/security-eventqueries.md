---
title: "eventQuery resource type"
description: "Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event."
author: "sseth"
ms.localizationpriority: medium
ms.prod: "compliance"
doc_type: resourcePageType
---

# eventQuery resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the workload (SharePoint Online, OneDrive for Business, Exchange Online) and identification information associated with a retention event.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|queryType|microsoft.graph.security.queryType|Represents the type of query associated with an event. 'files' for SPO and ODB and 'messages' for EXO.The possible values are: `files`, `messages`, `unknownFutureValue`.|
|query|String|Represents unique identification for the  query. 'Asset ID' for SharePoint Online and OneDrive for Business, 'keywords' for Exchange Online.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.eventQueries"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.eventQueries",
  "queryType": "String",
  "query": "String"
}
```


