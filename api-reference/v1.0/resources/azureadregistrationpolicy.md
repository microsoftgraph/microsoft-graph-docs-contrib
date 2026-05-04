---
title: "azureADRegistrationPolicy resource type"
description: "Represents the policy scope of a Microsoft Entra tenant that controls device registration using Microsoft Entra registered."
author: "michaelrm97"
ms.localizationpriority: medium
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 03/20/2026
---

# azureADRegistrationPolicy resource type

Namespace: microsoft.graph

Represents the policy scope of the Microsoft Entra tenant that controls the ability for users and groups to register device identities to your organization using **Microsoft Entra registered**. Configured in the **azureADRegistration** property of [device registration policy](../resources/deviceregistrationpolicy.md). For more information, see [What is a device identity?](/azure/active-directory/devices/overview).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedToRegister|[deviceRegistrationMembership](../resources/deviceregistrationmembership.md)|Determines if Microsoft Entra registered is allowed.|
|isAdminConfigurable|Boolean|Determines if administrators can modify this policy.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
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
