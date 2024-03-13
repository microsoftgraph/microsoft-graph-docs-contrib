---
title: "Create resourceRoleScope"
description: "Create a new accessPackageResourceRoleScope for adding a resource role to an access package."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
---

# Create resourceRoleScope

Namespace: microsoft.graph

Create a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) for adding a resource role to an access package. The access package resource, for a group, an app, or a SharePoint Online site, must already exist in the access package catalog, and the **originId** for the resource role retrieved from the [list of the resource roles](accesspackagecatalog-list-resourceroles.md). Once you add the resource role scope to the access package, the user will receive this resource role through any current and future access package assignments.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackage_post_resourcerolescopes" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackage-post-resourcerolescopes-permissions.md)]

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

In the request body, supply a JSON representation of an [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object.  Include in the object the relationships to an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object and an [accessPackageResourceScope](../resources/accesspackageresourcescope.md) object, which can be obtained from a request to [list access package resources a catalog](accesspackagecatalog-list-resourceroles.md), with `$expand=roles,scopes`.

## Response

If successful, this method returns a 200-series response code and a new [accessPackageResourceRoleScope](../resources/accesspackageresourcerolescope.md) object in the response body.

## Examples

### Example 1: Add a SharePoint Online site role to an access package

#### Request

The following is an example of the request adding a SharePoint Online site role to an access package's list of resource roles.  The access package resource for the site must already have been added to the access package catalog containing this access package.

The request contains an [accessPackageResourceRole](../resources/accesspackageresourcerole.md) object. Each type of resource defines the format of the originId field in a resource role. For a SharePoint Online site, the originId will be the sequence number of the role in the site.  The resource role can be obtained from a request to [retrieve the roles of a resource for a SharePoint Online site collection](accesspackagecatalog-list-resourceroles.md#example-2-retrieving-the-roles-of-a-resource-for-a-sharepoint-online-site-collection).

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
   "id": "6646a29e-da03-49f6-bcd9-dec124492de3_5ae0ae7c-d0a5-42aa-ab37-1f15e9a61d33",
    "createdDateTime": "2023-06-28T01:19:48.4216782Z"
}
```


### Example 2: Add an application role to an access package

#### Request

The following is an example of the request adding an application's role to an access package's list of resource roles.  The access package resource for the application must already have been added to the access package catalog containing this access package. The `role`, `resource` and `scope` can be obtained by a [list of the resources of a catalog](accesspackagecatalog-list-resources.md).

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageresourcerolescope-from-accesspackageapp-cli-snippets.md)]
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

The following is an example of the request adding membership of a group to an access package's list of resource roles.  The access package resource for the group must already have been added to the access package catalog containing this access package.  The `role`, `resource` and `scope` can be obtained by a [list of the resources of a catalog](accesspackagecatalog-list-resources.md).

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
        "id": "748f8431-c7c6-404d-8564-df67aa8cfc5e",
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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-accesspackageresourcerolescope-from-accesspackagegroup-cli-snippets.md)]
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
