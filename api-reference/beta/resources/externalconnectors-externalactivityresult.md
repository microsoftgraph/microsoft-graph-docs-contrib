---
title: "externalActivityResult resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# externalActivityResult resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalActivityResults](../api/externalconnectors-externalactivityresult-list.md)|[microsoft.graph.externalConnectors.externalActivityResult](../resources/externalconnectors-externalactivityresult.md) collection|Get a list of the [externalActivityResult](../resources/externalconnectors-externalactivityresult.md) objects and their properties.|
|[Get externalActivityResult](../api/externalconnectors-externalactivityresult-get.md)|[microsoft.graph.externalConnectors.externalActivityResult](../resources/externalconnectors-externalactivityresult.md)|Read the properties and relationships of an [externalActivityResult](../resources/externalconnectors-externalactivityresult.md) object.|
|[Update externalActivityResult](../api/externalconnectors-externalactivityresult-update.md)|[microsoft.graph.externalConnectors.externalActivityResult](../resources/externalconnectors-externalactivityresult.md)|Update the properties of an [externalActivityResult](../resources/externalconnectors-externalactivityresult.md) object.|
|[Delete externalActivityResult](../api/externalconnectors-externalactivityresult-delete.md)|None|Deletes an [externalActivityResult](../resources/externalconnectors-externalactivityresult.md) object.|
|[List identity](../api/externalconnectors-externalactivityresult-list-performedby.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md) collection|Get the identity resources from the performedBy navigation property.|
|[Add identity](../api/externalconnectors-externalactivityresult-post-performedby.md)|[microsoft.graph.externalConnectors.identity](../resources/externalconnectors-identity.md)|Add performedBy by posting to the performedBy collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|error|[microsoft.graph.publicError](../resources/publicerror.md)|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).|
|type|externalActivityType|**TODO: Add Description** Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md).The possible values are: `viewed`, `modified`, `created`, `commented`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|performedBy|[identity](../resources/externalconnectors-identity.md)|**TODO: Add Description** Inherited from [externalActivityBase](../resources/externalconnectors-externalactivitybase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.externalActivityResult",
  "baseType": "microsoft.graph.externalConnectors.externalActivityBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.externalActivityResult",
  "type": "String",
  "startDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

