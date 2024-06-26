---
title: "azureADRegistrationPolicy resource type"
description: "Represents the policy scope of a Microsoft Entra tenant that controls device registration using Microsoft Entra registered."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
---
# azureADRegistrationPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Microsoft Entra tenant that controls the ability for users and groups to register device identities to your organization using **Microsoft Entra registered**. For more information, see [What is a device identity?](/azure/active-directory/devices/overview).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedToRegister|[deviceRegistrationMembership](../resources/deviceregistrationmembership.md)|Determines if Microsoft Entra registered is allowed. |
|isAdminConfigurable|Boolean|Determines if administrators can modify this policy.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureADRegistrationPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureADRegistrationPolicy",
  "isAdminConfigurable": "Boolean",
  "allowedToRegister": {
    "@odata.type": "microsoft.graph.deviceRegistrationMembership"
  }
}
```
