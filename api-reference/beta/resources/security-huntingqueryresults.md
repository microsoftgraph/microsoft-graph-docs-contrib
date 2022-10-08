---
title: "huntingQueryResults resource type"
description: "The results of the hunting query API"
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# huntingQueryResults resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The results of running a [query for advanced hunting](../api/security-runhuntingquery.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|schema|[singlePropertySchema](../resources/security-singlepropertyschema.md) collection|The schema for the response.|
|results|[huntingRowResult](../resources/security-huntingrowresult.md) collection|The results of the hunting query.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.huntingQueryResults"
}
-->
``` json
{
    "schema": [{"@odata.type": "microsoft.graph.singlePropertySchema"}],
    "results": [{"@odata.type": "microsoft.graph.huntingRowResult"}]
}
```