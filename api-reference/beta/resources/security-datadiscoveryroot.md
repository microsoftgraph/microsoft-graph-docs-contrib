---
title: "dataDiscoveryRoot resource type"
description: "Represents data discovery entities."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dataDiscoveryRoot resource type

Namespace: microsoft.graph.security

Represents data discovery entities.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataDiscoveryReport](../api/security-datadiscoveryroot-list-cloudappdiscovery.md)|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) collection|Represents the data discovery entities.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique ID of the discovery stream.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|microsoft.graph.security.cloudAppDiscovery|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md)|The available entities.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataDiscoveryRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataDiscoveryRoot",
  "id": "String (identifier)"
}
```

