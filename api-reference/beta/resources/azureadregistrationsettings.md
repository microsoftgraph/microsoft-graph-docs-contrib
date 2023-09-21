---
title: "azureADRegistrationSettings resource type"
description: "Represents the policy scope of an Entra ID (Azure AD) tenant that controls device registration using Entra registered."
author: "SanDeo-MSFT"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# azureADRegistrationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Entra ID (Azure AD) tenant that controls the ability for users and groups to register device identities to your organization using Entra registered.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|allowedToRegister|[deviceRegistrationMembership](../resources/deviceregistrationmembership.md)|Determines if Entra registered is allowed. The possible values are `noDeviceRegistrationMembership` meaning no users/groups are allowed to do Entra registered, `allDeviceRegistrationMembership` meaning all users/groups are allowed to do Entra registered and `enumeratedDeviceRegistrationMembership` meaning specified users/groups are allowed to do Entra registered.  |
|isAdminConfigurable|Boolean|Determines if Entra ID administrators can modify this policy.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADJoinSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADJoinSettings",
  "isAdminConfigurable": "Boolean",
  "allowedToRegister": {
    "@odata.type": "microsoft.graph.deviceRegistrationMembership"
  }
}
```
0 comments on commit 80b959b
