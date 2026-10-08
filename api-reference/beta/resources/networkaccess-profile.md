---
title: profile resource type (for networkAccess)
description: "Represents a container for forwarding policies."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 04/06/2024
---

# profile resource type (for networkAccess)

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for forwarding policies. It's an abstract type from which the [microsoft.graph.networkaccess.forwardingProfile](networkaccess-forwardingprofile.md) resource type is derived.

Inherits from [microsoft.graph.networkaccess.baseEntity](../resources/baseEntity.md).

## Methods


## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description.|
|id|String|The identifier for the profile. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the profile was last modified.|
|name|String|The name of the profile. Inherited from [microsoft.graph.networkaccess.baseEntity](../resources/baseentity.md).|
|state|microsoft.graph.networkaccess.status|the status of the profile. The possible values are: `enabled` and `disabled`.|
|version|String|Profile version.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[microsoft.graph.networkaccess.policyLink](../resources/networkaccess-policylink.md) collection|The traffic forwarding policies associated with this profile.|

## JSON representation
The following JSON representation shows the resource type.
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

