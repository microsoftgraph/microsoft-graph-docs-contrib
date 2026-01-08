---
title: "delegationSettings resource type"
description: "Represents the settings for a delegator or delegate."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 02/01/2025
---

# delegationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the settings for a [delegator or delegate](../resources/calldelegation-api-overview.md).

Inherits from [entity](../resources/entity.md).

This resource is an open type that allows additional properties beyond those documented here.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/delegationsettings-get.md)|[delegationSettings](../resources/delegationsettings.md)|Read the properties and relationships of a [delegationSettings](../resources/delegationsettings.md) object.|
|[List delegates](../api/callsettings-list-delegates.md)|[delegationSettings](../resources/delegationsettings.md) collection|Get a list of all delegates for a user.|
|[List delegators](../api/callsettings-list-delegators.md)|[delegationSettings](../resources/delegationsettings.md) collection|Get a list of all delegators for a user.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedActions|[delegateAllowedActions](../resources/delegateallowedactions.md)|The allowed actions for the delegator or delegate.|
|createdDateTime|DateTimeOffset|Date and time when the delegator or delegate entry was created. The DateTimeOffset type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|id|String|Unique identifier of the delegator or delegate. Inherited from [entity](../resources/entity.md). |
|isActive|Boolean|Indicates whether the delegator or delegate relationship is currently active.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.delegationSettings",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegationSettings",
  "allowedActions": {"@odata.type": "microsoft.graph.delegateAllowedActions"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isActive": "Boolean"
}
```
