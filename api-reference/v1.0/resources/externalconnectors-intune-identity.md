---
title: "identity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# identity resource type

Namespace: microsoft.graph.externalConnectors



**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List identities](../api/externalconnectors-externalgroup-list-members.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-intune-identity.md) collection|Get a list of the [identity](../resources/externalconnectors-intune-identity.md) objects and their properties.|
|[Create identity](../api/externalconnectors-externalgroup-post-members.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-intune-identity.md)|Create a new [identity](../resources/externalconnectors-intune-identity.md) object.|
|[Get identity](../api/externalconnectors-intune-identity-get.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-intune-identity.md)|Read the properties and relationships of an [identity](../resources/externalconnectors-intune-identity.md) object.|
|[Update identity](../api/externalconnectors-intune-identity-update.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-intune-identity.md)|Update the properties of an [identity](../resources/externalconnectors-intune-identity.md) object.|
|[Delete identity](../api/externalconnectors-externalgroup-delete-members.md)|None|Deletes an [identity](../resources/externalconnectors-intune-identity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|type|identityType|**TODO: Add Description**.The possible values are: `user`, `group`, `externalGroup`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.identity",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.identity",
  "id": "String (identifier)",
  "type": "String"
}
```

