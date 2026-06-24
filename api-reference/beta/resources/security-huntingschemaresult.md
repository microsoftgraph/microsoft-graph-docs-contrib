---
title: "huntingSchemaResult resource type"
description: "Contains the advanced hunting schema accessible to the signed-in user, including tables and functions."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/13/2026
---

# huntingSchemaResult resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the advanced hunting schema accessible to the signed-in user, including tables and functions. Returned by the [getHuntingSchema](../api/security-security-gethuntingschema.md) function.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|functions|[microsoft.graph.security.huntingSchemaFunctions](../resources/security-huntingschemafunctions.md)|Object containing the built-in functions and saved functions available to the user.|
|tables|[microsoft.graph.security.huntingSchemaTable](../resources/security-huntingschematable.md) collection|Collection of advanced hunting tables the user is authorized to query.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingSchemaResult"
}
-->
``` json
{
  "tables": [{"@odata.type": "microsoft.graph.security.huntingSchemaTable"}],
  "functions": {"@odata.type": "microsoft.graph.security.huntingSchemaFunctions"}
}
```
