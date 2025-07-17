---
title: "crossTenantAccessPolicyTenantRestrictions resource type"
description: "Defines how to configure Microsoft Entra tenant restrictions settings that give you control over the external organizations that your users can access from your network or devices when they use external identities."
author: "vimrang"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/13/2024
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
|devices|[devicesFilter](../resources/devicesfilter.md)|Defines the rule for filtering devices and whether devices satisfying the rule should be allowed or blocked. This property isn't supported on the server side yet.|
|usersAndGroups|[crossTenantAccessPolicyTargetConfiguration](../resources/crosstenantaccesspolicytargetconfiguration.md)|The list of users and groups targeted with your cross-tenant access policy. Inherited from [crossTenantAccessPolicyB2BSetting](../resources/crosstenantaccesspolicyb2bsetting.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyTenantRestrictions"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyTenantRestrictions",
  "applications": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"},
  "devices": {"@odata.type": "microsoft.graph.devicesFilter"},
  "usersAndGroups": {"@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"}
}
```

## Related content

+ [Set up tenant restrictions V2 (Preview)](/azure/active-directory/external-identities/tenant-restrictions-v2)
