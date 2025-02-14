---
title: "delegateAllowedActions resource type"
description: "Complex type that represents the allowed actions for a delegate and delegator."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
ms.date: 02/01/2025
---

# delegateAllowedActions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent the allowed actions by the delegator/delegate. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|joinActiveCalls|Boolean|Determines if the delegator/delegate allows joining active calls.|
|makeCalls|Boolean|Determines if the delegator/delegate allows making calls on their behalf.|
|manageCallAndDelegateSettings|Boolean|Determines if the delegator/delegate allows managing call and delegation settings.|
|pickUpHeldCalls|Boolean|Determines if the delegator/delegate allows picking up held calls.|
|receiveCalls|Boolean|Determines if the delegator/delegate allows receiving calls on their behalf.|

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
  "makeCalls": "Boolean",
  "receiveCalls": "Boolean",
  "manageCallAndDelegateSettings": "Boolean",
  "pickUpHeldCalls": "Boolean",
  "joinActiveCalls": "Boolean"
}
```
