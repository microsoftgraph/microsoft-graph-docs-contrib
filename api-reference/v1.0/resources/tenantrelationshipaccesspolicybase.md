---
title: "tenantRelationshipAccessPolicyBase resource type"
description: "The base type that defines a tenant relationship."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/31/2024
---

# tenantRelationshipAccessPolicyBase resource type

Namespace: microsoft.graph

The base type that defines a tenant relationship. This is an abstract type that's inherited by cross-tenant policy objects including [crossTenantAccessPolicy](crosstenantaccesspolicy.md).

Inherits from [policyBase](policybase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
| definition (deprecated) | String collection | The raw JSON definition of the cross-tenant access policy. **Deprecated. Do not use.** |
| description | String | Description for this policy. Required. Inherited from [policyBase](../resources/policybase.md). |
| displayName | String collection | Display name for this policy. Required. Inherited from [policyBase](../resources/policybase.md). |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tenantRelationshipAccessPolicyBase",
  "baseType": "microsoft.graph.policyBase",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.tenantRelationshipAccessPolicyBase",
  "definition": [
    "String"
  ],
  "description": "String",
  "displayName": "String"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "tenantRelationshipAccessPolicyBase resource type",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
