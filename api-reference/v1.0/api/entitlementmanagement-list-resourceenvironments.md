---
title: "List accessPackageResourceEnvironments"
description: "Retrieve a list of accessPackageResourceEnvironment objects and their properties."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
ms.date: 03/08/2024
---

# List accessPackageResourceEnvironments
Namespace: microsoft.graph

Retrieve a list of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "entitlementmanagement_list_resourceenvironments" } -->
[!INCLUDE [permissions-table](../includes/permissions/entitlementmanagement-list-resourceenvironments-permissions.md)]

[!INCLUDE [rbac-entitlement-catalog-reader](../includes/rbac-for-apis/rbac-entitlement-management-catalog-reader-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET identityGovernance/entitlementManagement/resourceEnvironments?$filter=originSystem eq 'SharePointOnline'
```

## Query parameters

This method requires the `$filter` [OData query parameter](/graph/query-parameters). You must apply `$filter` to retrieve the **originSystem** that's assigned the value `SharePointOnline`.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [accessPackageResourceEnvironment](../resources/accesspackageresourceenvironment.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_accesspackageresourceenvironment"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/resourceEnvironments?$filter=originSystem eq 'SharePointOnline'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-accesspackageresourceenvironment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-accesspackageresourceenvironment-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-accesspackageresourceenvironment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-accesspackageresourceenvironment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-accesspackageresourceenvironment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-accesspackageresourceenvironment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-accesspackageresourceenvironment-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-accesspackageresourceenvironment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.accessPackageResourceEnvironment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identityGovernance/entitlementManagement/resourceEnvironments",
  "value": [
    {
      "id": "615f2218-678f-471f-a60a-02c2f4f80c57",
      "displayName": "https://contoso.sharepoint.com/",
      "description": "https://contoso.sharepoint.com/",
      "originSystem": "SharePointOnline",
      "originId": "https://contoso-admin.sharepoint.com/",
      "isDefaultEnvironment": false,
      "connectionInfo": {
        "url": "https://contoso-admin.sharepoint.com/"
    }
    }
  ]
}
```

