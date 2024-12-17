---
title: "List changeItemBase objects"
description: "Get a list of the changeItemBase objects and their properties."
author: "garretraziel"
ms.date: 11/20/2024
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# List changeItemBase objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [changeItemBase](../resources/changeitembase.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "identitycontainer_list_productchanges" } -->
[!INCLUDE [permissions-table](../includes/permissions/identitycontainer-list-productchanges-permissions.md)]

Any user can call these APIs, there are no admin role requirements.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/productChanges
```

## Optional query parameters

This method supports the `$count`, `$filter` (`eq`, `ne`, `in`, `startswith`), `$orderby`, `$search`, `$top` (default page size is 10 items, maximum is 250 items), `$select` and `$skip` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [changeItemBase](../resources/changeitembase.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_changeitembase"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/productChanges
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-changeitembase-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-changeitembase-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-changeitembase-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-changeitembase-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-changeitembase-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-changeitembase-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-changeitembase-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.changeItemBase"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.roadmap",
      "id": "0146c01e-02c1-47a7-ad5b-8458a9351f95",
      "changeItemState": "available",
      "changeItemService": "reporting",
      "tags": [
        ""
      ],
      "systemTags": [],
      "documentationUrls": [
        "https://entra.microsoft.com/#view/Microsoft_AAD_DXP/ScenarioHealthSummary.ReactView"
      ],
      "shortDescription": "",
      "title": "SLA Attainment Report at Tenant Level",
      "description": "*Omitted for brevity*",
      "deliveryStage": "ga",
      "category": "monitoringReporting",
      "publishedDateTime": "2024-06-24T07:00:00Z",
      "gotoLink": null
    }
  ]
}
```
