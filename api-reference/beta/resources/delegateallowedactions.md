---
title: "delegateAllowedActions resource type"
description: "Represents the allowed actions for a delegate and delegator."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 02/01/2025
---

# delegateAllowedActions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the allowed actions for a delegate and delegator.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|joinActiveCalls|Boolean|Indicates whether the delegator or delegate allows participation in active calls.|
|makeCalls|Boolean|Indicates whether the delegator or delegate allows calls to be made on their behalf.|
|manageCallAndDelegateSettings|Boolean|Indicates whether the delegator or delegate allows the management of call and delegation settings.|
|pickUpHeldCalls|Boolean|Indicates whether the delegator or delegate allows held calls to be picked up.|
|receiveCalls|Boolean|Indicates whether the delegator or delegate allows calls to be received on their behalf.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.delegateAllowedActions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.delegateAllowedActions",
  "joinActiveCalls": "Boolean",
  "makeCalls": "Boolean",
  "manageCallAndDelegateSettings": "Boolean",
  "pickUpHeldCalls": "Boolean",
  "receiveCalls": "Boolean"
}
```
