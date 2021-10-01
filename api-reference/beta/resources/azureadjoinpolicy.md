---
title: "azureAdJoinPolicy resource type"
description: "Represents the policy scope of an Active Directory tenant that controls device registration using Azure AD Join."
author: "spunukol"
localization_priority: Normal
ms.prod: "directory-management"
doc_type: resourcePageType
---
# azureAdJoinPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Azure Active Directory tenant that controls the ability for users and groups to register device identities to your organization using Azure AD Join.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedGroups|String collection|The identifiers of the groups that are in the scope of the policy. Required when the **appliesTo** property is set to `selected`. |
|allowedUsers|String collection|The identifiers of users that are in the scope of the policy. Required when the **appliesTo** property is set to `selected`.|
|appliesTo|policyScope|Specifies whether to block or allow fine-grained control of the policy scope. Possible values are: `none`, `all`, `selected`, `unknownFutureValue`. The default value is `0`. When set to `2`, at least one user or group identifier must be specified in either **allowedUsers** or **allowedGroups**.  Setting this property to `0` or `1` removes all identifiers in both **allowedUsers** and **allowedGroups**.|
|isAdminConfigurable|Boolean|Specifies whether this policy scope is configurable by the admin. The default value is `false`.|

* The default value is **`all`** at time of policy creation.
* You must have at least one **`allowedGroup`** or **`allowedUser`** when using **`selected`**.
* The value of **`all`** or **`none`** will remove all values in **`allowedGroups`** and **`allowedUsers`**.

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureAdJoinPolicy"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAdJoinPolicy",
  "appliesTo": "String",
  "isAdminConfigurable": "Boolean",
  "allowedUsers": [
    "String"
  ],
  "allowedGroups": [
    "String"
  ]
}
```
