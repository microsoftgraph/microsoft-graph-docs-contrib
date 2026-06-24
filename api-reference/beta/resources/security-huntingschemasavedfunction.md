---
title: "huntingSchemaSavedFunction resource type"
description: "Represents a custom function created by a user in advanced hunting."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/13/2026
---

# huntingSchemaSavedFunction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom function created by a user in advanced hunting. Custom functions allow users to save reusable query logic that can be invoked in other queries. Includes both shared functions accessible to all tenant users and personal functions visible only to their creator. Part of the [huntingSchemaFunctions](../resources/security-huntingschemafunctions.md) returned by the [getHuntingSchema](../api/security-security-gethuntingschema.md) function.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|String|Identity of the user who created the function.|
|description|String|Description of the function purpose and usage.|
|huntingFunctionId|Int64|Unique identifier for the function. Required.|
|inputParameters|[microsoft.graph.security.huntingSchemaFunctionParameter](../resources/security-huntingschemafunctionparameter.md) collection|Collection of input parameters accepted by the function.|
|lastModifiedBy|String|Identity of the user who last modified the function.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the function was last modified.|
|name|String|Name of the function. Required.|
|outputColumns|[microsoft.graph.security.huntingSchemaTableColumn](../resources/security-huntingschematablecolumn.md) collection|Collection of columns returned by the function.|
|path|String|Folder path where the function is saved.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingSchemaSavedFunction"
}
-->
``` json
{
  "createdBy": "String",
  "description": "String",
  "huntingFunctionId": "Int64",
  "inputParameters": [{"@odata.type": "microsoft.graph.security.huntingSchemaFunctionParameter"}],
  "lastModifiedBy": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "name": "String",
  "outputColumns": [{"@odata.type": "microsoft.graph.security.huntingSchemaTableColumn"}],
  "path": "String"
}
```
