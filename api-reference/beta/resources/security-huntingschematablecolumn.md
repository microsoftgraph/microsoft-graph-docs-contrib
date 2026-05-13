---
title: "huntingSchemaTableColumn resource type"
description: "Represents a column in an advanced hunting table."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/13/2026
---

# huntingSchemaTableColumn resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a column in an advanced hunting table. Part of the [huntingSchemaTable](../resources/security-huntingschematable.md) returned by the [getHuntingSchema](../api/security-security-gethuntingschema.md) function.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the column. Required.|
|dataType|String|Data type of the column (for example, `DateTime`, `String`). Required.|
|description|String|Description of the column.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingSchemaTableColumn"
}
-->
``` json
{
  "name": "Timestamp",
  "dataType": "DateTime",
  "description": "Date and time when the record was generated"
}
```
