---
title: "crossTenantAccessPolicyB2BSetting resource type"
description: "Defines the inbound and outbound rulesets for Azure Active Directory (Azure AD) B2B collaboration."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantAccessPolicyB2BSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the inbound and outbound rulesets for Azure Active Directory (Azure AD) B2B collaboration.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applications|[crossTenantAccessPolicyTargetConfiguration](../resources/crosstenantaccesspolicytargetconfiguration.md)|The list of applications targeted with your cross-tenant access policy.|
|usersAndGroups|[crossTenantAccessPolicyTargetConfiguration](../resources/crosstenantaccesspolicytargetconfiguration.md)|The list of users and groups targeted with your cross-tenant access policy.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyB2BSetting"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyB2BSetting",
  "usersAndGroups": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"
  },
  "applications": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"
  }
}
```
