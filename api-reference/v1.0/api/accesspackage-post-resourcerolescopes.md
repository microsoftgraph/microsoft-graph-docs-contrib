---
title: "Create resourceRoleScope"
description: "Create a new accessPackageResourceRoleScope for adding a resource role to an access package."
ms.localizationpriority: medium
author: "AlexFilipin"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
ms.date: 03/14/2024
---

# Create resourceRoleScope

Namespace: microsoft.graph

Create a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) for adding a resource role to an access package. The access package resource, for a group, an app, or a SharePoint Online site, must already exist in the access package catalog, and the **originId** for the resource role retrieved from the [list of the resource roles](accesspackagecatalog-list-resourceroles.md). Once you add the resource role scope to the access package, the user will receive this resource role through any current and future access package assignments.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackage_post_resourcerolescopes" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackage-post-resourcerolescopes-permissions.md)]

[!INCLUDE [rbac-entitlement-access-package-manager-write](../includes/rbac-for-apis/rbac-entitlement-management-access-package-manager-apis-write.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identityGovernance/entitlementManagement/accessPackages/{id}/resourceRoleScopes
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.  |

## Request body

In the request body, supply a JSON representation of an [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object. Include in the object the relationships to an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object and an [accessPackageResourceScope](../resources/accesspackageresourcescope.md) object, which can be obtained from a request to [list access package resources a catalog](accesspackagecatalog-list-resourceroles.md), with `$expand=roles,scopes`.

## Response

If successful, this method returns a 200-series response code and a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object in the response body.

## Examples

### Example 1: Add a SharePoint Online site role to an access package

#### Request

The following example shows a request adding a SharePoint Online site role to an access package's list of resource roles. The access package resource for the site must already have been added to the access package catalog containing this access package.

The request contains an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object. Each type of resource defines the format of the originId field in a resource role. For a SharePoint Online site, the originId will be the sequence number of the role in the site. The resource role can be obtained from a request to [retrieve the roles of a resource for a SharePoint Online site collection](accesspackagecatalog-list-resourceroles.md#example-2-retrieving-the-roles-of-a-resource-for-a-sharepoint-online-site-collection).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage2"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/{id}/resourceRoleScopes
Content-type: application/json

{
    "role": {
        "displayName": "Contributors",
        "originSystem": "SharePointOnline",
        "originId": "4",
        "resource": {
            "id": "53c71803-a0a8-4777-aecc-075de8ee3991"
        }
    },
    "scope": {
        "displayName": "Root",
        "description": "Root Scope",
        "originId": "https://contoso.sharepoint.com/portals/Community",
        "originSystem": "SharePointOnline",
        "isRootScope": true
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackage2-csharp-snippets.md)]
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
   "id": "6646a29e-da03-49f6-bcd9-dec124492de3_5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
    "createdDateTime": "2023-06-28T01:19:48.4216782Z"
}
```


### Example 2: Add an application role to an access package

#### Request

The following example shows a request that adds an application's role to an access package's list of resource roles. The access package resource for the application must already be added to the access package catalog that contains this access package. You can get the `role`, `resource`, and `scope` with the [list resources](accesspackagecatalog-list-resources.md) method.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackageapp"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/cdd5f06b-752a-4c9f-97a6-82f4eda6c76d/resourceRoleScopes
Content-type: application/json

{
    "role": {
        "id": "cde82ecb-e461-496b-98fb-4f807c7ca640",
        "displayName": "Standard User",
        "description": "Standard User",
        "originSystem": "AadApplication",
        "originId": "a29a7690-b3c4-4ed5-96c6-f640cde06fb8",
        "resource": {
            "id": "5f80c0c7-a180-4521-b585-18200048a0d8",
            "originId": "e81d7f57-0840-45e1-894b-f505c1bdcc1f",
            "originSystem": "AadApplication"
        }
    },
    "scope": {
        "id": "dbeb8772-9907-4e95-a28e-a8d70dbcda69",
        "originId": "e81d7f57-0840-45e1-894b-f505c1bdcc1f",
        "originSystem": "AadApplication",
        "isRootScope": true
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackageapp-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackageapp-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackageapp-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackageapp-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackageapp-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackageapp-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackageapp-python-snippets.md)]
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
   "id": "cde82ecb-e461-496b-98fb-4f807c7ca640_dbeb8772-9907-4e95-a28e-a8d70dbcda69",
   "createdDateTime": "2023-06-28T01:19:48.4216782Z"
}
```

### Example 3: Add group membership to an access package

#### Request

The following example shows a request that adds membership of a group to an access package's list of resource roles. The access package resource for the group must already be added to the access package catalog that contains this access package. You can get the `resource` and `scope` with the [list of the resources of a catalog](accesspackagecatalog-list-resources.md) method. You can get the `role` with the [list of the roles of the resource in the catalog](accesspackagecatalog-list-resourceroles.md) method. If the `role` returned from the list of the roles has a zero ID, then don't include an `id` in the `accessPackageResourceRole`.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackagegroup"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/cdd5f06b-752a-4c9f-97a6-82f4eda6c76d/resourceRoleScopes
Content-type: application/json

{
    "role": {
        "displayName": "Member",
        "originSystem": "AadGroup",
        "originId": "Member_0282e19d-bf41-435d-92a4-99bab93af305",
        "resource": {
            "id": "b16e0e71-17b4-4ebd-a3cd-8a468542e418",
            "displayName": "example group",
            "description": "a group whose members are to be assigned via an access package",
            "originId": "0282e19d-bf41-435d-92a4-99bab93af305",
            "originSystem": "AadGroup"
        }
    },
    "scope": {
        "id": "83b3e3e9-c8b3-481b-ad80-53e29d1eda9c",
        "displayName": "Root",
        "description": "Root Scope",
        "originId": "0282e19d-bf41-435d-92a4-99bab93af305",
        "originSystem": "AadGroup",
        "isRootScope": true
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackagegroup-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackagegroup-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackagegroup-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackagegroup-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackagegroup-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackagegroup-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackagegroup-python-snippets.md)]
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
   "id": "748f8431-c7c6-404d-8564-df67aa8cfc5e_83b3e3e9-c8b3-481b-ad80-53e29d1eda9c",
   "createdDateTime": "2023-06-28T01:19:48.4216782Z"
}
```

### Example 4: Add an Active Subscription scoped to a Resource Group Resource Role to an access package

#### Request

The following example shows a request to add an active Subscription scoped to a Resource Group Resource Role to an access package.

Before this request, you must have already added the access package resource `b09a0288-a83e-4ae6-8a53-bc09aeb966ea` for the Subscription `828b526f-c769-4b19-9797-734b4843b978` to the access package catalog containing this access package. The resource could have been added to the catalog by [creating an access package resource request](entitlementmanagement-post-resourcerequests.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage_subscription"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/5f7f4c7d-b3f5-4988-a17b-3f09b6f5a9ee/resourceRoleScopes
Content-type: application/json

{
    "role": {
        "originId": "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475",
        "displayName": "Access Review Operator Service Role",
        "description": "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.",
        "resource": {
            "id": "b09a0288-a83e-4ae6-8a53-bc09aeb966ea",
            "description": "Dev",
            "displayName": "Dev",
            "resourceType": "Subscription",
            "originId": "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
            "originSystem": "AzureResources"
        },
        "originSystem": "AzureResources",
        "type": "active"
    },
    "scope": {
        "id": "e1e0ec8c-472d-4ec5-a8f9-29e0bc275640",
        "description": "/resourceGroups/rg",
        "displayName": "/resourceGroups/rg",
        "isRootScope": false,
        "originSystem": "AzureResources",
        "originId": "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/resourceGroups/rg"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackage-subscription-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackage-subscription-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackage-subscription-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackage-subscription-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackage-subscription-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackage-subscription-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackage-subscription-python-snippets.md)]
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
  "id": "34b2d7de-e8d6-4ba8-843e-a03546feac63_e1e0ec8c-472d-4ec5-a8f9-29e0bc275640",
  "createdDateTime": "2026-02-09T22:31:55.3690356Z"
}
```

### Example 5: Add Eligible Management Group Resource Role to an access package

#### Request

The following example shows a request to add an eligible Management Group scoped to a Resource Role to an access package.

Before this request, you must have already added the access package resource `c347ca9b-a9cc-4df9-bc3c-00c8e0297692` for the Management Group `test-mgmtgroup` to the access package catalog containing this access package. The resource could have been added to the catalog by [creating an access package resource request](entitlementmanagement-post-resourcerequests.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage_subscription_management_group"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/5f7f4c7d-b3f5-4988-a17b-3f09b6f5a9ee/resourceRoleScopes
Content-type: application/json

{
    "role": {
        "id": "055c76c1-a466-4f1a-9279-4a2ccaa7ac3e",
        "originId": "/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475",
        "displayName": "Access Review Operator Service Role",
        "description": "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.",
        "resource": {
            "id": "c347ca9b-a9cc-4df9-bc3c-00c8e0297692",
            "description": "test-mgmtgroup",
            "displayName": "test-mgmtgroup",
            "resourceType": "ManagementGroup",
            "originId": "/providers/Microsoft.Management/managementGroups/test-mgmtgroup",
            "originSystem": "AzureResources"
        },
        "originSystem": "AzureResources",
        "type": "eligible"
    },
    "scope": {
        "id": "338613b3-b410-4c6d-b5e9-45590bc8a357",
        "displayName": "Root",
        "description": "Root Scope",
        "isRootScope": true,
        "originId": "/providers/Microsoft.Management/managementGroups/test-mgmtgroup",
        "originSystem": "AzureResources"      
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-group-python-snippets.md)]
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
  "id": "055c76c1-a466-4f1a-9279-4a2ccaa7ac3e_338613b3-b410-4c6d-b5e9-45590bc8a357",
  "createdDateTime": "2026-02-09T22:23:14.8561335Z"
}
```

### Example 6: Add Active Subscription Resource Role to access package

#### Request

The following example shows a request to Add Active Subscription Resource Role to an access package scoped to a Resource Role to an access package.

Before this request, you must have already added the access package resource `b09a0288-a83e-4ae6-8a53-bc09aeb966ea` for the Subscription `828b526f-c769-4b19-9797-734b4843b978` to the access package catalog containing this access package. The resource could have been added to the catalog by [creating an access package resource request](entitlementmanagement-post-resourcerequests.md).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_accesspackageresourcerolescope_from_accesspackage_subscription_management_active"
}-->

```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/accessPackages/5f7f4c7d-b3f5-4988-a17b-3f09b6f5a9ee/resourceRoleScopes
Content-type: application/json

{
    "role": {
        "originId": "/subscriptions/828b526f-c769-4b19-9797-734b4843b978/providers/Microsoft.Authorization/roleDefinitions/76cc9ee4-d5d3-4a45-a930-26add3d73475",
        "displayName": "Access Review Operator Service Role",
        "description": "Lets you grant Access Review System app permissions to discover and revoke access as needed by the access review process.",
        "resource": {
            "id": "b09a0288-a83e-4ae6-8a53-bc09aeb966ea",
            "description": "Dev",
            "displayName": "Dev",
            "resourceType": "Subscription",
            "originId": "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
            "originSystem": "AzureResources"
        },
        "originSystem": "AzureResources",
        "type": "active"
    },
    "scope": {
        "id": "c66c1e22-1093-46fb-a8a8-c0e334113ca4",
        "description": "Root",
        "displayName": "Root",
        "isRootScope": true,
        "originSystem": "AzureResources",
        "originId": "/subscriptions/828b526f-c769-4b19-9797-734b4843b978"
    }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-active-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-active-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-active-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-active-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-active-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-active-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-accesspackageresourcerolescope-from-accesspackage-subscription-management-active-python-snippets.md)]
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
  "id": "34b2d7de-e8d6-4ba8-843e-a03546feac63_c66c1e22-1093-46fb-a8a8-c0e334113ca4",
  "createdDateTime": "2026-02-09T22:29:40.3420825Z"
}
```
