---
title: "huntingSchemaFunctions resource type"
description: "Contains the two categories of advanced hunting functions accessible to the user: built-in functions and saved functions."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/13/2026
---

# huntingSchemaFunctions resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the two categories of advanced hunting functions accessible to the user: built-in functions and saved functions. Part of the [huntingSchemaResult](../resources/security-huntingschemaresult.md) returned by the [getHuntingSchema](../api/security-security-gethuntingschema.md) function.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|builtInFunctions|[microsoft.graph.security.huntingSchemaBuiltInFunction](../resources/security-huntingschemabuiltinfunction.md) collection|Prebuilt functions included with Microsoft Defender XDR advanced hunting.|
|savedFunctions|[microsoft.graph.security.huntingSchemaSavedFunction](../resources/security-huntingschemasavedfunction.md) collection|Custom functions created by users, including shared functions accessible to all tenant users and personal functions visible only to their creator.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingSchemaFunctions"
}
-->
``` json
{
  "builtInFunctions": [{"@odata.type": "microsoft.graph.security.huntingSchemaBuiltInFunction"}],
  "savedFunctions": [{"@odata.type": "microsoft.graph.security.huntingSchemaSavedFunction"}]
}
```
