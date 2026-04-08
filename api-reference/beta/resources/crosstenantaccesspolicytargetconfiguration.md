---
title: "crossTenantAccessPolicyTargetConfiguration resource type"
description: "Defines the target of a cross-tenant access policy setting configuration."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# crossTenantAccessPolicyTargetConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the target of a cross-tenant access policy setting configuration.

This resource is used by the following properties:

- **users** property of [crossTenantAccessPolicyM365CollaborationInboundSetting](../resources/crosstenantaccesspolicym365collaborationinboundsetting.md)
- **usersAndGroups** property of [crossTenantAccessPolicyM365CollaborationOutboundSetting](../resources/crosstenantaccesspolicym365collaborationoutboundsetting.md)
- **applications** property of [crossTenantAccessPolicyAppServiceConnectSetting](../resources/crosstenantaccesspolicyappserviceconnectsetting.md)

## Properties

|Property|Type|Description|
|:---|:---|:---|
| accessType| crossTenantAccessPolicyTargetConfigurationAccessType | Defines whether access is allowed or blocked. The possible values are: `allowed`, `blocked`, `unknownFutureValue`. |
|targets|[crossTenantAccessPolicyTarget](../resources/crosstenantaccesspolicytarget.md) collection|Specifies whether to target users, groups, or applications with this rule.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantAccessPolicyTargetConfiguration"
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.crossTenantAccessPolicyTargetConfiguration",
  "accessType": "String",
  "targets": [
    {
      "@odata.type": "microsoft.graph.crossTenantAccessPolicyTarget"
    }
  ]
}
```
