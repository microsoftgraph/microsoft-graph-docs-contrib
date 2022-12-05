---
title: "crossTenantIdentitySyncPolicyPartner resource type"
description: "Defines the user synchronization policy for partner configurations within cross-tenant access settings."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantIdentitySyncPolicyPartner resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the user synchronization policy for partner configurations within cross-tenant access settings.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantIdentitySyncPolicyPartners](../api/crosstenantaccesspolicyconfigurationpartner-list-identitysynchronization.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) collection|Get a list of the [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) objects and their properties.|
|[Create crossTenantIdentitySyncPolicyPartner](../api/crosstenantaccesspolicyconfigurationpartner-post-identitysynchronization.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Create a new [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.|
|[Get crossTenantIdentitySyncPolicyPartner](../api/crosstenantidentitysyncpolicypartner-get.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Read the properties and relationships of a [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.|
|[Update crossTenantIdentitySyncPolicyPartner](../api/crosstenantidentitysyncpolicypartner-update.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Update the properties of a [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.|
|[Delete crossTenantIdentitySyncPolicyPartner](../api/crosstenantaccesspolicyconfigurationpartner-delete-identitysynchronization.md)|None|Delete a [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the cross-tenant user synchronization policy. Optional.|
|tenantId|String|Tenant identifier for the partner Azure AD organization. Read-only.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Determines the partner-specific configuration for inbound user synchronization.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "tenantId": "String",
  "displayName": "String",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```

