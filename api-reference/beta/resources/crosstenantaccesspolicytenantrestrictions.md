---
title: "crossTenantAccessPolicyTenantRestrictions resource type"
description: "Defines how to configure Azure AD tenant restrictions settings that give you control over the external organizations that your users can access from your network or devices when they use external identities."
author: "vimrang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantAccessPolicyTenantRestrictions resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how to target your tenant restrictions settings. Tenant restrictions give you control over the external organizations that your users can access from your network or devices when they use external identities. Settings can be targeted to specific users, groups, or applications.

Inherits from [crossTenantAccessPolicyB2BSettings](../resources/crosstenantaccesspolicyb2bsetting.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|applications|[crossTenantAccessPolicyTargetConfiguration](../resources/crosstenantaccesspolicytargetconfiguration.md)|The list of applications targeted with your cross-tenant access policy. Inherited from [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md).|
|devices|[devicesFilter](../resources/devicesfilter.md)|Defines the rule for filtering devices and whether devices satisfying the rule should be allowed or blocked. Not implemented.|
|usersAndGroups|[crossTenantAccessPolicyTargetConfiguration](../resources/crosstenantaccesspolicytargetconfiguration.md)|The list of users and groups targeted with your cross-tenant access policy. Inherited from [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyTenantRestrictions",
  "usersAndGroups": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"
  },
  "applications": {
    "@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"
  },
  "devices": {
    "@odata.type": "microsoft.graph.devicesFilter"
  }
}
```

## See also

+ [Set up tenant restrictions V2 (Preview)](/azure/active-directory/external-identities/tenant-restrictions-v2)
