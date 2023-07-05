---
title: "network access profile resource type"
description: "A profile serves as a container for forwarding policies."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# network access profile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A profile serves as a container for forwarding policies. This is an abstract type from which the [microsoft.graph.networkaccess.forwardingProfile](networkaccess-forwardingprofile.md) resource type is derived.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description.|
|id|String|Identifier for the profile. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|Profile last modified time.|
|name|String|Profile name.|
|state|microsoft.graph.networkaccess.status|Profile state.The possible values are: `enabled`, `disabled`.|
|version|String|Profile version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Traffic forwarding policies associated with this profile.|

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

