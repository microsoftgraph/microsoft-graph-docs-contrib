---
title: "Create community"
description: "Create a new community in Viva Engage."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
ms.topic: reference
---

# Create community

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [community](../resources/community.md) in Viva Engage.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "employeeexperience_post_communities" } -->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperience-post-communities-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /employeeExperience/communities
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [community](../resources/community.md) object.

You can specify the following properties when you create a **community**.

|Property|Type|Description|
|:---|:---|:---|
| description | String | The description of the community. Maximum length is 1024 characters. |
| displayName | String | The name of the community. Maximum length is 255 characters. |
| privacy | [communityPrivacy](../resources/community.md#communityprivacy-values) | Defines the privacy level of the community. The possible values are: `public`, `private`, `unknownFutureValue`. |

## Response

If successful, this method returns a `202 Accepted` response code. The response also contains an `Operation-Location` header with a link to the [engagementAsyncOperation](../resources/engagementasyncoperation.md). You can poll the `Operation-Location` endpoint for status update on the creation operation.

## Examples

### Example 1: Delegated permissions

#### Request

The following example shows a request with delegated permissions. When the **owners** property isn't specified in the request body, the calling user is automatically assigned as the community owner.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_community_from_minimal_e1"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/communities
Content-Type: application/json

{
  "displayName": "Financial Advice for Software Engineers",
  "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.",
  "privacy": "public"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-community-from-minimal-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-community-from-minimal-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-community-from-minimal-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-community-from-minimal-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-community-from-minimal-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-community-from-minimal-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-community-from-minimal-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Operation-Location: https://graph.microsoft.com/beta/employeeExperience/engagementAsyncOperations('3a6fdce1-c261-48bc-89de-1cfef658c0d5')
```

### Example 2: Application permissions

#### Request

The following example shows a minimal request that requires application permissions. If the **owners** property isn't specified in the request body, the request fails.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_community_from_app_only_e2"
}
-->
``` http
POST https://graph.microsoft.com/beta/employeeExperience/communities
Content-Type: application/json

{
  "displayName": "Financial Advice for Software Engineers",
  "description": "A community where financial advisors who represent customers from software engineering profession can discuss advice and suggestions for their clients.",
  "privacy": "public",
  "owners@odata.bind": [
    "https://graph.microsoft.com/beta/users/26be1845-4119-4801-a799-aea79d09f1a2"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-community-from-app-only-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-community-from-app-only-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-community-from-app-only-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-community-from-app-only-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-community-from-app-only-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-community-from-app-only-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-community-from-app-only-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json
Operation-Location: https://graph.microsoft.com/beta/employeeExperience/engagementAsyncOperations('3a6fdce1-c261-48bc-89de-1cfef658c0d5')
```
