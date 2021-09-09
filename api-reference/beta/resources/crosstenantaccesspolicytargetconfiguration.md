---
title: "crossTenantAccessPolicyTargetConfiguration resource type"
description: "Defines the target configuration of a cross tenant access policy setting."
author: "jkdouglas"
ms.localizationpriority: Medium
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# crossTenantAccessPolicyTargetConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the target configuration of a cross tenant access policy setting.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accessType|crossTenantAccessPolicyTargetConfigurationAccessType|Defines whether access is allowed or blocked. Possible values are: `allowed` or `blocked`.|
|targets|[crossTenantAccessPolicyTarget](../resources/crosstenantaccesspolicytarget.md) collection|Specifies whether to target users, groups, or applications with this rule.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
