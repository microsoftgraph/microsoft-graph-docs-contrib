---
title: "crossTenantAccessPolicyTarget resource type"
description: "Defines how to target your cross tenant access policy settings. Settings can be targeted to specific users, groups, or applications."
author: "jkdouglas"
ms.localizationpriority: Medium
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# crossTenantAccessPolicyTarget resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how to target your cross tenant access policy settings. Settings can be targeted to specific users, groups, or applications. You can also use keywords to target specific groups or applications.

## Application Keyword list

When setting application targets you can use the `Office365` keyword. The [Office365](https://docs.microsoft.com/azure/active-directory/conditional-access/concept-conditional-access-cloud-apps#office-365) keyword includes the applications mentioned at this link.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|target|String|The identifier (GUID) of the user, group, or application. Also supports key words: `AllUsers` and `AllApplications`.|
|targetType|crossTenantAccessPolicyTargetType|The type of resource that you want to target. Possible values are: `user`, `group`, `application`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
