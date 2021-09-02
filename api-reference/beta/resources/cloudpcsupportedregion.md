---
title: "cloudPcSupportedRegion resource type"
description: "Represent a supported region in which on-premises network connection can be established for Cloud PCs."
author: "RuiHou105"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcSupportedRegion resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a supported region in which on-premises network connection can be established for Cloud PCs.

[!INCLUDE [cloudpc-api-preview](../../includes/cloudpc-api-preview.md)]

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List cloudPcSupportedRegions](../api/virtualendpoint-list-cloudpcs.md)|[cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) collection|List [cloudPcSupportedRegion](../resources/cloudpcsupportedregion.md) objects and their properties.|

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
