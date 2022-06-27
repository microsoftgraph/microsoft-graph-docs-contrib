---
title: "groupWritebackConfiguration resource type"
description: "Indicates whether writeback of cloud groups to on-premise Active Directory is enabled and the target group type for the on-premise group."
author: "psaffaie"
ms.localizationpriority: medium
ms.prod: "groups"
doc_type: resourcePageType
---

# groupWritebackConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates whether writeback of cloud groups to on-premise Active Directory is enabled and the target group type for the on-premise group.

 By default, all Azure AD security groups are not writeback enabled. For M365 groups, the default settings that are defined by the properties of this resource can be overwritten by the `NewUnifiedgroupWritebackDefault` [directory setting object](directorysetting.md).

Inherits from [writebackConfiguration](../resources/writebackconfiguration.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isEnabled|Boolean|Indicates whether writeback of cloud groups to on-premise Active Directory is enabled. Default value is `true` for M365 groups and `false` for security groups. Inherited from [writebackConfiguration](../resources/writebackconfiguration.md).|
|onPremisesGroupType|String|Indicates the target on-premise group type the cloud object will be written back as. Default value is { "isEnabled": true, "onPremisesGroupType" : "UniversalDistritionGroup" } for M365 gorup if NewUnifiedGroupWritebackDefault group setting set to true, is { "isEnabled": false, "onPremisesGroupType" : "UniversalDistritionGroup" } if NewUnifiedGroupWritebackDefault group setting set to false. Default value is { "isEnabled": false, "onPremisesGroupType" : "UniversalSecurityGroup" } for security group.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

