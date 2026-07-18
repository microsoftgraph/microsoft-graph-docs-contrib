---
title: "Delete customDataProvidedResourceUploadSession"
description: "Delete a customDataProvidedResourceUploadSession object."
author: "prathamrathi"
ms.date: 07/15/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# Delete customDataProvidedResourceUploadSession

Namespace: microsoft.graph

Delete a [customDataProvidedResourceUploadSession](../resources/customdataprovidedresourceuploadsession.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accesspackageresource-delete-uploadsessions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageresource-delete-uploadsessions-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-owner-write](../includes/rbac-for-apis/rbac-entitlement-management-catalog-owner-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_customdataprovidedresourceuploadsession"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}/resources/{accessPackageResourceId}/uploadSessions/{customDataProvidedResourceUploadSessionId}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
