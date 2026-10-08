---
title: "investigation resource type"
description: "Contains investigation details associated with an incident case."
author: "alfeldsh"
ms.date: 05/29/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# investigation resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains investigation details for an [incidentCase](../resources/security-casemanagement-incidentcase.md). Returned in the **investigation** property.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|count|Int32|The number of investigations.|
|ids|String collection|The investigation identifiers.|
|state|String|The investigation state.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.investigation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.investigation",
  "ids": [
    "String"
  ],
  "count": "Integer",
  "state": "String"
}
```
