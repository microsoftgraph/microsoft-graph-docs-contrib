---
title: "cloudPcSupportedRegion resource type"
description: "Represents a supported region to establish an on-premises network connection for Cloud PCs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSupportedRegion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a supported region to establish an on-premises network connection for Cloud PCs.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcSupportedRegions](../api/virtualendpoint-list-supportedregions.md)|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|List the supported regions that are available for creating Cloud PC connections.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the supported region. Read-only.|
|displayName|String|The name for the supported region. Read-only.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcSupportedRegion",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSupportedRegion",
  "id": "String (identifier)",
  "displayName": "String"
}
```
