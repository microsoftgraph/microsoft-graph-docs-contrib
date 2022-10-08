---
title: "huntingRowResult resource type"
description: "One row results of hunting query API"
author: "BenAlfasi"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# huntingRowResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

One row result of the [advanced hunting query results](../resources/security-huntingqueryresults.md).

This is an open type. The exact columns in the query row result are specified in the `project` function of the KQL query, as part of the request body of [runHuntingQuery](../api/security-runhuntingquery.md).
This class is a Dictionary of string, object.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.huntingRowResult",
  "openType": true
}
-->
``` json
{
}
```