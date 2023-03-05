---
title: "unclassifiedArtifact resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# unclassifiedArtifact resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.security.artifact](../resources/security-artifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unclassifiedArtifacts](../api/security-unclassifiedartifact-list.md)|[microsoft.graph.security.unclassifiedArtifact](../resources/security-unclassifiedartifact.md) collection|Get a list of the [microsoft.graph.security.unclassifiedArtifact](../resources/security-unclassifiedartifact.md) objects and their properties.|
|[Get unclassifiedArtifact](../api/security-unclassifiedartifact-get.md)|[microsoft.graph.security.unclassifiedArtifact](../resources/security-unclassifiedartifact.md)|Read the properties and relationships of a [microsoft.graph.security.unclassifiedArtifact](../resources/security-unclassifiedartifact.md) object.|
|[Update unclassifiedArtifact](../api/security-unclassifiedartifact-update.md)|[microsoft.graph.security.unclassifiedArtifact](../resources/security-unclassifiedartifact.md)|Update the properties of a [microsoft.graph.security.unclassifiedArtifact](../resources/security-unclassifiedartifact.md) object.|
|[Delete unclassifiedArtifact](../api/security-unclassifiedartifact-delete.md)|None|Delete a [microsoft.graph.security.unclassifiedArtifact](../resources/security-unclassifiedartifact.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.security.artifact](../resources/security-artifact.md).|
|kind|String|**TODO: Add Description**|
|value|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.unclassifiedArtifact",
  "baseType": "microsoft.graph.security.artifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.unclassifiedArtifact",
  "id": "String (identifier)",
  "kind": "String",
  "value": "String"
}
```

