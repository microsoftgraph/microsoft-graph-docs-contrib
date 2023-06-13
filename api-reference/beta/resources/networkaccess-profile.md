---
title: "profile resource type"
description: "A profile is a container for forwarding or filtering policies"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# profile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A profile is a container for forwarding or filtering policies
This is an abstract type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|description|
|id|String|Identifier for the profile Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Profile last Modified Time|
|name|String|Profile name|
|state|microsoft.graph.networkaccess.status|Profile state.The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|version|String|Profile version|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Filtering or forwarding policies associated with this profile|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.profile",
  "baseType": "microsoft.graph.entity",
  "abstract": true,
  "openType": false  
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.profile",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "state": "String",
  "version": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

