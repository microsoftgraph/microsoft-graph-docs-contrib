---
title: "targetOwners resource type"
description: "Represents the criteria for selecting target owners in an ownerless group policy."
author: "Ananya-Sharma"
ms.date: 04/22/2026
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: resourcePageType
---

# targetOwners resource type

Namespace: microsoft.graph

Represents the criteria for selecting target owners in an [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md). Controls which group members are eligible to receive ownership notification emails based on security group membership.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|notifyMembers|notifyMembers|The strategy for selecting members to notify about taking ownership. The possible values are: `all`, `allowSelected`, `blockSelected`.|
|securityGroups|String collection|The collection of IDs for security groups used for allowing or blocking filtering. When **notifyMembers** is `all`, all members are eligible for ownership and this collection can be empty. When **notifyMembers** is `allowSelected`, only members in these security groups are eligible. When **notifyMembers** is `blockSelected`, members in these security groups are excluded.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.targetOwners"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.targetOwners",
  "notifyMembers": "String",
  "securityGroups": [
    "String"
  ]
}
```
