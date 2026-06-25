---
title: "huntingSchemaBuiltInFunction resource type"
description: "Represents a prebuilt function included with Microsoft Defender XDR advanced hunting."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/13/2026
---

# huntingSchemaBuiltInFunction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a prebuilt function included with Microsoft Defender XDR advanced hunting. Built-in functions are available to all advanced hunting instances and can't be modified by users. Part of the [huntingSchemaFunctions](../resources/security-huntingschemafunctions.md) returned by the [getHuntingSchema](../api/security-security-gethuntingschema.md) function.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|documentation|String|Description of the function and its usage.|
|huntingFunctionId|Int64|Unique identifier for the function. Required.|
|inputParameters|[microsoft.graph.security.huntingSchemaFunctionParameter](../resources/security-huntingschemafunctionparameter.md) collection|Collection of input parameters accepted by the function.|
|name|String|Name of the function. Required.|
|outputColumns|[microsoft.graph.security.huntingSchemaTableColumn](../resources/security-huntingschematablecolumn.md) collection|Collection of columns returned by the function.|
|path|String|Folder path of the function.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingSchemaBuiltInFunction"
}
-->
``` json
{
  "documentation": "String",
  "huntingFunctionId": "Int64",
  "inputParameters": [{"@odata.type": "microsoft.graph.security.huntingSchemaFunctionParameter"}],
  "name": "String",
  "outputColumns": [{"@odata.type": "microsoft.graph.security.huntingSchemaTableColumn"}],
  "path": "String"
}
```
