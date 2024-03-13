---
title: "product resource type"
description: "Represents a Windows product."
author: "skandula"
ms.localizationpriority: medium
ms.service: "windows-update-business"
doc_type: resourcePageType
---

# product resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Windows product.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get known issues by time range](../api/windowsupdates-product-getknownissuesbytimerange.md)|[microsoft.graph.windowsUpdates.knownIssue](../resources/windowsupdates-knownissue.md) collection|Get known issues related to a particular product based on a specified timeframe in the past.|
|[Find by catalog ID](../api/windowsupdates-product-findbycatalogid.md)|[microsoft.graph.windowsUpdates.product](../resources/windowsupdates-product.md) collection|Find the product revisions associated with a catalog ID and the known issues directly or indirectly related to the catalog ID.|
|[Find by knowledge base number](../api/windowsupdates-product-findbykbnumber.md)|[microsoft.graph.windowsUpdates.product](../resources/windowsupdates-product.md) collection|Find the product revisions associated with a knowledge base number and the known issues directly or indirectly related to the knowledge base number.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|friendlyNames|String collection|The friendly names of the product. For example, `Version 22H2 (OS build 22621)`. Read-only.|
|groupName|String|The name of the product group. For example, `Windows 11`. Read-only.|
|id|String|The unique identifier for the product. Read-only.|
|name|String|The name of the product. For example, `Windows 11, version 22H2`. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|editions|[microsoft.graph.windowsUpdates.edition](../resources/windowsupdates-edition.md) collection| Represents an edition of a particular Windows product. |
|knownIssues|[microsoft.graph.windowsUpdates.knownIssue](../resources/windowsupdates-knownissue.md) collection| Represents a known issue related to a Windows product. |
|revisions|[microsoft.graph.windowsUpdates.productRevision](../resources/windowsupdates-productrevision.md) collection|Represents a product revision.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.product",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.product",
  "friendlyNames": ["String"],
  "groupName": "String",
  "id": "String (identifier)",
  "name": "String",
  "releaseDateTime": "String (timestamp)"
}
```
