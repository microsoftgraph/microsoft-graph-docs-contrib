---
title: "Update community"
description: "Update the properties of an existing Viva Engage community."
author: "aditijha4"
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
ms.date: 08/21/2024
---

# Update community

Namespace: microsoft.graph

Update the properties of an existing Viva Engage [community](../resources/community.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "community_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/community-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /employeeExperience/communities/{communityId}
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
| description | String | The description of the community. Maximum length is 1,024 characters. |
| displayName | String | The name of the community. Maximum length is 255 characters. |
| privacy | [communityPrivacy](../resources/community.md#communityprivacy-values) | Defines the privacy level of the community. The possible values are: `public`, `private`, `unknownFutureValue`. |


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_community",
  "sampleKeys": ["eyXxdHlwZSI6Ikdyb3VwIiwiaABCDiI4MzIxMjc1In0"]
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/employeeExperience/communities/eyXxdHlwZSI6Ikdyb3VwIiwiaABCDiI4MzIxMjc1In0
Content-Type: application/json

{
  "displayName": "Financial Advice for Software Engineers",
  "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.",
  "privacy": "public"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-community-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-community-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-community-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-community-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-community-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-community-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
