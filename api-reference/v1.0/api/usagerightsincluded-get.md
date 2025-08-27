---
title: "Get usageRightsIncluded"
description: "Get the usage rights granted to the calling user for a specific sensitivity label that has admin-defined permissions."
author: "kylemar"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get usageRightsIncluded

Namespace: microsoft.graph

Get the usage rights granted to the calling user for a specific sensitivity label that has admin-defined permissions.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "usagerightsincluded_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/usagerightsincluded-get-permissions.md)]

## HTTP request

```http
GET /security/dataSecurityAndGovernance/sensitivityLabels/{labelId}/rights
```

## Request headers

| Name                | Description                                                                                                                                 |
| :------------------ | :------------------------------------------------------------------------------------------------------------------------------------------ |
| Authorization       | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| Client-Request-Id   | Optional. A client-generated GUID to trace the request. Recommended for troubleshooting.                                                  |

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [usageRight](../resources/usagerights.md) enum values in the response body, representing the rights granted to the user for the specified label.

If the label is not found, doesn't have admin-defined protection, or the user doesn't have the `VIEW` right, the API might return an error response (for example, `403 Forbidden` or `404 Not Found`) with details in an [error object](/graph/errors).

## Examples

Request to get the rights for a specific sensitivity label for the user `4e4234dd-377b-42a3-935b-0e42f138fa23`

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_rights_for_sensitivitylabel",
  "sampleKeys": ["4e4234dd-377b-42a3-935b-0e42f138fa23"]
} -->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/security/dataSecurityAndGovernance/sensitivityLabels/4e4234dd-377b-42a3-935b-0e42f138fa23/rights?ownerEmail=bob@contoso.com
Authorization: Bearer {token}
Client-Request-Id: 7c9b1b4c-5b5a-4e3e-9f1b-2d9b0b4a9a0a
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-rights-for-sensitivitylabel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-rights-for-sensitivitylabel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-rights-for-sensitivitylabel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-rights-for-sensitivitylabel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-rights-for-sensitivitylabel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-rights-for-sensitivitylabel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-rights-for-sensitivitylabel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response containing the usage rights granted to the user.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.usageRight)"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(microsoft.graph.usageRight)",
  "id": "f306e677-4c14-4136-b2c3-d9c7dd448cc1",
  "ownerEmail": "bob@contoso.com",
  "value": "docEdit, edit, forward, print, reply, replyAll, view, extract, viewRightsData, objModel"
}
```
