---
title: "Update accessPackageCatalog"
description: "Update the properties of an accessPackageCatalog object."
author: "markwahl-msft"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: apiPageType
---
# Update accessPackageCatalog

Namespace: microsoft.graph


Update an existing [accessPackageCatalog](../resources/accesspackagecatalog.md) object to change one or more of its properties, such as the display name or description.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackagecatalog_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackagecatalog-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The access package catalog name.|
|description|String|The description of the access package catalog.|
|catalogType|accessPackageCatalogType|Whether the catalog is created by a user or entitlement management. The possible values are: `userManaged`, `serviceDefault`, `serviceManaged`, `unknownFutureValue`.|
|state|accessPackageCatalogState|Has the value `published` if the access packages are available for management. The possible values are: `unpublished`, `published`, `unknownFutureValue`.|
|isExternallyVisible|Boolean|Whether the access packages in this catalog can be requested by users outside of the tenant.|



## Response
If successful, this method returns a `204 No Content` response code.



## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_accesspackagecatalog"
}
-->
```http
PATCH https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalogId}
Content-Type: application/json

{
  "displayName":"Catalog One"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-accesspackagecatalog-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-accesspackagecatalog-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-accesspackagecatalog-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-accesspackagecatalog-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-accesspackagecatalog-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-accesspackagecatalog-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-accesspackagecatalog-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-accesspackagecatalog-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
}
-->
```http
HTTP/1.1 204 No Content
Content-Type: application/json

```

