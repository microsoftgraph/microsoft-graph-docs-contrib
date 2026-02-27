---
title: "crossTenantAccessPolicyTarget resource type"
description: "Defines how to target your cross-tenant access policy settings. Settings can be targeted to specific users, groups, or applications."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# crossTenantAccessPolicyTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how to target your cross-tenant access policy settings. Settings can be targeted to specific users, groups, or applications. You can also use keywords to target specific groups or applications.

## Properties

|Property|Type|Description|
|:---|:---|:---|
| target | String | Defines the target for cross-tenant access policy settings and can have one of the following values: <ul><li> The unique identifier of the user, group, or application </li><li> `AllUsers` </li><li> `AllApplications` - Refers to any [Microsoft cloud application](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#microsoft-cloud-applications). </li><li> `Office365` - Includes the applications mentioned as part of the [Office 365](/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#office-365) suite.</li></ul> |
| targetType | crossTenantAccessPolicyTargetType | The type of resource that you want to target. The possible values are: `user`, `group`, `application`, `unknownFutureValue`. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyTarget"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyTarget",
  "target": "String",
  "targetType": "microsoft.graph.crossTenantAccessPolicyTargetType"
}
```
