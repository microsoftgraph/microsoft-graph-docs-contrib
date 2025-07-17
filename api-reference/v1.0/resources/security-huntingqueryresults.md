---
title: "huntingQueryResults resource type"
description: "The results of the hunting query API"
ms.date: 11/11/2022
author: "BenAlfasi"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# huntingQueryResults resource type

Namespace: microsoft.graph.security

The results of running a [query for advanced hunting](../api/security-security-runhuntingquery.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|schema|[microsoft.graph.security.singlePropertySchema](../resources/security-singlepropertyschema.md) collection|The schema for the response.|
|results|[microsoft.graph.security.huntingRowResult](../resources/security-huntingrowresult.md) collection|The results of the hunting query.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingQueryResults"
}
-->
``` json
{
    "schema": [{"@odata.type": "microsoft.graph.security.singlePropertySchema"}],
    "results": [{"@odata.type": "microsoft.graph.security.huntingRowResult"}]
}
```