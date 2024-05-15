---
title: "dataDiscoveryReport resource type"
description: "**TODO: Add Description**"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dataDiscoveryReport resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-datadiscoveryroot-list-cloudappdiscovery.md)|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) collection|Get a list of the [microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) objects and their properties.|
|[Create](../api/security-datadiscoveryroot-post-cloudappdiscovery.md)|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md)|Create a new [microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) object.|
|[Get](../api/security-datadiscoveryreport-get.md)|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md)|Read the properties and relationships of a [microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) object.|
|[Update](../api/security-datadiscoveryreport-update.md)|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md)|Update the properties of a [microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) object.|
|[Delete](../api/security-datadiscoveryroot-delete-cloudappdiscovery.md)|None|Delete a [microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) object.|
|[List uploadedStreams](../api/security-datadiscoveryreport-list-uploadedstreams.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|Get the cloudAppDiscoveryReport resources from the uploadedStreams navigation property.|
|[Create cloudAppDiscoveryReport](../api/security-datadiscoveryreport-post-uploadedstreams.md)|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md)|Create a new cloudAppDiscoveryReport object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|uploadedStreams|[microsoft.graph.security.cloudAppDiscoveryReport](../resources/security-cloudappdiscoveryreport.md) collection|**TODO: Add Description**|

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

