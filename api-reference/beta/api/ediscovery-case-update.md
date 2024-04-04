---
title: "Update case"
description: "Update the properties of a case object."
ms.localizationpriority: medium
author: "mahage-msft"
ms.prod: "ediscovery"
doc_type: "apiPageType"
ms.topic: reference
---

# Update case

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [case](../resources/ediscovery-case.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ediscovery_case_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/ediscovery-case-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /compliance/ediscovery/cases/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|description|String|The case description.|
|displayName|String|The case name.|
|externalId|String|The external case number for customer reference.|

## Response

If successful, this method returns a `200 OK` response code and an updated [microsoft.graph.ediscovery.case](../resources/ediscovery-case.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- {
  "blockType": "request",
  "name": "update_case"
}-->

```http
PATCH https://graph.microsoft.com/beta/compliance/ediscovery/cases/061b9a92-8926-4bd9-b41d-abf35edc7583
Content-type: application/json

{
  "displayName": "My Case 1 - Renamed",
  "description": "Updated description",
  "externalId": "Updated externalId"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-case-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-case-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-case-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-case-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-case-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-case-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-case-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-case-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update case",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
