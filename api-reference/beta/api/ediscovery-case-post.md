---
title: "Create case"
description: "Use this API to create a new case."
ms.localizationpriority: medium
author: "mahage-msft"
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/10/2024
---

# Create case

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [case](../resources/ediscovery-case.md) object.

>[!NOTE]
>Starting in September 2021, this API will create a large case type. To learn more about large cases, see [Use the new case format in eDiscovery](/microsoft-365/compliance/advanced-ediscovery-new-case-format). For details, see the [Changes to the Microsoft 365 advanced eDiscovery create case API](https://devblogs.microsoft.com/microsoft365dev/changes-to-the-microsoft-365-advanced-ediscovery-create-case-api-beta/) blog post.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ediscovery_case_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/ediscovery-case-post-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /compliance/ediscovery/cases
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of a [case](../resources/ediscovery-case.md) object. The following table lists properties that can be submitted with the call.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| displayName  | string      | The name of the eDiscovery case. |

## Response

If successful, this method returns a `201 Created` response code and a new [microsoft.graph.ediscovery.case](../resources/ediscovery-case.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "post_case"
}-->

```http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases
Content-type: application/json

{
    "displayName": "My Case 1",
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/post-case-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/post-case-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/post-case-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/post-case-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/post-case-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/post-case-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/post-case-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/post-case-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.case"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/compliance/ediscovery/$metadata#cases/$entity",
    "id": "061b9a92-8926-4bd9-b41d-abf35edc7583",
    "displayName": "My Case 1",
    "description": "",
    "createdBy": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "eDiscovery admin"
        }
    },
    "createdDateTime": "2020-02-20T22:42:28.5505500Z",
    "lastModifiedBy": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "eDiscovery admin"
        }
    },
    "lastModifiedDateTime": "2020-02-20T22:42:28.5505500Z",
    "status": "active",
    "closedBy": null,
    "closedDateTime": null,
    "externalId": ""
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create case",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
