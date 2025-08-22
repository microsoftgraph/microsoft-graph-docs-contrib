---
title: "policyDeletableRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# policyDeletableRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-deleteditems.md)|[policyDeletableRoot](../resources/policydeletableroot.md) collection|Get a list of the policyDeletableRoot objects and their properties.|
|[Create](../api/policyroot-post-deleteditems.md)|[policyDeletableRoot](../resources/policydeletableroot.md)|Create a new policyDeletableRoot object.|
|[Get](../api/policydeletableroot-get.md)|[policyDeletableRoot](../resources/policydeletableroot.md)|Read the properties and relationships of [policyDeletableRoot](../resources/policydeletableroot.md) object.|
|[Update](../api/policydeletableroot-update.md)|[policyDeletableRoot](../resources/policydeletableroot.md)|Update the properties of a policyDeletableRoot object.|
|[Delete](../api/policyroot-delete-deleteditems.md)|None|Delete a policyDeletableRoot object.|
|[List crossTenantPartners](../api/policydeletableroot-list-crosstenantpartners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|**TODO: Add a useful description.**|
|[Create crossTenantAccessPolicyConfigurationPartner](../api/policydeletableroot-post-crosstenantpartners.md)|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)|Create a new crossTenantAccessPolicyConfigurationPartner object.|
|[List crossTenantSyncPolicyPartners](../api/policydeletableroot-list-crosstenantsyncpolicypartners.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) collection|**TODO: Add a useful description.**|
|[Create crossTenantIdentitySyncPolicyPartner](../api/policydeletableroot-post-crosstenantsyncpolicypartners.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Create a new crossTenantIdentitySyncPolicyPartner object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|crossTenantPartners|[crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md) collection|**TODO: Add Description**|
|crossTenantSyncPolicyPartners|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.policyDeletableRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.policyDeletableRoot",
  "id": "String (identifier)"
}
```

