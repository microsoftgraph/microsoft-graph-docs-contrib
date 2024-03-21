---
title: "azureADJoinPolicy resource type"
description: "Represents the policy scope of a Microsoft Entra tenant that controls device registration using Microsoft Entra join."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---
# azureADJoinPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Microsoft Entra tenant that controls the ability for users and groups to register device identities to your organization using Microsoft Entra join.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedToJoin|[deviceRegistrationMembership](../resources/deviceregistrationmembership.md)|Determines if Microsoft Entra join is allowed.|
|isAdminConfigurable|Boolean|Determines if administrators can modify this policy.|
|localAdmins|[localAdminSettings](../resources/localAdminSettings.md)|Determines who is to become a local administrator on joined devices.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADJoinPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADJoinPolicy",
  "isAdminConfigurable": "Boolean",
  "allowedToJoin": {
    "@odata.type": "microsoft.graph.deviceRegistrationMembership"
  },
  "localAdmins": {
        "@odata.type": "microsoft.graph.localAdminSettings"
  }
}
```
