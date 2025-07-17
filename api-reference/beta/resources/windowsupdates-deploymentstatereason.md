---
title: "deploymentStateReason resource type"
description: "A reason for a particular deployment state."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 08/31/2024
---

# deploymentStateReason resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A reason for a particular deployment state.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|microsoft.graph.windowsUpdates.deploymentStateReasonValue|Specifies a reason for the deployment state. Possible values are: `scheduledByOfferWindow`, `offeringByRequest`, `pausedByRequest`, `pausedByMonitoring`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `faultedByContentOutdated`. Read-only.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.deploymentStateReason"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.deploymentStateReason",
  "value": "String"
}
```

