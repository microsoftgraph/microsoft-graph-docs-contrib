---
title: "Update multiTenantOrganization"
description: "Update the properties of a multitenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update multiTenantOrganization
Namespace: microsoft.graph

Update the properties of a multitenant organization.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganization_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganization-update-permissions.md)]

[!INCLUDE [rbac-multitenantorganization-apis-write](../includes/rbac-for-apis/rbac-multitenantorganization-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/multiTenantOrganization
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
|displayName|String|Display name of the multitenant organization. Optional.|
|description|String|Description of the multitenant organization. Optional.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

The following example updates the description and display name for a multitenant organization.

### Request

<!-- {
  "blockType": "request",
  "name": "update_multitenantorganization"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/tenantRelationships/multiTenantOrganization
Content-Type: application/json

{
  "displayName": "Contoso organization",
  "description": "Multitenant organization between Contoso, Fabrikam, and Woodgrove Bank"
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

