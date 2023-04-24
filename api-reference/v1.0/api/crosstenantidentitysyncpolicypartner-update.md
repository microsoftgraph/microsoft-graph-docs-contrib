---
title: "Update crossTenantIdentitySyncPolicyPartner"
description: "Update the user synchronization policy of a partner-specific configuration."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update crossTenantIdentitySyncPolicyPartner
Namespace: microsoft.graph

Update the user synchronization policy of a partner-specific configuration.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not applicable|
|Application|Policy.ReadWrite.CrossTenantAccess|

The signed-in user must also be assigned the following minimum [directory role](/azure/active-directory/roles/permissions-reference):

+ Security Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/crossTenantAccessPolicy/partners/{id}/identitySynchronization
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the cross-tenant user synchronization policy. Generally, this should be the tenant name of the partner Azure AD organization. Optional.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Determines whether users can be synchronized from the partner tenant. If set to `false`, any current user synchronization from the source tenant to the target tenant will stop. There is no impact to existing users that have already been synchronized.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples


### Request
The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_crosstenantidentitysyncpolicypartner"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/policies/crossTenantAccessPolicy/partners/90e29127-71ad-49c7-9ce8-db3f41ea06f1/identitySynchronization
Content-Type: application/json

{
  "userSyncInbound": 
  {
    "isSyncAllowed": true
  }
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

