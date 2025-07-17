---
title: "Create accessPackageResourceRoleScope"
description: "Create a new accessPackageResourceRoleScope for adding a resource role to an access package."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 11/06/2024
---

# Create accessPackageResourceRoleScope

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) for adding a resource role to an access package. The access package resource, for a group, an app, or a SharePoint Online site, must already exist in the access package catalog, and the **originId** for the resource role retrieved from the [list of the resource roles](accesspackagecatalog-list-accesspackageresourceroles.md). Once you add the resource role scope to the access package, the user will receive this resource role through any current and future access package assignments.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackage_post_accesspackageresourcerolescopes" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackage-post-accesspackageresourcerolescopes-permissions.md)]

[!INCLUDE [rbac-entitlement-access-package-manager-write](../includes/rbac-for-apis/rbac-entitlement-management-access-package-manager-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.  |

## Request body

In the request body, supply a JSON representation of an [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object.  Include in the object the relationships to an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object, which can be obtained from a request to [list access package resource roles of a resource in a catalog](accesspackagecatalog-list-accesspackageresourceroles.md), and an [accessPackageResourceScope](../resources/accesspackageresourcescope.md) object, which can be obtained from a request to [list access package resources](accesspackagecatalog-list-accesspackageresources.md) with `$expand=accessPackageResourceScopes`.

## Response

If successful, this method returns a 200-series response code and a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object in the response body.

## Examples

### Example 1: Add group membership as a resource role to an access package

#### Request

The following example shows a request. Previous to this request, the access package resource `1d08498d-72a1-403f-8511-6b1f875746a0` for the group `b31fe1f1-3651-488f-bd9a-1711887fd4ca` must already have been added to the access package catalog containing this access package.  The resource could have been added to the catalog by [creating an access package resource request](entitlementmanagement-post-accesspackageresourcerequests.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes
Content-type: application/json

{
  "accessPackageResourceRole":{
    "originId":"Member_b31fe1f1-3651-488f-bd9a-1711887fd4ca",
    "displayName":"Member",
    "originSystem":"AadGroup",
    "accessPackageResource":{"id":"1d08498d-72a1-403f-8511-6b1f875746a0","resourceType":"O365 Group","originId":"b31fe1f1-3651-488f-bd9a-1711887fd4ca","originSystem":"AadGroup"}
  },
 "accessPackageResourceScope":{
   "originId":"b31fe1f1-3651-488f-bd9a-1711887fd4ca","originSystem":"AadGroup"
 }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageresourcerolescope-from-accesspackage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRoleScope"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageResourceRoleScopes/$entity",
    "id": "ad5c7636-e481-4528-991f-198e3b38dd56_ffd4004a-f4a9-4b22-b027-759e55c0d1db",
    "createdBy": "admin@example.com",
    "createdDateTime": "2019-12-11T01:35:26.4754081Z",
    "modifiedBy": "admin@example.com",
    "modifiedDateTime": "2019-12-11T01:35:26.4754081Z"
}
```

### Example 2: Add a SharePoint Online site role to an access package

#### Request

The following example shows a request for a non-root scope resource. The access package resource for the site must already have been added to the access package catalog containing this access package.

The request contains an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object, which can be obtained from an earlier request to [list access package resource roles of a resource in a catalog](accesspackagecatalog-list-accesspackageresourceroles.md). Each type of resource defines the format of the originId field in a resource role. For a SharePoint Online site, the originId is the sequence number of the role in the site.

If the [accessPackageResourceScope](../resources/accesspackageresourcescope.md) object obtained from an earlier request to [list access package resources](accesspackagecatalog-list-accesspackageresources.md) has the resource as a root scope (**isRootScope** set to `true`), include the **isRootScope** property in the **accessPackageResourceScope** object of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage2"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes
Content-type: application/json

{
    "accessPackageResourceRole": {
        "originId": "4",
        "originSystem": "SharePointOnline",
        "accessPackageResource": {
            "id": "53c71803-a0a8-4777-aecc-075de8ee3991"
        }
    },
    "accessPackageResourceScope": {
        "id": "5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
        "originId": "https://microsoft.sharepoint.com/portals/Community",
        "originSystem": "SharePointOnline"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackage2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageresourcerolescope-from-accesspackage2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackage2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackage2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackage2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackage2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackage2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackage2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRoleScope"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
   "id": "6646a29e-da03-49f6-bcd9-dec124492de3_5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create accessPackageResourceRoleScope",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


### Example 3: Add a Microsoft Entra role as a resource in an access package

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_role_accesspackage"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/{id}/accessPackageResourceRoleScopes
Content-type: application/json

{
    "role": {
        "originId": "Eligible",
        "displayName": "Eligible Member",
        "originSystem": "DirectoryRole",
        "resource": {
            "id": "ea036095-57a6-4c90-a640-013edf151eb1"
        }
    },
    "scope": {
        "description": "Root Scope",
        "displayName": "Root",
        "isRootScope": true,
        "originSystem": "DirectoryRole",
        "originId": "c4e39bd9-1100-46d3-8c65-fb160da0071f"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-role-accesspackage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageresourcerolescope-role-accesspackage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-role-accesspackage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-role-accesspackage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-role-accesspackage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-role-accesspackage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-role-accesspackage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-role-accesspackage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRoleScope"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
   "id": "ea036095-57a6-4c90-a640-013edf151eb1_c4e39bd9-1100-46d3-8c65-fb160da0071f",
   "createdDateTime": "2023-06-28T01:19:48.4216782Z"
}
```


### Example 4: Add a PIM-managed group as a resource role to an access package

#### Request

The following example shows a request to add a PIM-managed group as a resource role to an access package. The group's members are eligible to the group. 

Before this request, you must have already added the access package resource `b86a1828-3171-409e-8343-32a224f324a0` for the PIM-managed group `bcfae74a-91a6-46e9-99bf-89d6487cc3f3` to the access package catalog containing this access package. The resource could have been added to the catalog by [creating an access package resource request](entitlementmanagement-post-accesspackageresourcerequests.md).


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage_pim_group"
}-->

```http
POST https://graph.microsoft.com/beta/identityGovernance/entitlementManagement/accessPackages/b86a1828-3171-409e-8343-32a224f324a0/accessPackageResourceRoleScopes
Content-type: application/json

{
  "accessPackageResourceRole":{
    "originId":"EligibleMember_89590e41-f49d-4792-b531-6ed6fe6cfe18",
    "displayName":"Eligible Member",
    "originSystem":"AadGroup",
    "accessPackageResource":{"id":"b86a1828-3171-409e-8343-32a224f324a0","resourceType":"O365 Group","originId":"bcfae74a-91a6-46e9-99bf-89d6487cc3f3","originSystem":"AadGroup"}
  },
 "accessPackageResourceScope":{
   "originId":"bcfae74a-91a6-46e9-99bf-89d6487cc3f3","originSystem":"AadGroup"
 }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackage-pim-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageresourcerolescope-from-accesspackage-pim-group-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackage-pim-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackage-pim-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackage-pim-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackage-pim-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackage-pim-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackage-pim-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessPackageResourceRoleScope"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#accessPackageResourceRoleScopes/$entity",
    "id": "ad5c7636-e481-4528-991f-198e3b38dd56_ffd4004a-f4a9-4b22-b027-759e55c0d1db",
    "createdBy": "admin@example.com",
    "createdDateTime": "2019-12-11T01:35:26.4754081Z",
    "modifiedBy": "admin@example.com",
    "modifiedDateTime": "2019-12-11T01:35:26.4754081Z"
}
```
