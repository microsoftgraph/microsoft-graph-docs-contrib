---
title: "callSettings resource type"
description: "Contains information about a call settings resource."
author: "garchiro7"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "cloud-communications"
ms.date: 02/01/2025
---

# callSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a call settings resource.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List delegates](../api/callsettings-list-delegates.md)|[delegationSettings](../resources/delegationsettings.md) collection|Get a list of all delegates for a user.|
|[List delegators](../api/callsettings-list-delegators.md)|[delegationSettings](../resources/delegationsettings.md) collection|Get a list of all delegators for a user.|

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|delegates|[delegationSettings](../resources/delegationsettings.md) collection|Represents the delegate settings.|
|delegators|[delegationSettings](../resources/delegationsettings.md) collection|Represents the delegator settings.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callSettings",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callSettings"
}
```
