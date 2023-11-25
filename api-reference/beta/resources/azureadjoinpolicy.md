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
|allowedToJoin|[deviceRegistrationMembership](../resources/deviceregistrationmembership.md)|Determines if Microsoft Entra join is allowed. The possible values are `noDeviceRegistrationMembership` meaning no users/groups are allowed to do Microsoft Entra join, `allDeviceRegistrationMembership` meaning all users/groups are allowed to do Microsoft Entra join and `enumeratedDeviceRegistrationMembership` meaning enumerated users/groups are allowed to do Microsoft Entra join.  |
|isAdminConfigurable|Boolean|Determines if Entra ID administrators can modify this policy.|
|allowedGroups (deprecated)|String collection|The identifiers of the groups that are in the scope of the policy. Required when the **appliesTo** property is set to `selected`. |
|allowedUsers (deprecated)|String collection|The identifiers of users that are in the scope of the policy. Required when the **appliesTo** property is set to `selected`.|
|appliesTo (deprecated)|policyScope|Specifies whether to block or allow fine-grained control of the policy scope. The possible values are: `0` (meaning `none`), `1` (meaning `all`), `2` (meaning `selected`), `3` (meaning `unknownFutureValue`). <br/><br/>The default value is `1`. When set to `2`, at least one user or group identifier must be specified in either **allowedUsers** or **allowedGroups**.  Setting this property to `0` or `1` removes all identifiers in both **allowedUsers** and **allowedGroups**.|


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
