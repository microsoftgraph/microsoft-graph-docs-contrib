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
|huntingFunctionId|Int64|Unique identifier for the function. Required.|
|name|String|Name of the function. Required.|
|path|String|Folder path where the function is saved.|
|description|String|Description of the function purpose and usage.|
|createdBy|String|Identity of the user who created the function.|
|lastModifiedBy|String|Identity of the user who last modified the function.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the function was last modified.|
|inputParameters|[microsoft.graph.security.huntingSchemaFunctionParameter](../resources/security-huntingschemafunctionparameter.md) collection|Collection of input parameters accepted by the function.|
|outputColumns|[microsoft.graph.security.huntingSchemaTableColumn](../resources/security-huntingschematablecolumn.md) collection|Collection of columns returned by the function.|

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
  "huntingFunctionId": 100,
  "name": "MyCustomQuery",
  "path": "Shared",
  "description": "A custom query that filters device events by severity.",
  "createdBy": "user@contoso.com",
  "lastModifiedBy": "user@contoso.com",
  "lastModifiedDateTime": "2026-04-15T10:30:00Z",
  "inputParameters": [{"@odata.type": "microsoft.graph.security.huntingSchemaFunctionParameter"}],
  "outputColumns": [{"@odata.type": "microsoft.graph.security.huntingSchemaTableColumn"}]
}
```
