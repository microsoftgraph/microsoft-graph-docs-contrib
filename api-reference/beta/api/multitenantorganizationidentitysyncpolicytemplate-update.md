---
title: "Update multiTenantOrganizationIdentitySyncPolicyTemplate"
description: "Update the user synchronization policy settings of the multi-tenant organization template."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update multiTenantOrganizationIdentitySyncPolicyTemplate
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the user synchronization policy settings of the multi-tenant organization template.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.CrossTenantAccess|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.CrossTenantAccess|

The signed-in user must also be assigned the following minimum [directory role](/azure/active-directory/roles/permissions-reference):

* Security Administrator

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/crossTenantAccessPolicy/templates/multiTenantOrganizationIdentitySynchronization
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
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Determines whether users can be synchronized from the partner tenant. `false` causes any current user synchronization from the source tenant to the target tenant to stop. This property has no impact on existing users who have already been synchronized.|
|templateApplicationLevel|templateApplicationLevel|**TODO: Add Description**. The possible values are: `none`, `newPartners`, `existingPartners`, `unknownFutureValue`. Required.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

Update the user synchronization policy settings of the template. For more information, see [crossTenantIdentitySyncPolicyPartner resource type](../resources/crosstenantidentitysyncpolicypartner.md).

### Request

<!-- {
  "blockType": "request",
  "name": "update_multitenantorganizationidentitysyncpolicytemplate"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/templates/multiTenantOrganizationIdentitySynchronization
Content-Type: application/json

{
    "userSyncInbound": {
        "isSyncAllowed": true
    },
  "templateApplicationLevel": "String"
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

