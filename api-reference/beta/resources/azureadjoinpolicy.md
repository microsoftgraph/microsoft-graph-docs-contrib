---
title: "azureADJoinPolicy resource type"
description: "Represents the policy scope of an Azure Active Directory tenant that controls device registration using Azure AD join."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.prod: "directory-management"
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
|isAdminConfigurable|Boolean|Determines if Entra ID administrators can modify this policy.|

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
  }
}
```
