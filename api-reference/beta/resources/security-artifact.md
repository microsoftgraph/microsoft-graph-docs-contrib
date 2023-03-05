---
title: "artifact resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# artifact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List artifacts](../api/security-passivedns-list-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md) collection|Get a list of the [microsoft.graph.security.artifact](../resources/security-artifact.md) objects and their properties.|
|[Create artifact](../api/security-passivedns-post-artifact.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md)|Create a new [microsoft.graph.security.artifact](../resources/security-artifact.md) object.|
|[Get artifact](../api/security-artifact-get.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md)|Read the properties and relationships of a [microsoft.graph.security.artifact](../resources/security-artifact.md) object.|
|[Update artifact](../api/security-artifact-update.md)|[microsoft.graph.security.artifact](../resources/security-artifact.md)|Update the properties of a [microsoft.graph.security.artifact](../resources/security-artifact.md) object.|
|[Delete artifact](../api/security-passivedns-delete-artifact.md)|None|Delete a [microsoft.graph.security.artifact](../resources/security-artifact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.artifact",
  "id": "String (identifier)"
}
```

