---
title: "external resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# external resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get external](../api/externalconnectors-external-get.md)|[microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md)|Read the properties and relationships of a [microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md) object.|
|[Update external](../api/externalconnectors-external-update.md)|[microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md)|Update the properties of a [microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md) object.|
|[List authorizationSystems](../api/externalconnectors-external-list-authorizationsystems.md)|[microsoft.graph.authorizationSystem](../resources/authorizationsystem.md) collection|Get the authorizationSystem resources from the authorizationSystems navigation property.|
|[Create authorizationSystem](../api/externalconnectors-external-post-authorizationsystems.md)|[microsoft.graph.authorizationSystem](../resources/authorizationsystem.md)|Create a new authorizationSystem object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystems|[microsoft.graph.authorizationSystem](../resources/authorizationsystem.md) collection|**TODO: Add Description**|
|connections|[microsoft.graph.externalConnectors.externalConnection](../resources/externalconnectors-externalconnection.md) collection|**TODO: Add Description**|
|industryData|[industryDataRoot](../resources/industrydata-industrydataroot.md)|**TODO: Add Description**|

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

