---
title: "dataDiscoveryReport resource type"
description: "Represents a stream of discovered cloud apps."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dataDiscoveryReport resource type

Namespace: microsoft.graph.security

Represents a stream of discovered cloud apps.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List uploaded streams](../api/security-datadiscoveryreport-list-uploadedstreams.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|Get a list of the cloud apps discovery reports.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The stream ID.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|uploadedStreams|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|A collection of streams available for generating cloud discovery report.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.dataDiscoveryReport",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.dataDiscoveryReport",
  "id": "String (identifier)"
}
```

