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

One row result of the [hunting query results](../resources/security-huntingqueryresults.md).
This class is a Dictionary of string, object.


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.huntingRowResult"
}
-->
``` json
{
    "Timestamp": "2020-08-30T06:38:35.7664356Z",
    "FileName": "conhost.exe",
    "InitiatingProcessFileName": "powershell.exe"
}
```