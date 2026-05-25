---
title: "ownerlessGroupPolicy resource type"
description: "Represents the configuration for managing M365 groups that have lost their sole owner."
author: "Ananya-Sharma"
ms.date: 02/12/2026
ms.localizationpriority: medium
ms.subservice: "exchange"
doc_type: resourcePageType
---

# ownerlessGroupPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration for managing [Microsoft 365 groups](../resources/group.md) that have lost their sole owner. Use this policy to send actionable notification emails to active members of ownerless groups to accept ownership. Administrators can configure notification duration, maximum members to notify, and control ownership eligibility by using security groups.

For more information, see [Manage ownerless Microsoft 365 groups and teams](/microsoft-365/admin/create-groups/ownerless-groups-teams)

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/ownerlessgrouppolicy-get.md)|[ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md)|Read the properties of an [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) object.|
|[Upsert](../api/ownerlessgrouppolicy-upsert.md)|[ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md)|Create or update an [ownerlessGroupPolicy](../resources/ownerlessgrouppolicy.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emailInfo|[emailDetails](../resources/emaildetails.md)|The email notification details for the ownerless group policy, including the sender, subject, and body.|
|enabledGroupIds|String collection|The collection of IDs for groups to which the policy is enabled. If empty, the policy is enabled for all groups in the tenant.|
|isEnabled|Boolean|Indicates whether the ownerless group policy is enabled in the tenant. Setting this property to `false` clears the values of all other policy parameters.|
|maxMembersToNotify|Int64|The maximum number of members to notify. Value range is 0-90. Members are prioritized by recent group activity (most active first). If there aren't enough active members to fill the limit, remaining slots are filled with other eligible group members from the directory.|
|notificationDurationInWeeks|Int64|The number of weeks for the notification duration. Value range is 1-7.|
|policyWebUrl|String|The URL to the policy documentation.|
|targetOwners|[targetOwners](../resources/targetowners.md)|The criteria for selecting target owners for the ownerless group.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.ownerlessGroupPolicy",
  "baseType": "microsoft.graph.entity"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ownerlessGroupPolicy",
  "isEnabled": "Boolean",
  "notificationDurationInWeeks": "Integer",
  "maxMembersToNotify": "Integer",
  "enabledGroupIds": [
    "String"
  ],
  "emailInfo": {
    "@odata.type": "microsoft.graph.emailDetails"
  },
  "policyWebUrl": "String",
  "targetOwners": {
    "@odata.type": "microsoft.graph.targetOwners"
  }
}
```
