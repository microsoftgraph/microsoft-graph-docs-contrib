---
title: "profile resource type"
description: "profile is a container for policies"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# profile resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

profile is a container for policies
This is an abstract type.


Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List profiles](../api/networkaccess-profile-list.md)|[microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md) collection|Get a list of the [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md) objects and their properties.|
|[Get profile](../api/networkaccess-profile-get.md)|[microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md) object.|
|[Update profile](../api/networkaccess-profile-update.md)|[microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md)|Update the properties of a [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md) object.|
|[Delete profile](../api/networkaccess-profile-delete.md)|None|Delete a [microsoft.graph.networkaccess.profile](../resources/networkaccess-profile.md) object.|
|[List policies](../api/networkaccess-filteringprofile-list-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Get the policyLink resources from the policies navigation property.|
|[Create policyLink](../api/networkaccess-profile-post-policies.md)|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md)|Create a new policyLink object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|description|
|id|String|id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|last Modified DateTime|
|name|String|name|
|state|microsoft.graph.networkaccess.status|state.The possible values are: `enabled`, `disabled`, `unknownFutureValue`.|
|version|String|version|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|Linked policies|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.profile",
  "baseType": "microsoft.graph.entity",
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

