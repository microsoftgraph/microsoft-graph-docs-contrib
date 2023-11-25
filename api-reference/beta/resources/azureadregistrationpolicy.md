---
title: "azureADRegistrationPolicy resource type"
description: "Represents the policy scope of a Microsoft Entra tenant that controls device registration using Microsoft Entra registered."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.prod: "directory-management"
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
|allowedGroups (deprecated)|String collection| The identifiers of the groups that are in the scope of the policy. Either this property or **allowedUsers** is required when the **appliesTo** property is set to `selected`. |
|allowedUsers (deprecated)|String collection| The identifiers of users that are in the scope of the policy. Either this property or **allowedGroups** is required when the **appliesTo** property is set to `selected`. |
|appliesTo (deprecated)|policyScope|Specifies whether to block or allow fine-grained control of the policy scope. The possible values are: `0` (meaning `none`), `1` (meaning `all`), `2` (meaning `selected`), `3` (meaning `unknownFutureValue`). <br/><br/>The default value is `1`. When set to `2`, at least one user or group identifier must be specified in either **allowedUsers** or **allowedGroups**.  Setting this property to `0` or `1` removes all identifiers in both **allowedUsers** and **allowedGroups**.|

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
