---
title: "crossTenantIdentitySyncPolicyPartner resource type"
description: "Defines the cross-tenant policy for synchronization of users from a partner tenant."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# crossTenantIdentitySyncPolicyPartner resource type

Namespace: microsoft.graph

Defines the cross-tenant policy for synchronization of users from a partner tenant. Use this user synchronization policy to streamline collaboration between users in a multi-tenant organization by automating the creation, update, and deletion of users from one tenant to another.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create crossTenantIdentitySyncPolicyPartner](../api/crosstenantaccesspolicyconfigurationpartner-put-identitysynchronization.md)|None|Create a cross-tenant user synchronization policy for a partner-specific configuration.|
|[Get crossTenantIdentitySyncPolicyPartner](../api/crosstenantidentitysyncpolicypartner-get.md)|[crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)|Get the user synchronization policy of a partner-specific configuration.|
|[Update crossTenantIdentitySyncPolicyPartner](../api/crosstenantidentitysyncpolicypartner-update.md)|None|Update the user synchronization policy of a partner-specific configuration.|
|[Delete crossTenantIdentitySyncPolicyPartner](../api/crosstenantidentitysyncpolicypartner-delete.md)|None|Delete the user synchronization policy for a partner-specific configuration.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the cross-tenant user synchronization policy. Use the name of the partner Azure AD (Azure Active Directory) tenant to easily identify the policy. Optional.|
|tenantId|String|Tenant identifier for the partner Azure AD organization. Read-only.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Defines whether users can be synchronized from the partner tenant. Key. |

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "tenantId",
  "@odata.type": "microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantIdentitySyncPolicyPartner",
  "displayName": "String",
  "tenantId": "String (identifier)",
  "userSyncInbound": {
    "@odata.type": "microsoft.graph.crossTenantUserSyncInbound"
  }
}
```
