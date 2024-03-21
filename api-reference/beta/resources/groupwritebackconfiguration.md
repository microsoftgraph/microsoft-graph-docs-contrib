---
title: "groupWritebackConfiguration resource type"
description: "Indicates whether writeback of cloud groups to on-premises Active Directory is enabled and the target group type for the on-premises group."
author: "yuhko-msft"
ms.reviewer: "mbhargav, khotzteam, aadgroupssg"
ms.localizationpriority: medium
ms.subservice: "entra-groups"
doc_type: resourcePageType
---

# groupWritebackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether writeback of cloud groups to on-premises Active Directory is enabled and the target group type for the on-premises group.

 By default, all Microsoft Entra security groups aren't writeback enabled. For Microsoft 365 groups, the default settings that are defined by the properties of this resource can be overwritten by the `NewUnifiedgroupWritebackDefault` [directory setting object](directorysetting.md).

Inherits from [writebackConfiguration](../resources/writebackconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether writeback of cloud groups to on-premises Active Directory is enabled. Nullable. Default value is `true` for Microsoft 365 groups and `false` for security groups. Inherited from [writebackConfiguration](../resources/writebackconfiguration.md).|
|onPremisesGroupType|String|Indicates the target on-premises group type the cloud object is written back as. Nullable. The possible values are: `universalDistributionGroup`, `universalSecurityGroup`, `universalMailEnabledSecurityGroup`.<ol><li>If the cloud group is a unified (Microsoft 365) group, this property can be one of the following: `universalDistributionGroup`, `universalSecurityGroup`, `universalMailEnabledSecurityGroup`. </li><li>Microsoft Entra security groups can be written back as `universalSecurityGroup`. </li><li>If **isEnabled** or the `NewUnifiedGroupWritebackDefault` [group setting](directorysetting.md) is `true` but this property isn't explicitly configured: <ul><li>Microsoft 365 groups are written back as `universalDistributionGroup` by default</li></ul><ul><li>Security groups are written back as `universalSecurityGroup` by default</li></ul>|

## Relationships
None.

## JSON representation
Here's a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupWritebackConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.groupWritebackConfiguration",
  "isEnabled": "Boolean",
  "onPremisesGroupType": "String"
}
```
