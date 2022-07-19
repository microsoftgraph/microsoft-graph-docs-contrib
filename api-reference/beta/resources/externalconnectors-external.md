---
title: "external resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# external resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externals](../api/externalconnectors-external-list.md)|[microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md) collection|Get a list of the [external](../resources/externalconnectors-external.md) objects and their properties.|
|[Get external](../api/externalconnectors-external-get.md)|[microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md)|Read the properties and relationships of an [external](../resources/externalconnectors-external.md) object.|
|[Update external](../api/externalconnectors-external-update.md)|[microsoft.graph.externalConnectors.external](../resources/externalconnectors-external.md)|Update the properties of an [external](../resources/externalconnectors-external.md) object.|
|[Delete external](../api/externalconnectors-external-delete.md)|None|Deletes an [external](../resources/externalconnectors-external.md) object.|
|[List industryDataTenant](../api/externalconnectors-external-list-industrydata.md)|[microsoft.graph.industryData.industryDataTenant](../resources/industrydata-industrydatatenant.md) collection|Get the industryDataTenant resources from the industryData navigation property.|
|[Create industryDataTenant](../api/externalconnectors-external-post-industrydata.md)|[microsoft.graph.industryData.industryDataTenant](../resources/industrydata-industrydatatenant.md)|Create a new industryDataTenant object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|industryData|[industryDataTenant](../resources/industrydata-industrydatatenant.md)|**TODO: Add Description**|

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

