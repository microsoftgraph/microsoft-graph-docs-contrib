---
title: "azureAdJoinPolicy resource type"
description: "Represents the policy scope of an Azure Active Directory tenant that controls device registration using Azure AD Join."
author: "myra-ramdenbourg"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---
# azureAdJoinPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the policy scope of the Azure Active Directory (Azure AD) tenant that controls the ability for users and groups to register device identities to your organization using Azure AD Join.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allowedGroups|String collection|The identifiers of the groups that are in the scope of the policy. Required when the **appliesTo** property is set to `selected`. |
|allowedUsers|String collection|The identifiers of users that are in the scope of the policy. Required when the **appliesTo** property is set to `selected`.|
|appliesTo|policyScope|Specifies whether to block or allow fine-grained control of the policy scope. The possible values are: `0` (meaning `none`), `1` (meaning `all`), `2` (meaning `selected`), `3` (meaning `unknownFutureValue`). <br/><br/>The default value is `1`. When set to `2`, at least one user or group identifier must be specified in either **allowedUsers** or **allowedGroups**.  Setting this property to `0` or `1` removes all identifiers in both **allowedUsers** and **allowedGroups**.|
|isAdminConfigurable|Boolean|Specifies whether this policy scope is configurable by the admin. The default value is `false`. When an admin has enabled Intune (MEM) to manage devices, this property is set to `false` and **appliesTo** defaults to `1` (meaning `all`).|

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
