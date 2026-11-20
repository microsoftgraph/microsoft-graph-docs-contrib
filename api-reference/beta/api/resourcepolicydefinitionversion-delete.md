---
title: "Delete resourcePolicyDefinitionVersion"
description: "Delete a previous resourcePolicyDefinitionVersion of a customer-authored policy definition."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Delete resourcePolicyDefinitionVersion

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a previous [resourcePolicyDefinitionVersion](../resources/resourcepolicydefinitionversion.md) of a customer-authored policy definition.

This operation permanently deletes the version; the deleted version can't be restored. A version referenced by an active (non-deleted) assignment can't be deleted.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


<!-- {"blockType": "permissions", "name": "resourcepolicydefinitionversion_delete_permissions"} -->
[!INCLUDE [permissions-table](../includes/permissions/resourcepolicydefinitionversion-delete-permissions.md)]

[!INCLUDE [rbac-resource-policy](../includes/rbac-for-apis/rbac-resource-policy-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /admin/resourcePolicy/definitions/{resourcePolicyDefinition-uniqueName}/previousVersions/{resourcePolicyDefinitionVersion-version}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body.

## Response

If successful, this method returns `204 No Content` with no response body.

If an active assignment references the version, this method returns `400 Bad Request`.

## Examples

### Request

<!-- {"blockType": "request", "name": "resourcepolicydefinitionversion_delete"} -->
```http
DELETE https://graph.microsoft.com/beta/admin/resourcePolicy/definitions/require_application_name/previousVersions/1.0.0
```

### Response

<!-- {"blockType": "response", "truncated": false} -->
```http
HTTP/1.1 204 No Content
```
