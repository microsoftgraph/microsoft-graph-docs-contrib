---
title: "huntingSchemaTable resource type"
description: "Represents an advanced hunting table accessible to the user."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/13/2026
---

# huntingSchemaTable resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an advanced hunting table accessible to the user. Part of the [huntingSchemaResult](../resources/security-huntingschemaresult.md) returned by the [getHuntingSchema](../api/security-security-gethuntingschema.md) function.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|columns|[microsoft.graph.security.huntingSchemaTableColumn](../resources/security-huntingschematablecolumn.md) collection|Collection of columns in the table with their data types.|
|description|String|Description of what data the table contains.|
|name|String|Name of the table. Required.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingSchemaTable"
}
-->
``` json
{
  "name": "String",
  "description": "String",
  "columns": [{"@odata.type": "microsoft.graph.security.huntingSchemaTableColumn"}]
}
```
