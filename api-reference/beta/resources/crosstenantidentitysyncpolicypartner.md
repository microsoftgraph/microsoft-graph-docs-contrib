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
|[List crossTenantIdentitySyncPolicyPartners](../api/crosstenantaccesspolicyconfigurationpartner-list-identitysynchronization.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md) collection|List the user synchronization policy for all partner configurations.|
|[Create crossTenantIdentitySyncPolicyPartner](../api/crosstenantaccesspolicyconfigurationpartner-post-identitysynchronization.md)|None|Create a cross-tenant user synchronization policy for a partner-specific configuration.|
|[Get crossTenantIdentitySyncPolicyPartner](../api/crosstenantidentitysyncpolicypartner-get.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Read the user synchronization policy of a partner-specific configuration.|
|[Update crossTenantIdentitySyncPolicyPartner](../api/crosstenantidentitysyncpolicypartner-update.md)|None|Update the user synchronization policy of a partner-specific configuration.|
|[Delete crossTenantIdentitySyncPolicyPartner](../api/crosstenantaccesspolicyconfigurationpartner-delete-identitysynchronization.md)|None|Delete the user synchronization policy for a partner-specific configuration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the cross-tenant user synchronization policy. Generally, this should be the tenant name of the partner Azure AD organization. Optional.|
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

