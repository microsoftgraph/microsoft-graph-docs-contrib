---
title: "huntingSchemaFunctionParameter resource type"
description: "Represents an input parameter for an advanced hunting function."
author: "nitzanfrogel"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/13/2026
---

# huntingSchemaFunctionParameter resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an input parameter for an advanced hunting function. Parameters allow callers to provide arguments when invoking a function. Used by both [huntingSchemaBuiltInFunction](../resources/security-huntingschemabuiltinfunction.md) and [huntingSchemaSavedFunction](../resources/security-huntingschemasavedfunction.md) resource types.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|name|String|Name of the parameter. Required.|
|cslType|String|Data type of the parameter in Kusto Query Language (KQL) CSL format. Required.|
|defaultValue|String|Default value used when the caller doesn't provide a value for this parameter.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.huntingSchemaFunctionParameter"
}
-->
``` json
{
  "name": "SHA1",
  "cslType": "string",
  "defaultValue": null
}
```
