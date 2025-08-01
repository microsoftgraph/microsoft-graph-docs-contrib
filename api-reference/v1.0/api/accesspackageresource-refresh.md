---
title: "accessPackageResource: refresh"
description: "Refresh an accessPackageResource object from an origin system."
author: "vikama-microsoft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 03/24/2025
---

# accessPackageResource: refresh
Namespace: microsoft.graph


In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), refresh the [accessPackageResource](../resources/accesspackageresource.md) object to fetch the latest details for **displayName**, **description**, and **resourceType** from the origin system. For the `AadApplication` originSystem, this operation also updates the **displayName** and **description** for the [accessPackageResourceRole](../resources/accesspackageresourcerole.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackageresource_refresh" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageresource-refresh-permissions.md)]

[!INCLUDE [rbac-entitlement-access-package-manager-write](../includes/rbac-for-apis/rbac-entitlement-management-access-package-manager-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/entitlementManagement/accessPackageCatalogs/{accessPackageCatalogId}/accessPackageResources/{accessPackageResourceId}/refresh
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and no object in the response body.


## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "accesspackageresourcethis.refresh"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackageCatalogs/16b6a9de-f519-4bd2-86cb-793808f70230/accessPackageResources/b078b6f9-15c1-423b-864f-994ccf8d6fbf/refresh
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```
