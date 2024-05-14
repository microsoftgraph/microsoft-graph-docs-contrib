---
title: "List serviceStorageQuotaBreakdown"
description: "Get a list of serviceStorageQuotaBreakdown objects and their properties."
author: "BarryShehadeh"
ms.localizationpriority: medium
ms.subservice: onedrive
doc_type: apiPageType
---

# List serviceStorageQuotaBreakdown
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedstoragequota_list_services" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedstoragequota-list-services-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /me/settings/storage/quota/services
GET /users/{usersId}/settings/storage/quota/services
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [serviceStorageQuotaBreakdown](../resources/servicestoragequotabreakdown.md) objects in the response body.

## Examples

### Request
Here's an example  of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_servicestoragequotabreakdown"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/settings/storage/quota/services
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-servicestoragequotabreakdown-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-servicestoragequotabreakdown-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-servicestoragequotabreakdown-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-servicestoragequotabreakdown-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-servicestoragequotabreakdown-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-servicestoragequotabreakdown-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-servicestoragequotabreakdown-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-servicestoragequotabreakdown-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example  of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.serviceStorageQuotaBreakdown)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
        "displayName": "OneDrive",
        "id": "OneDrive",
        "used": 102633320226
    },
    {
        "displayName": "Outlook (Attachments)",
        "id": "Outlook",
        "used": 123456
    }
  ]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "List serviceStorageQuotaBreakdown",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: microsoft.graph.microsoft.graph/me:
      /me/settings/storage/quota/services
      Uri path requires navigating into unknown object hierarchy: missing property 'storage' on 'userSettings'. Possible issues:
  	 1) Doc bug where 'storage' isn't defined on the resource.
  	 2) Doc bug where 'storage' is an example key and should instead be replaced with a placeholder like {item-id} or declared in the sampleKeys annotation.
  	 3) Doc bug where 'userSettings' is supposed to be an entity type, but is being treated as a complex because it (and its ancestors) are missing the keyProperty annotation."
  ]
}
-->
