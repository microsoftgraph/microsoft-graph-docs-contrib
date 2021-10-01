---
title: "external resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# external resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get external](../api/externalconnectors-external-get.md)|[microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md)|Read the properties and relationships of an [external](../resources/externalconnectors-external.md) object.|
|[Update external](../api/externalconnectors-external-update.md)|[microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md)|Update the properties of an [external](../resources/externalconnectors-external.md) object.|
|[List connections](../api/externalconnectors-external-list-connections.md)|[microsoft.graph.externalConnectors.externalConnection](../resources/externalconnectors-externalconnection.md) collection|Get the externalConnection resources from the connections navigation property.|
|[Create externalConnection](../api/externalconnectors-external-post-connections.md)|[microsoft.graph.externalConnectors.externalConnection](../resources/externalconnectors-externalconnection.md)|Create a new externalConnection object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|connections|[microsoft.graph.externalConnectors.externalConnection](../resources/externalconnectors-externalconnection.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalConnectors.external",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.external"
}
```

