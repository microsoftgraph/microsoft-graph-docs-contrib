---
title: "dataDiscoveryRoot resource type"
description: "**TODO: Add Description**"
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# dataDiscoveryRoot resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/security-datadiscoveryroot-list.md)|[microsoft.graph.security.dataDiscoveryRoot](../resources/security-datadiscoveryroot.md) collection|Get a list of the [microsoft.graph.security.dataDiscoveryRoot](../resources/security-datadiscoveryroot.md) objects and their properties.|
|[Get](../api/security-datadiscoveryroot-get.md)|[microsoft.graph.security.dataDiscoveryRoot](../resources/security-datadiscoveryroot.md)|Read the properties and relationships of a [microsoft.graph.security.dataDiscoveryRoot](../resources/security-datadiscoveryroot.md) object.|
|[Update](../api/security-datadiscoveryroot-update.md)|[microsoft.graph.security.dataDiscoveryRoot](../resources/security-datadiscoveryroot.md)|Update the properties of a [microsoft.graph.security.dataDiscoveryRoot](../resources/security-datadiscoveryroot.md) object.|
|[Delete](../api/security-datadiscoveryroot-delete.md)|None|Delete a [microsoft.graph.security.dataDiscoveryRoot](../resources/security-datadiscoveryroot.md) object.|
|[List dataDiscoveryReport](../api/security-datadiscoveryroot-list-cloudappdiscovery.md)|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md) collection|Get the dataDiscoveryReport resources from the cloudAppDiscovery navigation property.|
|[Create dataDiscoveryReport](../api/security-datadiscoveryroot-post-cloudappdiscovery.md)|[microsoft.graph.security.dataDiscoveryReport](../resources/security-datadiscoveryreport.md)|Create a new dataDiscoveryReport object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|cloudAppDiscovery|[dataDiscoveryReport](../resources/security-datadiscoveryreport.md)|**TODO: Add Description**|

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

