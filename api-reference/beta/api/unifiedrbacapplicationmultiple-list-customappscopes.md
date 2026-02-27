---
title: "List customAppScopes (UnifiedRbacApplicationMultiple)"
description: "Get a list of customAppScope objects for an RBAC provider (UnifiedRbacApplicationMultiple)"
ms.localizationpriority: medium
author: "Adsela"
ms.subservice: "entra-directory-management"
doc_type: "apiPageType"
ms.date: 07/06/2025
---

# List customAppScopes (UnifiedRbacApplicationMultiple)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [customAppScope](../resources/customappscope.md) objects for an RBAC provider.

Only the Microsoft Defender XDR Unified RBAC provider is supported.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedrbacapplicationmultiple_list_customappscopes" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedrbacapplicationmultiple-list-customappscopes-permissions.md)]

## HTTP request

For a Defender provider:

<!-- { "blockType": "ignored" } -->

```http
GET /roleManagement/defender/customAppScopes
```

## Optional query parameters

This method supports the `$filter` and `$count` [OData query parameters](/graph/query-parameters) to help customize the response. Note that `$filter` doesn't work for nested properties stored in the **customAttributes** property.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customAppScope](../resources/customappscope.md) objects in the response body.

## Examples

<!--### Example 1: Request all custom app scope objects for this tenant for Unified Rbac in Defender-->

### Request

The following example shows how to request all **customAppScope** objects of Unified Rbac Defender provider.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customAppScope_DefenderProvider"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/defender/customAppScopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customappscope-defenderprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customappscope-defenderprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customappscope-defenderprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customappscope-defenderprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customappscope-defenderprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-customappscope-defenderprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customAppScope)"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/defender/customAppScopes",
    "value": [
        {
        "id": "00567",
        "type": "DeviceGroups",
        "displayName": "TLV1",
        "description": "TLV floor 1 devices",
        "customAttributes" : []
    },
    {
        "id": "00123",
        "type": "UserGroupIds",
        "displayName": "NHS.local",
        "description": "Rambam 5th floor",
        "customAttributes" : [ ]
    }
    ]
}
```
